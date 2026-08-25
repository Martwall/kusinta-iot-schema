from kusinta.iot.connector.v1 import connector_pb2
from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import command_pb2
from kusinta.iot.device.v1 import (
    descriptor_pb2,
    device_pb2,
    properties_pb2,
    property_update_pb2,
)


def test_connector_handshake_round_trip():
    info = connector_pb2.ConnectorInfo(
        connector_id=identity_pb2.ConnectorId(value="homematic-ccu3"),
        display_name="HomeMatic CCU3",
        version="1.0.0",
        transport=types_pb2.CONNECTOR_TRANSPORT_UNIX_SOCKET,
        endpoint="/run/kusinta/connectors/homematic.sock",
        supported_device_type_ids=[0x0301, 0x0302],
    )
    handshake = connector_pb2.ConnectorHandshake(
        info=info,
        known_devices=[
            device_pb2.Device(
                descriptor=descriptor_pb2.DeviceDescriptor(
                    device_id=identity_pb2.DeviceId(value="dev-1"),
                ),
                endpoints=[
                    device_pb2.Endpoint(endpoint_id=1, matter_device_type_id=0x0301),
                ],
            )
        ],
    )
    decoded = connector_pb2.ConnectorHandshake()
    decoded.ParseFromString(handshake.SerializeToString())
    assert decoded.info.connector_id.value == "homematic-ccu3"
    assert decoded.info.transport == types_pb2.CONNECTOR_TRANSPORT_UNIX_SOCKET
    assert len(decoded.known_devices) == 1
    assert decoded.known_devices[0].descriptor.device_id.value == "dev-1"
    assert decoded.known_devices[0].endpoints[0].matter_device_type_id == 0x0301


def test_handshake_ack_accepted():
    ack = connector_pb2.HandshakeAck(
        accepted=True,
        gateway_id=identity_pb2.GatewayId(value="gw-abc"),
    )
    decoded = connector_pb2.HandshakeAck()
    decoded.ParseFromString(ack.SerializeToString())
    assert decoded.accepted is True
    assert decoded.gateway_id.value == "gw-abc"


def test_handshake_ack_rejected():
    ack = connector_pb2.HandshakeAck(accepted=False, reason="Unknown connector ID")
    decoded = connector_pb2.HandshakeAck()
    decoded.ParseFromString(ack.SerializeToString())
    assert decoded.accepted is False
    assert decoded.reason == "Unknown connector ID"


def test_connector_to_gateway_handshake_payload():
    msg = connector_pb2.SessionRequest(
        message_id="msg-001",
        handshake=connector_pb2.ConnectorHandshake(
            info=connector_pb2.ConnectorInfo(
                connector_id=identity_pb2.ConnectorId(value="conn-1"),
                display_name="Test Connector",
                version="0.1.0",
                transport=types_pb2.CONNECTOR_TRANSPORT_UNIX_SOCKET,
                endpoint="/run/test.sock",
            ),
        ),
    )
    decoded = connector_pb2.SessionRequest()
    decoded.ParseFromString(msg.SerializeToString())
    assert decoded.message_id == "msg-001"
    assert decoded.WhichOneof("payload") == "handshake"
    assert decoded.handshake.info.connector_id.value == "conn-1"


def test_connector_to_gateway_property_update_payload():
    batch = property_update_pb2.PropertyUpdateBatch(
        updates=[
            property_update_pb2.PropertyUpdate(
                device_id=identity_pb2.DeviceId(value="dev-1"),
                attribute_name="OccupiedHeatingSetpoint",
                int_value=2150,
                cluster_id=0x0201,
            )
        ]
    )
    msg = connector_pb2.SessionRequest(
        message_id="msg-002",
        property_update=batch,
    )
    decoded = connector_pb2.SessionRequest()
    decoded.ParseFromString(msg.SerializeToString())
    assert decoded.WhichOneof("payload") == "property_update"
    assert len(decoded.property_update.updates) == 1
    assert decoded.property_update.updates[0].attribute_name == "OccupiedHeatingSetpoint"


def test_gateway_to_connector_handshake_ack():
    msg = connector_pb2.SessionResponse(
        message_id="gw-001",
        handshake_ack=connector_pb2.HandshakeAck(
            accepted=True,
            gateway_id=identity_pb2.GatewayId(value="gw-1"),
        ),
    )
    decoded = connector_pb2.SessionResponse()
    decoded.ParseFromString(msg.SerializeToString())
    assert decoded.WhichOneof("payload") == "handshake_ack"
    assert decoded.handshake_ack.accepted is True


def test_device_announcement_carries_endpoints_not_just_a_descriptor():
    """A connector announcing a device must be able to say which Matter device types it
    presents — otherwise the gateway cannot resolve any update the device sends."""
    announcement = connector_pb2.DeviceAnnouncement(
        device=device_pb2.Device(
            descriptor=descriptor_pb2.DeviceDescriptor(
                device_id=identity_pb2.DeviceId(value="wall-therm-1"),
            ),
            endpoints=[
                device_pb2.Endpoint(endpoint_id=1, matter_device_type_id=0x0301),
                device_pb2.Endpoint(endpoint_id=2, matter_device_type_id=0x0307),
                device_pb2.Endpoint(endpoint_id=3, matter_device_type_id=0x0011),
            ],
        )
    )
    decoded = connector_pb2.DeviceAnnouncement()
    decoded.ParseFromString(announcement.SerializeToString())
    assert [e.matter_device_type_id for e in decoded.device.endpoints] == [
        0x0301,
        0x0307,
        0x0011,
    ]


def test_announced_endpoints_may_carry_no_readings_yet():
    announcement = connector_pb2.DeviceAnnouncement(
        device=device_pb2.Device(
            endpoints=[device_pb2.Endpoint(endpoint_id=1, matter_device_type_id=0x0301)]
        )
    )
    decoded = connector_pb2.DeviceAnnouncement()
    decoded.ParseFromString(announcement.SerializeToString())
    assert decoded.device.endpoints[0].WhichOneof("matter_properties") is None


# --- ConnectorCommandResult: one error vocabulary, and the connector's own window ---


def test_connector_command_result_carries_the_shared_command_error_code():
    """A connector reports a rejection in the same closed vocabulary the app sees, so
    nothing between the two has to interpret an ad hoc string."""
    result = connector_pb2.ConnectorCommandResult(
        request_id="cmd-1",
        success=False,
        error=command_pb2.CommandError(
            code=command_pb2.COMMAND_ERROR_CODE_REJECTED_BY_DEVICE,
            message="device refused the mode",
        ),
    )
    decoded = connector_pb2.ConnectorCommandResult()
    decoded.ParseFromString(result.SerializeToString())
    assert decoded.error.code == command_pb2.COMMAND_ERROR_CODE_REJECTED_BY_DEVICE


def test_connector_error_reaches_the_app_leg_without_a_mapping_table():
    """The gateway forwards the error into the app-facing CommandResult as-is. Both legs
    name the same type, so there is no string to reinterpret and nothing to drift."""
    from_connector = connector_pb2.ConnectorCommandResult(
        request_id="cmd-1",
        success=False,
        error=command_pb2.CommandError(
            code=command_pb2.COMMAND_ERROR_CODE_UNREACHABLE, message="device asleep"
        ),
    )
    to_app = command_pb2.CommandResult(
        request_id=from_connector.request_id,
        success=False,
        error=from_connector.error,
    )
    assert to_app.error.code == command_pb2.COMMAND_ERROR_CODE_UNREACHABLE


def test_connector_command_result_settles_by_absent_by_default():
    """Absent is no claim, not "settles immediately"."""
    result = connector_pb2.ConnectorCommandResult(request_id="cmd-1", success=True)
    assert not result.HasField("settles_by")


def test_connector_command_result_settles_by_round_trips():
    result = connector_pb2.ConnectorCommandResult(request_id="cmd-1", success=True)
    result.settles_by.FromSeconds(1_700_000_000)
    decoded = connector_pb2.ConnectorCommandResult()
    decoded.ParseFromString(result.SerializeToString())
    assert decoded.HasField("settles_by")
    assert decoded.settles_by.ToSeconds() == 1_700_000_000
