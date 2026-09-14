"""Contract tests for registering a device that is enrolled as a record rather than
paired during a window: webrtc.v1.ProvisionDevice and its vendor.lorawan.v1
credentials, plus the connector enumeration the app targets a provision at.
"""

from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.vendor.lorawan.v1 import lorawan_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2


def test_provision_device_carries_lorawan_credentials_in_the_oneof():
    request = management_pb2.ManagementRequest(
        provision_device=management_pb2.ProvisionDevice(
            connector_id=identity_pb2.ConnectorId(value="lorawan"),
            lorawan=lorawan_pb2.LorawanProvisioning(
                dev_eui="0102030405060708",
                app_key="00112233445566778899aabbccddeeff",
                join_eui="a0b0c0d0e0f00102",
            ),
        )
    )
    decoded = management_pb2.ManagementRequest()
    decoded.ParseFromString(request.SerializeToString())
    assert decoded.WhichOneof("request") == "provision_device"
    assert decoded.provision_device.connector_id.value == "lorawan"
    assert decoded.provision_device.WhichOneof("credentials") == "lorawan"
    assert decoded.provision_device.lorawan.dev_eui == "0102030405060708"
    assert decoded.provision_device.lorawan.app_key == "00112233445566778899aabbccddeeff"
    assert decoded.provision_device.lorawan.join_eui == "a0b0c0d0e0f00102"


def test_join_eui_is_optional_and_absent_reads_as_unset_not_empty():
    """Many deployments accept the shipped default; only a server that pins JoinEUI
    states it, so absent must be distinguishable from a deliberate empty string."""
    provisioning = lorawan_pb2.LorawanProvisioning(
        dev_eui="0102030405060708",
        app_key="00112233445566778899aabbccddeeff",
    )
    decoded = lorawan_pb2.LorawanProvisioning()
    decoded.ParseFromString(provisioning.SerializeToString())
    assert decoded.HasField("join_eui") is False


def test_a_deliberately_empty_join_eui_stays_present_not_collapsed_to_unset():
    """The other half of the presence distinction the `optional` keyword buys: an empty
    string set on purpose must survive as present, not decode back as unset."""
    provisioning = lorawan_pb2.LorawanProvisioning(
        dev_eui="0102030405060708",
        app_key="00112233445566778899aabbccddeeff",
        join_eui="",
    )
    decoded = lorawan_pb2.LorawanProvisioning()
    decoded.ParseFromString(provisioning.SerializeToString())
    assert decoded.HasField("join_eui") is True
    assert decoded.join_eui == ""


def test_a_provision_is_answered_by_the_ordinary_ack_not_a_new_result_arm():
    """Adding a ManagementResult arm would break a consumer matching the result
    exhaustively; a provision returns the same ManagementAck as every other change."""
    result_fields = {f.name for f in envelope_pb2.ManagementResult.DESCRIPTOR.fields}
    assert "ack" in result_fields
    assert "provision_result" not in result_fields


def test_connectors_announced_is_a_gateway_push_carrying_capabilities():
    message = envelope_pb2.GatewayMessage(
        connectors_announced=envelope_pb2.ConnectorsAnnounced(
            connectors=[
                envelope_pb2.ConnectorDescriptor(
                    connector_id=identity_pb2.ConnectorId(value="homematic-ccu3"),
                    display_name="HomeMatic hub",
                    supported_device_type_ids=[0x0301, 0x0302],
                    supports_pairing=True,
                    supports_provisioning=False,
                    brokers_links=True,
                    kind=types_pb2.CONNECTOR_KIND_HOMEMATIC_IP,
                    description="CCU3 in the basement riser",
                ),
                envelope_pb2.ConnectorDescriptor(
                    connector_id=identity_pb2.ConnectorId(value="lorawan"),
                    display_name="LoRaWAN",
                    supports_provisioning=True,
                    kind=types_pb2.CONNECTOR_KIND_LORAWAN,
                ),
            ]
        )
    )
    decoded = envelope_pb2.GatewayMessage()
    decoded.ParseFromString(message.SerializeToString())
    assert decoded.WhichOneof("payload") == "connectors_announced"
    hm, lora = decoded.connectors_announced.connectors
    assert hm.connector_id.value == "homematic-ccu3"
    assert hm.display_name == "HomeMatic hub"
    assert list(hm.supported_device_type_ids) == [0x0301, 0x0302]
    assert hm.supports_pairing is True
    assert hm.brokers_links is True
    assert hm.kind == types_pb2.CONNECTOR_KIND_HOMEMATIC_IP
    assert hm.description == "CCU3 in the basement riser"
    assert lora.supports_provisioning is True
    assert lora.supports_pairing is False
    assert lora.kind == types_pb2.CONNECTOR_KIND_LORAWAN


def test_the_app_facing_descriptor_hides_gateway_connector_wiring():
    """ConnectorDescriptor is the app-facing projection: it must not carry the
    transport or endpoint the gateway uses to reach the connector."""
    fields = {f.name for f in envelope_pb2.ConnectorDescriptor.DESCRIPTOR.fields}
    assert "transport" not in fields
    assert "endpoint" not in fields



def _messages_reachable_from(root):
    """Every message descriptor reachable from `root` by following message-typed fields,
    root included."""
    seen = {}
    stack = [root]
    while stack:
        descriptor = stack.pop()
        if descriptor.full_name in seen:
            continue
        seen[descriptor.full_name] = descriptor
        for field in descriptor.fields:
            if field.message_type is not None:
                stack.append(field.message_type)
    return seen


def test_the_provisioning_secret_never_reaches_a_gateway_to_app_message():
    """app_key is a root secret carried only inbound, on the authenticated app→gateway
    leg. This pins that: nothing reachable from GatewayMessage (the gateway→app envelope)
    carries the credentials or a field named app_key, so a future edit cannot silently
    route the secret back out to a client."""
    reachable = _messages_reachable_from(envelope_pb2.GatewayMessage.DESCRIPTOR)

    assert "kusinta.iot.vendor.lorawan.v1.LorawanProvisioning" not in reachable
    assert "kusinta.iot.webrtc.v1.ProvisionDevice" not in reachable

    leaked = [
        f"{descriptor.full_name}.{field.name}"
        for descriptor in reachable.values()
        for field in descriptor.fields
        if field.name == "app_key"
    ]
    assert leaked == []
