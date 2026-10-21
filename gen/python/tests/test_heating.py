"""Contract tests for a home's heating: plant, circuits, floor zones and comfort loads.

These assert the decisions the shape encodes:

  * which output value closes a contact is stated per binding: it is a wiring fact
  * a binding is not commissioned until the gateway says so
  * SG Ready's two inputs are bound by what each means closed alone, apart from the
    add-on heat block
  * a floor zone may heat several rooms and a room may have several zones; each zone has
    area shares and one control room
  * an unknown supply cap is absent, never 0 °C
  * a comfort load's windows are minutes of the building's local day
  * the management requests replace a plant whole, by revision, and set windows apart
  * floor heating in room history is kept apart from valve opening
"""

from kusinta.iot.access.v1 import acl_pb2
from kusinta.iot.climate.v1 import climate_pb2
from kusinta.iot.device.v1 import cluster_state_pb2
from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2

_LIVING_ROOM = identity_pb2.SpaceId(value="room-living")
_HALLWAY = identity_pb2.SpaceId(value="room-hall")


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def _nc_channel(endpoint_id):
    """A relay channel whose contact is closed while the channel is off."""
    return heating_pb2.ContactBinding(
        device_id=identity_pb2.DeviceId(value="relay-1"),
        output=acl_pb2.AttributeRef(
            attribute_name="OnOff", cluster_id=0x0006, attribute_id=0x0000, endpoint_id=endpoint_id
        ),
        closed_value=cluster_state_pb2.AttributeValue(bool_value=False),
    )


# --- contact bindings -------------------------------------------------------------------


def test_a_binding_states_which_output_value_closes_its_contact():
    decoded = _round_trip(_nc_channel(2))

    assert (decoded.closed_value.WhichOneof("value"), decoded.closed_value.bool_value) == ("bool_value", False)


def test_a_binding_is_not_stated_commissioned_by_default():
    assert _nc_channel(2).commissioning == heating_pb2.COMMISSIONING_STATE_UNSPECIFIED


# --- plant ------------------------------------------------------------------------------


def test_a_plant_binds_both_sg_ready_inputs_and_the_add_heat_block():
    plant = heating_pb2.HeatingPlant(
        source=heating_pb2.HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP,
        sg_ready_block=_nc_channel(1),
        sg_ready_boost=_nc_channel(2),
        add_heat_block=_nc_channel(3),
    )

    decoded = _round_trip(plant)
    assert [
        decoded.sg_ready_block.output.endpoint_id,
        decoded.sg_ready_boost.output.endpoint_id,
        decoded.add_heat_block.output.endpoint_id,
    ] == [1, 2, 3]


# --- floor circuits and zones ---------------------------------------------------------


def test_an_unknown_supply_cap_is_absent_rather_than_zero():
    circuit = heating_pb2.HeatingCircuit(kind=heating_pb2.CIRCUIT_KIND_FLOOR)

    assert not _round_trip(circuit).HasField("supply_cap_centidegrees")


def test_a_zone_heats_several_rooms_with_one_control_room():
    zone = heating_pb2.FloorZone(
        name="SL 4",
        output=_nc_channel(4),
        rooms=[
            heating_pb2.FloorZoneRoom(room_id=_HALLWAY, area_share_permille=400),
            heating_pb2.FloorZoneRoom(room_id=_LIVING_ROOM, area_share_permille=600, is_control=True),
        ],
    )

    assert [(r.room_id.value, r.area_share_permille, r.is_control) for r in _round_trip(zone).rooms] == [
        ("room-hall", 400, False),
        ("room-living", 600, True),
    ]


# --- comfort loads ----------------------------------------------------------------------


def test_a_comfort_load_carries_windows_in_local_minutes():
    load = heating_pb2.ComfortLoad(
        room_id=identity_pb2.SpaceId(value="room-bath"),
        output=_nc_channel(5),
        windows=[heating_pb2.ComfortWindow(weekdays=0b0011111, start_minute=360, end_minute=480)],
    )

    window = _round_trip(load).windows[0]
    assert (window.weekdays, window.start_minute, window.end_minute) == (0b0011111, 360, 480)


# --- management -------------------------------------------------------------------------


def test_a_plant_is_replaced_whole_naming_its_revision():
    request = management_pb2.ManagementRequest(
        put_heating_plant=management_pb2.PutHeatingPlant(
            plant=heating_pb2.HeatingPlant(plant_id="plant-1", revision=3)
        )
    )

    assert _round_trip(request).put_heating_plant.plant.revision == 3


def test_comfort_windows_are_set_apart_from_the_binding():
    request = management_pb2.ManagementRequest(
        set_comfort_windows=management_pb2.SetComfortWindows(
            comfort_load_id="load-1",
            windows=[heating_pb2.ComfortWindow(weekdays=0b1111111, start_minute=300, end_minute=420)],
        )
    )

    assert _round_trip(request).WhichOneof("request") == "set_comfort_windows"


def test_the_heating_layout_is_a_result_of_its_own():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        heating_layout=heating_pb2.HeatingLayout(plants=[heating_pb2.HeatingPlant(plant_id="plant-1")]),
    )

    assert _round_trip(result).heating_layout.plants[0].plant_id == "plant-1"


# --- room history -----------------------------------------------------------------------


def test_floor_heating_seconds_are_absent_where_no_zone_heats_the_room():
    sample = climate_pb2.RoomHistorySample(valve_open_seconds=300)

    assert not _round_trip(sample).HasField("floor_heating_seconds")
