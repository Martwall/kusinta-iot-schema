"""Contract tests for registering a device that is enrolled as a record rather than
paired during a window: webrtc.v1.ProvisionDevice and its vendor.lorawan.v1
credentials, plus the connector enumeration the app targets a provision at.
"""

from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.vendor.lorawan.v1 import lorawan_pb2
from kusinta.iot.connector.v1 import connector_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2


def test_provision_device_carries_lorawan_credentials_in_the_oneof():
    request = management_pb2.ManagementRequest(
        provision_device=management_pb2.ProvisionDevice(
            connector_id=identity_pb2.ConnectorId(value="lorawan"),
            initial_space_id=identity_pb2.SpaceId(value="plant-room"),
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


# --- P5: filing on join, the connector's models, the connector-leg carrier, deprovision and
# the registered-but-not-joined listing (beta.79). Keys here are an obviously fake pattern.

_FAKE_APP_KEY = "deadbeef" * 4
_FAKE_DEV_EUI = "f0f0f0f0f0f00001"


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_provision_names_where_the_device_is_filed_and_what_it_becomes():
    """As StartPairing does, though the space is required here: the gateway files the
    device when it first joins, and refuses a registration that names no space."""
    decoded = _round_trip(
        management_pb2.ProvisionDevice(
            connector_id=identity_pb2.ConnectorId(value="lorawan"),
            initial_space_id=identity_pb2.SpaceId(value="plant-room"),
            ownership=types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY,
            lorawan=lorawan_pb2.LorawanProvisioning(
                dev_eui=_FAKE_DEV_EUI, app_key=_FAKE_APP_KEY
            ),
        )
    )

    assert (decoded.initial_space_id.value, decoded.ownership) == (
        "plant-room",
        types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY,
    )


def test_a_lorawan_provision_names_the_model_the_connector_announced():
    decoded = _round_trip(
        lorawan_pb2.LorawanProvisioning(
            dev_eui=_FAKE_DEV_EUI, app_key=_FAKE_APP_KEY, model_id="thermostat-a"
        )
    )

    assert decoded.model_id == "thermostat-a"


def test_the_app_is_told_which_models_a_connector_can_register():
    decoded = _round_trip(
        envelope_pb2.ConnectorDescriptor(
            connector_id=identity_pb2.ConnectorId(value="lorawan"),
            supports_provisioning=True,
            provisioning_models=[
                types_pb2.ProvisioningModel(
                    model_id="thermostat-a", display_name="Thermostat A"
                )
            ],
        )
    )

    assert [(m.model_id, m.display_name) for m in decoded.provisioning_models] == [
        ("thermostat-a", "Thermostat A")
    ]


def test_the_connector_states_its_models_in_its_handshake():
    decoded = _round_trip(
        connector_pb2.ConnectorInfo(
            provisioning_models=[types_pb2.ProvisioningModel(model_id="relay-b")]
        )
    )

    assert [m.model_id for m in decoded.provisioning_models] == ["relay-b"]


def test_the_gateway_hands_a_registration_to_the_connector_on_its_own_leg():
    decoded = _round_trip(
        connector_pb2.SessionResponse(
            register_device=connector_pb2.RegisterDevice(
                request_id="r-1",
                lorawan=lorawan_pb2.LorawanProvisioning(
                    dev_eui=_FAKE_DEV_EUI, app_key=_FAKE_APP_KEY, model_id="relay-b"
                ),
            )
        )
    )

    assert (
        decoded.WhichOneof("payload"),
        decoded.register_device.request_id,
        decoded.register_device.WhichOneof("credentials"),
        decoded.register_device.lorawan.dev_eui,
    ) == ("register_device", "r-1", "lorawan", _FAKE_DEV_EUI)


def test_the_gateway_asks_the_connector_to_remove_a_registration():
    decoded = _round_trip(
        connector_pb2.SessionResponse(
            unregister_device=connector_pb2.UnregisterDevice(
                request_id="r-2", lorawan_dev_eui=_FAKE_DEV_EUI
            )
        )
    )

    assert (
        decoded.WhichOneof("payload"),
        decoded.unregister_device.request_id,
        decoded.unregister_device.WhichOneof("identifier"),
        decoded.unregister_device.lorawan_dev_eui,
    ) == ("unregister_device", "r-2", "lorawan_dev_eui", _FAKE_DEV_EUI)


def test_a_registration_made_by_mistake_is_removed_by_its_identifier():
    decoded = _round_trip(
        management_pb2.ManagementRequest(
            deprovision_device=management_pb2.DeprovisionDevice(
                connector_id=identity_pb2.ConnectorId(value="lorawan"),
                lorawan_dev_eui=_FAKE_DEV_EUI,
            )
        )
    )

    assert (
        decoded.WhichOneof("request"),
        decoded.deprovision_device.connector_id.value,
        decoded.deprovision_device.WhichOneof("identifier"),
        decoded.deprovision_device.lorawan_dev_eui,
    ) == ("deprovision_device", "lorawan", "lorawan_dev_eui", _FAKE_DEV_EUI)


def test_the_registered_but_not_joined_devices_are_listed():
    request = _round_trip(
        management_pb2.ManagementRequest(
            list_provisioned_devices=management_pb2.ListProvisionedDevices()
        )
    )

    assert request.WhichOneof("request") == "list_provisioned_devices"


def test_a_listed_registration_says_what_and_where_but_holds_no_key():
    decoded = _round_trip(
        envelope_pb2.ManagementResult(
            provisioned_devices=management_pb2.ProvisionedDevices(
                devices=[
                    management_pb2.ProvisionedDevice(
                        connector_id=identity_pb2.ConnectorId(value="lorawan"),
                        model_id="relay-b",
                        initial_space_id=identity_pb2.SpaceId(value="apt-4b"),
                        ownership=types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY,
                        lorawan_dev_eui=_FAKE_DEV_EUI,
                    )
                ]
            )
        )
    )

    (device,) = decoded.provisioned_devices.devices
    assert (
        decoded.WhichOneof("result"),
        device.model_id,
        device.initial_space_id.value,
        device.WhichOneof("identifier"),
    ) == (
        "provisioned_devices",
        "relay-b",
        "apt-4b",
        "lorawan_dev_eui",
    )


def test_a_listed_registration_is_keyed_by_its_identifier_not_a_device_id():
    """The device id is the connector's to derive and is not known before the join;
    a registration is keyed by its connector and identifier, matched at announce against
    DeviceDescriptor.serial_number."""
    fields = {f.name for f in management_pb2.ProvisionedDevice.DESCRIPTOR.fields}

    assert "device_id" not in fields


def test_the_provisioning_secret_never_travels_connector_to_gateway():
    """The key goes gateway → connector only: nothing a connector sends upstream
    (SessionRequest) can carry it back."""
    reachable = _messages_reachable_from(connector_pb2.SessionRequest.DESCRIPTOR)

    leaked = [
        f"{descriptor.full_name}.{field.name}"
        for descriptor in reachable.values()
        for field in descriptor.fields
        if field.name == "app_key"
    ]
    assert leaked == []
