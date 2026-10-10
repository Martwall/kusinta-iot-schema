"""Contract tests for a connector's backend health and re-initialising it.

  * a connector reports its backend's health in the handshake and on the session
  * a connector that states nothing is read as healthy
  * the connector's free-text detail never has a field to travel on beyond the gateway
  * the gateway asks for a re-initialisation, and the connector says what became of it
  * the app asks the gateway to reconnect a connector, named by the id a problem carries
"""

from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.connector.v1 import connector_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.reporting.v1 import reporting_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2

LORAWAN = identity_pb2.ConnectorId(value="lorawan")

FAILING_UNREACHABLE = types_pb2.BackendHealth(
    state=types_pb2.BACKEND_HEALTH_STATE_FAILING,
    reason=types_pb2.BACKEND_FAILURE_REASON_UNREACHABLE,
)


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# --- connector → gateway: health ------------------------------------------------------


def test_a_handshake_that_states_no_health_reads_as_unspecified():
    handshake = _round_trip(connector_pb2.ConnectorHandshake())

    assert handshake.backend_health.health.state == types_pb2.BACKEND_HEALTH_STATE_UNSPECIFIED


def test_a_handshake_carries_the_backend_health_as_it_stands():
    handshake = connector_pb2.ConnectorHandshake(
        backend_health=connector_pb2.BackendHealthReport(health=FAILING_UNREACHABLE)
    )

    assert _round_trip(handshake).backend_health.health == FAILING_UNREACHABLE


def test_a_health_change_travels_on_the_session_with_its_log_detail():
    request = connector_pb2.SessionRequest(
        backend_health=connector_pb2.BackendHealthReport(
            health=FAILING_UNREACHABLE, detail="connection refused by 10.0.0.5:2010"
        )
    )

    decoded = _round_trip(request)

    assert decoded.WhichOneof("payload") == "backend_health"
    assert decoded.backend_health.detail == "connection refused by 10.0.0.5:2010"


def test_backend_health_itself_has_no_field_for_free_text():
    """The app leg carries only BackendHealth, so a detail cannot ride along to it."""
    fields = [f.name for f in types_pb2.BackendHealth.DESCRIPTOR.fields]

    assert fields == ["state", "reason"]


def test_a_connector_descriptor_carries_health_without_the_connector_detail():
    descriptor = envelope_pb2.ConnectorDescriptor(
        connector_id=LORAWAN, backend_health=FAILING_UNREACHABLE
    )

    assert _round_trip(descriptor).backend_health == FAILING_UNREACHABLE


def test_a_gateway_that_understands_backend_health_says_so_in_its_ack():
    ack = connector_pb2.HandshakeAck(accepted=True, supports_backend_health=True)

    assert _round_trip(ack).supports_backend_health is True


def test_an_older_gateway_ack_reads_as_not_understanding_backend_health():
    """The connector then sends no health report and no re-initialise result."""
    assert _round_trip(connector_pb2.HandshakeAck(accepted=True)).supports_backend_health is False


# --- gateway → connector: re-initialise -----------------------------------------------


def test_a_connector_declares_it_can_reinitialise_its_backend():
    info = connector_pb2.ConnectorInfo(connector_id=LORAWAN, supports_backend_reinitialize=True)

    assert _round_trip(info).supports_backend_reinitialize is True


def test_a_connector_that_predates_reinitialise_declares_nothing():
    assert _round_trip(connector_pb2.ConnectorInfo()).supports_backend_reinitialize is False


def test_the_gateway_asks_for_a_reinitialisation_with_a_request_id():
    response = connector_pb2.SessionResponse(
        reinitialize_backend=connector_pb2.ReinitializeBackend(request_id="reinit-1")
    )

    decoded = _round_trip(response)

    assert decoded.WhichOneof("payload") == "reinitialize_backend"
    assert decoded.reinitialize_backend.request_id == "reinit-1"


def test_a_result_that_could_not_attempt_says_why_in_the_shared_category():
    result = connector_pb2.ReinitializeBackendResult(
        request_id="reinit-1",
        outcome=connector_pb2.REINITIALIZE_OUTCOME_FAILED,
        reason=types_pb2.BACKEND_FAILURE_REASON_MISCONFIGURED,
    )

    decoded = _round_trip(connector_pb2.SessionRequest(reinitialize_backend_result=result))

    assert decoded.reinitialize_backend_result == result


def test_a_result_with_no_outcome_reads_as_unspecified():
    """Unspecified is read as FAILED by the gateway, never as DONE."""
    result = _round_trip(connector_pb2.ReinitializeBackendResult(request_id="reinit-1"))

    assert result.outcome == connector_pb2.REINITIALIZE_OUTCOME_UNSPECIFIED


# --- app → gateway: reconnect ---------------------------------------------------------


def test_reconnect_names_the_connector_a_connector_error_problem_names():
    problem = reporting_pb2.Problem(
        kind=reporting_pb2.PROBLEM_KIND_CONNECTOR_ERROR,
        subject=reporting_pb2.ProblemSubject(connector_id=LORAWAN),
    )
    request = management_pb2.ManagementRequest(
        reconnect_connector=management_pb2.ReconnectConnector(
            connector_id=problem.subject.connector_id
        )
    )

    decoded = _round_trip(request)

    assert decoded.reconnect_connector.connector_id == LORAWAN


def test_a_refused_reconnect_says_why_in_metadata():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        error=envelope_pb2.GatewayError(
            code=envelope_pb2.GATEWAY_ERROR_CODE_UNAVAILABLE,
            metadata={"reason": "ALREADY_IN_PROGRESS"},
        ),
    )

    assert _round_trip(result).error.metadata["reason"] == "ALREADY_IN_PROGRESS"
