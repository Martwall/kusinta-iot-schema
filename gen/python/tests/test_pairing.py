"""The pairing messages, across both legs.

`PairingError` is shared rather than mirrored, so what matters is that one vocabulary
crosses both legs and that each leg's carrier survives a round trip with the field that
makes attribution work.
"""

from kusinta.iot.common.v1 import pairing_pb2, types_pb2
from kusinta.iot.connector.v1 import connector_pb2
from kusinta.iot.device.v1 import descriptor_pb2, device_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2


def _announced(pairing_request_id: str = "") -> connector_pb2.DeviceAnnouncement:
    return connector_pb2.DeviceAnnouncement(
        device=device_pb2.Device(
            descriptor=descriptor_pb2.DeviceDescriptor(
                device_id=identity_pb2.DeviceId(value="hm:001198A99FB43A"),
            )
        ),
        pairing_request_id=pairing_request_id,
    )


def test_start_pairing_round_trips_on_the_app_envelope():
    message = envelope_pb2.AppMessage(
        start_pairing=envelope_pb2.StartPairing(
            connector_id=identity_pb2.ConnectorId(value="homematic-ccu3"),
            window=pairing_pb2.PairingWindow(
                duration_seconds=60,
                device_hint="3014F711A0001198A99FB43A",
                max_devices=1,
            ),
            initial_space_id=identity_pb2.SpaceId(value="apt-2"),
            ownership=types_pb2.DEVICE_OWNERSHIP_TYPE_RESIDENT,
        )
    )

    decoded = envelope_pb2.AppMessage()
    decoded.ParseFromString(message.SerializeToString())

    assert decoded.WhichOneof("payload") == "start_pairing"
    assert decoded.start_pairing.window.device_hint == "3014F711A0001198A99FB43A"
    assert decoded.start_pairing.initial_space_id.value == "apt-2"


def test_a_window_distinguishes_no_preference_from_a_requested_zero():
    # `optional` is what makes "not stated" representable: a caller who names no
    # duration is asking for the default, not for a window of zero seconds.
    silent = pairing_pb2.PairingWindow()
    explicit = pairing_pb2.PairingWindow(duration_seconds=0, max_devices=0)

    assert silent.HasField("duration_seconds") is False
    assert silent.HasField("max_devices") is False
    assert explicit.HasField("duration_seconds") is True
    assert explicit.HasField("max_devices") is True


def test_commissioning_names_neither_space_nor_connector():
    # A building is commissioned before its spaces are recorded, and a device picks
    # its hub by radio range — so both are legitimately absent.
    request = envelope_pb2.StartPairing(
        window=pairing_pb2.PairingWindow(duration_seconds=60, max_devices=10)
    )

    decoded = envelope_pb2.StartPairing()
    decoded.ParseFromString(request.SerializeToString())

    assert decoded.initial_space_id.value == ""
    assert decoded.connector_id.value == ""
    assert decoded.window.max_devices == 10


def test_pairing_started_carries_the_clamped_expiry_to_count_down_from():
    message = envelope_pb2.GatewayMessage(
        pairing_started=envelope_pb2.PairingStarted(in_reply_to="msg-1")
    )
    message.pairing_started.expires_at.FromSeconds(1_800_000_000)

    decoded = envelope_pb2.GatewayMessage()
    decoded.ParseFromString(message.SerializeToString())

    assert decoded.WhichOneof("payload") == "pairing_started"
    assert decoded.pairing_started.expires_at.seconds == 1_800_000_000


def test_pairing_started_reports_a_refusal_instead_of_an_expiry():
    started = envelope_pb2.PairingStarted(
        in_reply_to="msg-1",
        error=pairing_pb2.PairingErrorDetail(
            code=pairing_pb2.PAIRING_ERROR_ALREADY_IN_PROGRESS,
            message="another window is open",
        ),
    )

    decoded = envelope_pb2.PairingStarted()
    decoded.ParseFromString(started.SerializeToString())

    assert decoded.error.code == pairing_pb2.PAIRING_ERROR_ALREADY_IN_PROGRESS
    assert decoded.HasField("expires_at") is False


def test_pairing_finished_lists_every_device_one_window_produced():
    # One message per request, not per device: a batch attributes several, and a
    # client given one each has nothing telling it the window is over.
    finished = envelope_pb2.PairingFinished(
        in_reply_to="msg-1",
        device_ids=[
            identity_pb2.DeviceId(value="hm:001198A99FB43A"),
            identity_pb2.DeviceId(value="hm:0008E0C992C13A"),
        ],
    )

    decoded = envelope_pb2.PairingFinished()
    decoded.ParseFromString(finished.SerializeToString())

    assert [d.value for d in decoded.device_ids] == [
        "hm:001198A99FB43A",
        "hm:0008E0C992C13A",
    ]


def test_pairing_finished_reports_devices_and_a_shortfall_together():
    # A batch of five that attributed three and then expired is both things at once,
    # and a user needs to be told both.
    finished = envelope_pb2.PairingFinished(
        in_reply_to="msg-1",
        device_ids=[identity_pb2.DeviceId(value="hm:001198A99FB43A")],
        error=pairing_pb2.PairingErrorDetail(
            code=pairing_pb2.PAIRING_ERROR_NO_DEVICE_APPEARED
        ),
    )

    decoded = envelope_pb2.PairingFinished()
    decoded.ParseFromString(finished.SerializeToString())

    assert len(decoded.device_ids) == 1
    assert decoded.error.code == pairing_pb2.PAIRING_ERROR_NO_DEVICE_APPEARED


def test_enter_pairing_mode_reaches_the_connector_leg():
    response = connector_pb2.SessionResponse(
        enter_pairing_mode=connector_pb2.EnterPairingMode(
            request_id="req-1",
            window=pairing_pb2.PairingWindow(duration_seconds=60, max_devices=1),
        )
    )

    decoded = connector_pb2.SessionResponse()
    decoded.ParseFromString(response.SerializeToString())

    assert decoded.WhichOneof("payload") == "enter_pairing_mode"
    assert decoded.enter_pairing_mode.request_id == "req-1"


def test_pairing_mode_result_answers_whether_the_window_opened():
    request = connector_pb2.SessionRequest(
        pairing_mode_result=connector_pb2.PairingModeResult(
            request_id="req-1",
            accepted=False,
            error=pairing_pb2.PairingErrorDetail(
                code=pairing_pb2.PAIRING_ERROR_CONNECTOR_UNAVAILABLE
            ),
        )
    )

    decoded = connector_pb2.SessionRequest()
    decoded.ParseFromString(request.SerializeToString())

    assert decoded.WhichOneof("payload") == "pairing_mode_result"
    assert decoded.pairing_mode_result.accepted is False


def test_pairing_mode_ended_can_name_a_device_that_joined_but_is_unusable():
    # The reason this message exists: an unmodellable device has nothing announceable,
    # so without it the connector cannot say the device is now on the hub.
    request = connector_pb2.SessionRequest(
        pairing_mode_ended=connector_pb2.PairingModeEnded(
            request_id="req-1",
            devices_attributed=0,
            error=pairing_pb2.PairingErrorDetail(
                code=pairing_pb2.PAIRING_ERROR_DEVICE_UNUSABLE,
                message="HmIP-BDT is not supported by this connector",
            ),
        )
    )

    decoded = connector_pb2.SessionRequest()
    decoded.ParseFromString(request.SerializeToString())

    assert decoded.pairing_mode_ended.error.code == pairing_pb2.PAIRING_ERROR_DEVICE_UNUSABLE
    assert "HmIP-BDT" in decoded.pairing_mode_ended.error.message


def test_announcement_names_the_pairing_request_it_satisfies():
    # The whole attribution mechanism: without this the gateway cannot tell whose
    # device just arrived.
    decoded = connector_pb2.DeviceAnnouncement()
    decoded.ParseFromString(_announced("req-1").SerializeToString())

    assert decoded.pairing_request_id == "req-1"


def test_announcement_names_no_request_when_the_device_arrived_on_its_own():
    decoded = connector_pb2.DeviceAnnouncement()
    decoded.ParseFromString(_announced().SerializeToString())

    assert decoded.pairing_request_id == ""


def test_both_legs_carry_the_same_pairing_error_vocabulary():
    # Shared rather than mirrored: a connector's code reaches the app unchanged, so
    # there is no translation table in between to fall behind.
    from_connector = connector_pb2.PairingModeEnded(
        error=pairing_pb2.PairingErrorDetail(
            code=pairing_pb2.PAIRING_ERROR_WRONG_DEVICE, message="hint did not match"
        )
    )
    to_app = envelope_pb2.PairingFinished(error=from_connector.error)

    assert to_app.error.code == pairing_pb2.PAIRING_ERROR_WRONG_DEVICE
    assert to_app.error.message == "hint did not match"


def test_an_unset_pairing_error_reads_as_unspecified():
    # A client decodes any value added after its build as UNSPECIFIED, so that has to
    # remain the safe reading.
    assert pairing_pb2.PairingErrorDetail().code == pairing_pb2.PAIRING_ERROR_UNSPECIFIED
