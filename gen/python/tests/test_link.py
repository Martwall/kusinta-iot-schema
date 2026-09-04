"""Contract tests for device links: one device driving another.

A link is a standing arrangement between two devices on the same hub, brokered once
and then carried by the devices over their own radio. These assert the decisions the
shape encodes, each of which was paid for on hardware:

  * a link is named device to device, never channel to channel
  * one sender may lead several receivers; the reverse is not modelled
  * there is no "created but not yet in effect" state
  * each end states its own attribute, because they need not share a cluster
"""

from google.protobuf import descriptor_pb2 as google_descriptor_pb2

from kusinta.iot.connector.v1 import connector_pb2
from kusinta.iot.device.v1 import descriptor_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.link.v1 import link_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2

# --- the shape of a link ------------------------------------------------------------


def test_a_link_names_two_devices_not_two_channels():
    """Resolving a device pair into whatever underlying connections a vendor needs is
    the connector's work; only it knows how many there are or what they are called."""
    link = link_pb2.DeviceLink(
        link_id="l-1",
        sender=identity_pb2.DeviceId(value="hm:STH01"),
        receiver=identity_pb2.DeviceId(value="hm:TRV01"),
        function=link_pb2.LINK_FUNCTION_CLIMATE_LEAD,
    )
    decoded = link_pb2.DeviceLink()
    decoded.ParseFromString(link.SerializeToString())
    assert decoded.sender.value == "hm:STH01"
    assert decoded.receiver.value == "hm:TRV01"
    assert not [f.name for f in link_pb2.DeviceLink.DESCRIPTOR.fields if "channel" in f.name]


def _reserved_ranges(message_descriptor) -> list[tuple[int, int]]:
    """Reserved ranges, which the Python descriptor exposes only via CopyToProto."""
    proto = google_descriptor_pb2.DescriptorProto()
    message_descriptor.CopyToProto(proto)
    return [(r.start, r.end) for r in proto.reserved_range]


def test_endpoint_addressed_field_numbers_are_held():
    """A vendor whose links are not described by naming two devices can be served
    later without a renumbering."""
    ranges = _reserved_ranges(link_pb2.DeviceLink.DESCRIPTOR)
    assert any(start <= 20 and end > 29 for start, end in ranges), ranges


# --- what the states do and do not claim --------------------------------------------


def test_there_is_no_pending_link_state():
    """On current firmware a link takes effect immediately; on firmware old enough not
    to, it never takes effect without physical intervention — which is a refusal at
    creation, not a state to wait in."""
    names = set(link_pb2.LinkState.keys())
    assert "LINK_STATE_PENDING" not in names
    assert names == {
        "LINK_STATE_UNSPECIFIED",
        "LINK_STATE_ACTIVE",
        "LINK_STATE_BROKEN",
        "LINK_STATE_UNKNOWN",
    }


def test_every_link_enum_has_an_unspecified_zero():
    """Absent must never read as a meaningful choice."""
    for enum in (
        link_pb2.LinkFunction,
        link_pb2.LinkDirection,
        link_pb2.LinkMode,
        link_pb2.LinkState,
    ):
        first = enum.DESCRIPTOR.values[0]
        assert first.number == 0
        assert first.name.endswith("_UNSPECIFIED")


def test_climate_lead_is_distinct_from_window_state():
    """A device that leads a room's climate does not necessarily forward its own window
    state, and on at least one vendor it does not. Where both are wanted, both are
    linked."""
    assert link_pb2.LINK_FUNCTION_CLIMATE_LEAD != link_pb2.LINK_FUNCTION_WINDOW_STATE


# --- capabilities, so an interface can offer a sensible choice ----------------------


def test_each_end_states_its_own_attribute():
    """A wall thermostat reports its temperature as Thermostat LocalTemperature while a
    bare sensor reports the same quantity as Temperature Measurement MeasuredValue. One
    cluster id cannot describe both ends."""
    field = link_pb2.LinkCapability.DESCRIPTOR.fields_by_name["attribute"]
    assert field.message_type.full_name == "kusinta.iot.access.v1.AttributeRef"


def test_a_device_declares_what_it_can_be_linked_as():
    descriptor = descriptor_pb2.DeviceDescriptor(
        link_capabilities=[
            link_pb2.LinkCapability(
                function=link_pb2.LINK_FUNCTION_CLIMATE_LEAD,
                direction=link_pb2.LINK_DIRECTION_SOURCE,
                supported_modes=[link_pb2.LINK_MODE_HARD, link_pb2.LINK_MODE_SOFT],
            )
        ]
    )
    decoded = descriptor_pb2.DeviceDescriptor()
    decoded.ParseFromString(descriptor.SerializeToString())
    assert decoded.link_capabilities[0].direction == link_pb2.LINK_DIRECTION_SOURCE
    assert link_pb2.LINK_MODE_HARD in decoded.link_capabilities[0].supported_modes


def test_no_declared_capabilities_is_not_a_claim_that_linking_is_impossible():
    """A connector that does not model linking says nothing here."""
    assert list(descriptor_pb2.DeviceDescriptor().link_capabilities) == []


# --- the operations, on both legs ---------------------------------------------------


def test_link_operations_ride_the_management_wrapper():
    """Authorization depends on the targets, not the message kind — the same reason
    every filing operation sits behind this wrapper rather than beside it."""
    cases = {f.name for f in management_pb2.ManagementRequest.DESCRIPTOR.oneofs[0].fields}
    assert {"create_device_link", "remove_device_link", "list_device_links"} <= cases


def test_an_update_operation_number_is_held():
    """Nothing about a link is mutable today, but tuning a gateway-kept one will need
    it, and a oneof cannot carry its own reservation."""
    ranges = _reserved_ranges(management_pb2.ManagementRequest.DESCRIPTOR)
    assert any(start <= 14 < end for start, end in ranges), ranges


def test_a_listing_comes_back_as_links_not_an_ack():
    cases = {f.name for f in envelope_pb2.ManagementResult.DESCRIPTOR.oneofs[0].fields}
    assert "links" in cases


def test_the_connector_leg_carries_the_three_operations_and_their_answers():
    responses = {f.name for f in connector_pb2.SessionResponse.DESCRIPTOR.oneofs[0].fields}
    requests = {f.name for f in connector_pb2.SessionRequest.DESCRIPTOR.oneofs[0].fields}
    assert {"create_link", "remove_link", "list_links"} <= responses
    assert {"link_result", "links_reported"} <= requests


def test_a_handshake_reports_the_hub_s_links_for_reconciliation():
    """Links are hub state, not gateway state: they outlive a connector restart and can
    be changed by anyone with access to the hub."""
    handshake = connector_pb2.ConnectorHandshake(
        known_links=[link_pb2.DeviceLink(link_id="l-1")]
    )
    decoded = connector_pb2.ConnectorHandshake()
    decoded.ParseFromString(handshake.SerializeToString())
    assert decoded.known_links[0].link_id == "l-1"


def test_a_link_result_reports_observed_state_not_merely_acceptance():
    """A hub will report a link as present and healthy while the devices ignore it, so
    'the request did not fail' is not the same claim as 'the link is carrying'."""
    fields = connector_pb2.LinkResult.DESCRIPTOR.fields_by_name
    assert "success" in fields
    assert fields["state"].enum_type.full_name == "kusinta.iot.link.v1.LinkState"


# --- telling the app a link changed -------------------------------------------------


def test_the_app_is_told_when_a_link_changes_rather_than_having_to_ask_again():
    """A link's state is not settled when it is created.

    A hub accepting a link is not the devices honouring it, and a link that was
    carrying stops when its sender goes silent. Without a push, an app can only learn
    either by listing every link again and diffing — so a room that quietly stopped
    following its wall thermostat looks fine until somebody reloads.
    """
    changed = envelope_pb2.LinkChanged(
        link=link_pb2.DeviceLink(link_id="l-1", state=link_pb2.LINK_STATE_BROKEN)
    )
    decoded = envelope_pb2.LinkChanged()
    decoded.ParseFromString(changed.SerializeToString())
    assert decoded.link.state == link_pb2.LINK_STATE_BROKEN


def test_a_link_change_reaches_the_app_on_its_own_message():
    """Carried on GatewayMessage beside device_added, and for the same reason: the app
    is told about a thing it can already see changing, without having asked."""
    message = envelope_pb2.GatewayMessage(
        link_changed=envelope_pb2.LinkChanged(link=link_pb2.DeviceLink(link_id="l-1"))
    )
    decoded = envelope_pb2.GatewayMessage()
    decoded.ParseFromString(message.SerializeToString())
    assert decoded.WhichOneof("payload") == "link_changed"


def test_a_removed_link_is_announced_as_removed_not_as_broken():
    """A link somebody deleted and a link that has stopped carrying need different
    answers: one is finished, the other is a fault to investigate. Reporting a removal
    as BROKEN would leave every deleted link looking like something to go and fix."""
    fields = envelope_pb2.LinkChanged.DESCRIPTOR.fields_by_name
    assert "removed" in fields
