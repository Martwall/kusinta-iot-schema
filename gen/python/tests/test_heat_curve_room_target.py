"""Contract tests for beta.85's additions to the heat curve view.

These assert the decisions the shape encodes:

  * a limit says what kind of zone limits: a radiator valve, a floor zone, or floor zones
    whose outputs switch together, judged as one and named together; an unknown kind is
    unspecified
  * the settings an apply replaced carry the numbered curve where the apply changed which
    curve is in force, so that a revert can name the curve to go back to
  * a room-target suggestion names the room, its target, the target suggested, how far the
    curve could come down, and the bands it would come down in; it can be declined
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.device.v1 import device_pb2
from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.identity.v1 import identity_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# The kind of zone that limits.


def test_an_unknown_zone_kind_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveLimit())

    assert decoded.zone_kind == heating_pb2.HEAT_CURVE_ZONE_KIND_UNSPECIFIED


def test_the_zone_kinds_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_ZONE_KIND_RADIATOR,
        heating_pb2.HEAT_CURVE_ZONE_KIND_FLOOR_ZONE,
        heating_pb2.HEAT_CURVE_ZONE_KIND_FLOOR_ZONES_TOGETHER,
    ) == (1, 2, 3)


def test_floor_zones_judged_as_one_are_named_together():
    limit = heating_pb2.HeatCurveLimit(
        zone_kind=heating_pb2.HEAT_CURVE_ZONE_KIND_FLOOR_ZONES_TOGETHER,
        floor_zone_ids_together=["fz-1", "fz-2"],
    )

    decoded = _round_trip(limit)
    assert (decoded.floor_zone_id, list(decoded.floor_zone_ids_together)) == ("", ["fz-1", "fz-2"])


# The curve an apply replaced.


def test_the_settings_an_apply_replaced_carry_the_numbered_curve():
    applied = heating_pb2.HeatCurveApplied(
        settings=device_pb2.HeatSourceReadings(own_curve_in_force=True),
        settings_before=device_pb2.HeatSourceReadings(own_curve_in_force=False, heating_curve=9),
    )

    assert _round_trip(applied).settings_before.heating_curve == 9


# A room-target suggestion.


def test_a_room_target_suggestion_carries_the_room_and_both_targets():
    suggestion = heating_pb2.HeatCurveRoomTargetSuggestion(
        suggestion_id="r-1",
        room_id=identity_pb2.SpaceId(value="room-4b"),
        target_centidegrees=2300,
        suggested_target_centidegrees=2150,
    )

    assert _round_trip(suggestion) == suggestion


def test_a_room_target_suggestion_says_how_far_the_curve_could_come_down_and_where():
    suggestion = heating_pb2.HeatCurveRoomTargetSuggestion(
        suggestion_id="r-1",
        curve_lowered_by_centidegrees=300,
        band_outdoor_from_centidegrees=[-1000, -500],
    )

    decoded = _round_trip(suggestion)
    assert (decoded.curve_lowered_by_centidegrees, list(decoded.band_outdoor_from_centidegrees)) == (
        300,
        [-1000, -500],
    )


def test_a_room_target_suggestion_without_a_known_lowering_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveRoomTargetSuggestion(suggestion_id="r-1"))

    assert not decoded.HasField("curve_lowered_by_centidegrees")


def test_a_declined_room_target_suggestion_is_marked_so():
    suggestion = heating_pb2.HeatCurveRoomTargetSuggestion(
        suggestion_id="r-1",
        declined=True,
        suggested_at=timestamp_pb2.Timestamp(seconds=1_800_000_000),
    )

    assert _round_trip(suggestion) == suggestion


def test_a_view_carries_its_room_target_suggestions():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1",
        room_target_suggestions=[heating_pb2.HeatCurveRoomTargetSuggestion(suggestion_id="r-1")],
    )

    assert _round_trip(view).room_target_suggestions[0].suggestion_id == "r-1"
