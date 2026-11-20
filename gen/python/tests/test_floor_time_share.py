"""Contract tests for the rule that holds floor zones on for a share of a cycle.

These assert the decisions the shape encodes:

  * the rule is a price rule in how it is run, with a number of its own
  * a shadow day of any other rule carries no floor control counts
  * a day's counts set the rule as predicted beside the control that ran, counted alike
  * the counts give the room quarter hours near and above target, the tolerance that near
    means, and the zones' starts
  * readiness judges the rule by time near target and time above it
"""

from kusinta.iot.commissioning.v1 import commissioning_pb2
from kusinta.iot.heating.v1 import heating_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_the_time_share_rule_is_a_price_rule_of_its_own():
    assert heating_pb2.PRICE_RULE_FLOOR_TIME_SHARE == 4


def test_a_day_of_another_rule_has_no_floor_control_counts():
    decoded = _round_trip(heating_pb2.ShadowDay(date="2026-11-20", blocked_quarters=8))

    assert not decoded.HasField("floor_control")


def test_a_day_without_a_run_record_has_no_as_run_counts():
    decoded = _round_trip(
        heating_pb2.ShadowDay(floor_control=heating_pb2.FloorControlCounts(room_quarters=96))
    )

    assert not decoded.HasField("floor_control_as_run")


def test_a_day_sets_the_rule_beside_the_control_that_ran():
    day = heating_pb2.ShadowDay(
        counts_only=True,
        floor_control=heating_pb2.FloorControlCounts(near_target_room_quarters=150),
        floor_control_as_run=heating_pb2.FloorControlCounts(near_target_room_quarters=120),
    )

    decoded = _round_trip(day)

    assert (
        decoded.floor_control.near_target_room_quarters,
        decoded.floor_control_as_run.near_target_room_quarters,
    ) == (150, 120)


def test_the_counts_are_of_room_quarter_hours():
    counts = heating_pb2.FloorControlCounts(room_quarters=192)

    assert _round_trip(counts).room_quarters == 192


def test_the_counts_give_the_time_above_target():
    counts = heating_pb2.FloorControlCounts(above_target_room_quarters=31)

    assert _round_trip(counts).above_target_room_quarters == 31


def test_the_counts_state_the_tolerance_near_means():
    counts = heating_pb2.FloorControlCounts(near_target_tolerance_centidegrees=30)

    assert _round_trip(counts).near_target_tolerance_centidegrees == 30


def test_the_counts_give_the_zones_starts():
    counts = heating_pb2.FloorControlCounts(zone_starts=24)

    assert _round_trip(counts).zone_starts == 24


def test_readiness_judges_time_near_target():
    gate = commissioning_pb2.ReadinessGate(
        kind=commissioning_pb2.READINESS_GATE_KIND_NEAR_TARGET, have=900, need=840
    )

    assert _round_trip(gate).kind == commissioning_pb2.READINESS_GATE_KIND_NEAR_TARGET


def test_readiness_judges_time_above_target():
    gate = commissioning_pb2.ReadinessGate(
        kind=commissioning_pb2.READINESS_GATE_KIND_ABOVE_TARGET, have=40, need=95
    )

    assert _round_trip(gate).kind == commissioning_pb2.READINESS_GATE_KIND_ABOVE_TARGET
