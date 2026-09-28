"""Contract tests for room climate: the room, not a link, is what a person controls.

These assert the decisions the shape encodes:

  * a room's target is optional — "nobody has set one" is not 0 °C
  * the target says who or what set it: a user in the app, or a device turned by hand
  * what the valves are held at is reported apart from the target, for modes
  * the sensors are an ordered list, and "leave them alone" differs from "none"
  * a mode sits on a space and is switched off with kind UNSPECIFIED
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.climate.v1 import climate_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2

_ROOM = identity_pb2.SpaceId(value="room-1")


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# --- a room's target ------------------------------------------------------------------


def test_an_unset_room_target_is_absent_not_zero():
    room = climate_pb2.RoomClimate(space_id=_ROOM)

    assert not _round_trip(room).HasField("target_centidegrees")


def test_a_room_target_travels_in_centidegrees():
    room = climate_pb2.RoomClimate(space_id=_ROOM, target_centidegrees=2150)

    assert _round_trip(room).target_centidegrees == 2150


def test_a_target_set_in_the_app_names_the_user():
    change = climate_pb2.TargetChange(user=identity_pb2.UserId(value="u-1"))

    assert _round_trip(change).WhichOneof("by") == "user"


def test_a_target_turned_by_hand_names_the_device():
    change = climate_pb2.TargetChange(device=identity_pb2.DeviceId(value="lora:vicki"))

    assert _round_trip(change).device.value == "lora:vicki"


def test_what_the_valves_are_held_at_is_reported_apart_from_the_target():
    """A mode sets the room back without changing what the room's own target is."""
    room = climate_pb2.RoomClimate(
        space_id=_ROOM, target_centidegrees=2200, effective_target_centidegrees=1700
    )

    decoded = _round_trip(room)
    assert (decoded.target_centidegrees, decoded.effective_target_centidegrees) == (2200, 1700)


def test_the_sensors_keep_their_order_of_preference():
    room = climate_pb2.RoomClimate(
        space_id=_ROOM,
        sensor_ids=[identity_pb2.DeviceId(value="b"), identity_pb2.DeviceId(value="a")],
    )

    assert [d.value for d in _round_trip(room).sensor_ids] == ["b", "a"]


def test_a_lost_sensor_is_a_condition_of_its_own():
    room = climate_pb2.RoomClimate(
        space_id=_ROOM, condition=climate_pb2.ROOM_CLIMATE_CONDITION_SENSOR_LOST
    )

    assert _round_trip(room).condition == climate_pb2.ROOM_CLIMATE_CONDITION_SENSOR_LOST


# --- configuring a room ---------------------------------------------------------------


def test_leaving_the_sensors_alone_differs_from_setting_none():
    untouched = management_pb2.ConfigureRoomClimate(room_id=_ROOM)
    cleared = management_pb2.ConfigureRoomClimate(
        room_id=_ROOM, sensors=management_pb2.RoomSensors()
    )

    assert (untouched.HasField("sensors"), cleared.HasField("sensors")) == (False, True)


def test_leaving_the_limits_alone_differs_from_setting_them():
    untouched = management_pb2.ConfigureRoomClimate(room_id=_ROOM)
    cleared = management_pb2.ConfigureRoomClimate(
        room_id=_ROOM, limits=management_pb2.RoomLimits()
    )

    assert (untouched.HasField("limits"), cleared.HasField("limits")) == (False, True)


def test_set_limits_without_a_minimum_remove_it():
    limits = management_pb2.RoomLimits(max_centidegrees=2400)

    assert not _round_trip(limits).HasField("min_centidegrees")


def test_a_room_target_request_without_a_value_clears_it_rather_than_setting_zero():
    request = management_pb2.SetRoomTarget(room_id=_ROOM)

    assert not _round_trip(request).HasField("target_centidegrees")


def test_an_unconfigured_room_takes_changes_at_its_devices():
    """The lock, not a permission, so proto3's default false is the intended default."""
    assert climate_pb2.RoomClimate(space_id=_ROOM).lock_device_controls is False


def test_a_room_says_which_space_s_mode_sets_it_back():
    room = climate_pb2.RoomClimate(
        space_id=_ROOM, mode_space_id=identity_pb2.SpaceId(value="apt-1")
    )

    assert _round_trip(room).mode_space_id.value == "apt-1"


def test_setting_a_room_target_is_a_management_request():
    request = management_pb2.ManagementRequest(
        set_room_target=management_pb2.SetRoomTarget(room_id=_ROOM, target_centidegrees=2100)
    )

    assert _round_trip(request).WhichOneof("request") == "set_room_target"


# --- modes ----------------------------------------------------------------------------


def test_a_holiday_carries_when_it_starts_and_ends():
    mode = climate_pb2.ClimateMode(
        space_id=identity_pb2.SpaceId(value="apt-1"),
        kind=climate_pb2.CLIMATE_MODE_KIND_HOLIDAY,
        setback_centidegrees=1700,
        starts_at=timestamp_pb2.Timestamp(seconds=1_800_000_000),
        ends_at=timestamp_pb2.Timestamp(seconds=1_800_600_000),
    )

    decoded = _round_trip(mode)
    assert (decoded.starts_at.seconds, decoded.ends_at.seconds) == (1_800_000_000, 1_800_600_000)


def test_switching_a_mode_off_is_kind_unspecified():
    request = management_pb2.SetClimateMode(space_id=identity_pb2.SpaceId(value="apt-1"))

    assert _round_trip(request).kind == climate_pb2.CLIMATE_MODE_KIND_UNSPECIFIED


# --- the gateway's answers ------------------------------------------------------------


def test_a_listing_answers_with_rooms_and_modes():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        room_climates=climate_pb2.RoomClimateList(
            rooms=[climate_pb2.RoomClimate(space_id=_ROOM)],
            modes=[climate_pb2.ClimateMode(kind=climate_pb2.CLIMATE_MODE_KIND_AWAY)],
        ),
    )

    decoded = _round_trip(result)
    assert (len(decoded.room_climates.rooms), len(decoded.room_climates.modes)) == (1, 1)


def test_a_room_change_is_pushed_without_the_app_asking():
    message = envelope_pb2.GatewayMessage(
        room_climate_changed=envelope_pb2.RoomClimateChanged(
            room=climate_pb2.RoomClimate(space_id=_ROOM, target_centidegrees=2000)
        )
    )

    assert _round_trip(message).WhichOneof("payload") == "room_climate_changed"


def test_an_ended_mode_still_names_what_ended():
    changed = envelope_pb2.ClimateModeChanged(
        mode=climate_pb2.ClimateMode(kind=climate_pb2.CLIMATE_MODE_KIND_HOLIDAY), ended=True
    )

    decoded = _round_trip(changed)
    assert (decoded.ended, decoded.mode.kind) == (True, climate_pb2.CLIMATE_MODE_KIND_HOLIDAY)
