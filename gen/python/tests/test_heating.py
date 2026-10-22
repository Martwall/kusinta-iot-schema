"""Contract tests for a home's heating: plants, circuits, floor zones and comfort loads.

These assert the decisions the shape encodes:

  * which output value closes a contact is stated per binding: it is a wiring fact
  * a plant without control is read only; a heat pump is steered through its SG Ready
    inputs and add-on heater block
  * a circuit is a radiator or a floor circuit by its distribution, and an unknown supply
    cap is absent, never 0 °C
  * a floor zone heats several rooms by area share, steered by one control room
  * records are flat and put one by one, by revision; any is removed by its id
  * a comfort load's windows are minutes of the building's local day, set apart from it
"""

from kusinta.iot.access.v1 import acl_pb2
from kusinta.iot.device.v1 import cluster_state_pb2
from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def _nc_channel(endpoint_id):
    """A relay channel whose contact is closed while the channel is off."""
    return heating_pb2.ContactBinding(
        output=heating_pb2.DeviceAttribute(
            device_id=identity_pb2.DeviceId(value="relay-1"),
            attribute=acl_pb2.AttributeRef(
                attribute_name="OnOff", cluster_id=0x0006, attribute_id=0x0000, endpoint_id=endpoint_id
            ),
        ),
        closed_value=cluster_state_pb2.AttributeValue(bool_value=False),
    )


def test_a_binding_states_which_output_value_closes_its_contact():
    decoded = _round_trip(_nc_channel(2))

    assert (decoded.closed_value.WhichOneof("value"), decoded.closed_value.bool_value) == ("bool_value", False)


def test_a_plant_without_control_is_read_only():
    assert heating_pb2.HeatingPlant().WhichOneof("control") is None


def test_a_heat_pump_is_steered_through_sg_ready_and_its_add_on_heater_block():
    plant = heating_pb2.HeatingPlant(
        heat_pump=heating_pb2.HeatPumpControl(
            sg_ready_block=_nc_channel(1), sg_ready_boost=_nc_channel(2), add_on_heater_block=_nc_channel(3)
        )
    )

    control = _round_trip(plant).heat_pump
    assert (
        control.sg_ready_block.output.attribute.endpoint_id,
        control.sg_ready_boost.output.attribute.endpoint_id,
        control.add_on_heater_block.output.attribute.endpoint_id,
    ) == (1, 2, 3)


def test_an_unknown_supply_cap_is_absent_rather_than_zero():
    circuit = heating_pb2.HeatingCircuit(floor=heating_pb2.FloorCircuit())

    assert not _round_trip(circuit).floor.HasField("supply_cap_centidegrees")


def test_a_zone_heats_several_rooms_steered_by_one_control_room():
    zone = heating_pb2.FloorZone(
        circuit_id="circuit-1",
        output=_nc_channel(4),
        rooms=[
            heating_pb2.FloorZoneRoom(room_id=identity_pb2.SpaceId(value="room-hall"), area_share_permille=400),
            heating_pb2.FloorZoneRoom(room_id=identity_pb2.SpaceId(value="room-bath"), area_share_permille=600),
        ],
        control_room_id=identity_pb2.SpaceId(value="room-bath"),
    )

    decoded = _round_trip(zone)
    assert (
        decoded.rooms[0].room_id.value,
        decoded.rooms[0].area_share_permille,
        decoded.rooms[1].room_id.value,
        decoded.rooms[1].area_share_permille,
        decoded.control_room_id.value,
    ) == ("room-hall", 400, "room-bath", 600, "room-bath")


def test_a_comfort_load_carries_windows_in_local_minutes():
    load = heating_pb2.ComfortLoad(
        windows=[heating_pb2.ComfortWindow(weekdays=0b0011111, start_minute=360, end_minute=480)],
    )

    window = _round_trip(load).windows[0]
    assert (window.weekdays, window.start_minute, window.end_minute) == (0b0011111, 360, 480)


def test_a_floor_zone_is_put_on_its_own_naming_its_revision():
    request = management_pb2.ManagementRequest(
        put_floor_zone=management_pb2.PutFloorZone(zone=heating_pb2.FloorZone(zone_id="zone-1", revision=3))
    )

    assert _round_trip(request).put_floor_zone.zone.revision == 3


def test_any_heating_record_is_removed_by_its_id_naming_its_revision():
    request = management_pb2.ManagementRequest(
        remove_heating_record=management_pb2.RemoveHeatingRecord(id="circuit-1", revision=2)
    )

    decoded = _round_trip(request).remove_heating_record
    assert (decoded.id, decoded.revision) == ("circuit-1", 2)


def test_comfort_windows_are_set_apart_from_the_binding():
    request = management_pb2.ManagementRequest(
        set_comfort_windows=management_pb2.SetComfortWindows(
            comfort_load_id="load-1",
            windows=[heating_pb2.ComfortWindow(weekdays=0b1111111, start_minute=300, end_minute=420)],
        )
    )

    assert _round_trip(request).WhichOneof("request") == "set_comfort_windows"


def test_a_put_is_answered_with_the_one_record_as_stored():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        heating_record=heating_pb2.HeatingRecord(plant=heating_pb2.HeatingPlant(plant_id="plant-1", revision=1)),
    )

    assert _round_trip(result).heating_record.WhichOneof("record") == "plant"


def test_comfort_windows_have_a_revision_of_their_own():
    load = heating_pb2.ComfortLoad(revision=4, windows_revision=9)

    decoded = _round_trip(load)
    assert (decoded.revision, decoded.windows_revision) == (4, 9)


def test_withheld_windows_are_told_apart_from_none():
    decoded = _round_trip(heating_pb2.ComfortLoad(windows_withheld=True))

    assert (decoded.windows_withheld, len(decoded.windows)) == (True, 0)


def test_windows_are_set_naming_the_windows_revision_they_replace():
    request = management_pb2.SetComfortWindows(comfort_load_id="load-1", windows_revision=9)

    assert _round_trip(request).windows_revision == 9
