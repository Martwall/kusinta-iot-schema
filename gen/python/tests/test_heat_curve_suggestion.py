"""Contract tests for the optimised heat curve, its suggestion, and applying it.

These assert the decisions the shape encodes:

  * the optimised curve is a generic one, a supply per outdoor temperature, each point with
    the curve in force beside it where known and a confidence: seen or estimated; an
    unknown confidence is unspecified, read as estimated
  * the curve is held between the heat source's lowest and highest supply, each absent
    where not known, never 0
  * a suggestion is a curve or an early shift, carries an identity that an apply or a
    decline names, the settings applying it sets in the heat source's own format, whether
    the heat source takes a write of them, the points newly confirmed, and its saving, each
    figure absent where not known
  * a decline is a mark on the suggestion, withdrawn by a decline with withdraw set
  * an apply is written or set by hand; it records how, what it set and what it replaced,
    whether it was a revert, and its verification: pending, verified (by read-back or
    measured supply), a mismatch naming each setting found otherwise, or unverifiable
  * a curve suggestion neutralises the bend as it does the shift, and a bend left in place
    is named with the bend found
  * automatic savings is a plant's setting, on unless set off, given with the view and set
    by a management request answered with the plant's views
  * apply and decline are management requests answered with the plant's views
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.device.v1 import device_pb2
from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# The optimised curve.


def test_an_unknown_point_confidence_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurvePoint(outdoor_centidegrees=-1000))

    assert decoded.confidence == heating_pb2.HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED


def test_the_point_confidences_keep_their_numbers():
    assert (heating_pb2.HEAT_CURVE_POINT_CONFIDENCE_SEEN, heating_pb2.HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED) == (1, 2)


def test_a_point_without_a_known_current_curve_has_no_current_supply():
    decoded = _round_trip(heating_pb2.HeatCurvePoint(outdoor_centidegrees=0, supply_centidegrees=2800))

    assert not decoded.HasField("current_supply_centidegrees")


def test_a_point_carries_its_supply_the_current_one_and_its_confidence():
    point = heating_pb2.HeatCurvePoint(
        outdoor_centidegrees=-1000,
        supply_centidegrees=3100,
        current_supply_centidegrees=3600,
        confidence=heating_pb2.HEAT_CURVE_POINT_CONFIDENCE_SEEN,
    )

    assert _round_trip(point) == point


def test_an_optimised_curve_orders_its_points_as_given():
    optimised = heating_pb2.HeatCurveOptimised(
        points=[
            heating_pb2.HeatCurvePoint(outdoor_centidegrees=-3000),
            heating_pb2.HeatCurvePoint(outdoor_centidegrees=-2500),
        ]
    )

    decoded = _round_trip(optimised)
    assert [p.outdoor_centidegrees for p in decoded.points] == [-3000, -2500]


def test_an_optimised_curve_without_a_known_maximum_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveOptimised(min_supply_centidegrees=2000))

    assert not decoded.HasField("max_supply_centidegrees")


def test_an_optimised_curve_states_the_supplies_it_is_held_between():
    optimised = heating_pb2.HeatCurveOptimised(min_supply_centidegrees=2000, max_supply_centidegrees=4500)

    assert _round_trip(optimised) == optimised


def test_a_view_carries_its_optimised_curve():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1",
        optimised=heating_pb2.HeatCurveOptimised(points=[heating_pb2.HeatCurvePoint(outdoor_centidegrees=0)]),
    )

    assert _round_trip(view).optimised.points[0].outdoor_centidegrees == 0


def test_a_view_without_an_optimised_curve_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("optimised")


# The suggestion.


def test_an_unknown_suggestion_kind_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveSuggestion(suggestion_id="s-1"))

    assert decoded.kind == heating_pb2.HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED


def test_the_suggestion_kinds_keep_their_numbers():
    assert (heating_pb2.HEAT_CURVE_SUGGESTION_KIND_CURVE, heating_pb2.HEAT_CURVE_SUGGESTION_KIND_SHIFT) == (1, 2)


def test_a_curve_suggestion_sets_the_own_curve_with_the_shift_at_zero():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-1",
        kind=heating_pb2.HEAT_CURVE_SUGGESTION_KIND_CURVE,
        settings=device_pb2.HeatSourceReadings(
            own_curve_in_force=True,
            heating_curve_offset=0,
            own_curve_supply_minus_10_centidegrees=3100,
        ),
    )

    decoded = _round_trip(suggestion)
    assert (decoded.settings.own_curve_in_force, decoded.settings.HasField("heating_curve_offset")) == (True, True)


def test_a_curve_suggestion_sets_the_bend_offset_to_zero_and_keeps_its_point():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-1",
        kind=heating_pb2.HEAT_CURVE_SUGGESTION_KIND_CURVE,
        settings=device_pb2.HeatSourceReadings(curve_point_offset_centidegrees=0),
    )

    decoded = _round_trip(suggestion)
    assert (
        decoded.settings.HasField("curve_point_offset_centidegrees"),
        decoded.settings.HasField("curve_point_outdoor_centidegrees"),
    ) == (True, False)


def test_a_suggestion_says_whether_the_heat_source_takes_a_write():
    decoded = _round_trip(heating_pb2.HeatCurveSuggestion(suggestion_id="s-1", writable=True))

    assert decoded.writable


def test_a_suggestion_names_the_points_newly_confirmed():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-2", newly_confirmed_outdoor_centidegrees=[-1000, -500]
    )

    assert list(_round_trip(suggestion).newly_confirmed_outdoor_centidegrees) == [-1000, -500]


def test_a_suggestion_without_a_known_saving_in_money_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveSuggestion(suggestion_id="s-1", saving_kwh_per_year=1200))

    assert not decoded.HasField("saving_micro_eur_per_year")


def test_a_saving_of_zero_is_a_value():
    decoded = _round_trip(heating_pb2.HeatCurveSuggestion(suggestion_id="s-1", saving_permille=0))

    assert decoded.HasField("saving_permille")


def test_a_suggestion_carries_its_saving_and_when_it_was_made():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-1",
        saving_kwh_per_year=1200,
        saving_micro_eur_per_year=150_000_000,
        saving_permille=60,
        suggested_at=timestamp_pb2.Timestamp(seconds=1_800_000_000),
    )

    assert _round_trip(suggestion) == suggestion


def test_a_declined_suggestion_is_marked_so():
    decoded = _round_trip(heating_pb2.HeatCurveSuggestion(suggestion_id="s-1", declined=True))

    assert decoded.declined


def test_a_view_carries_its_suggestion():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1", suggestion=heating_pb2.HeatCurveSuggestion(suggestion_id="s-1")
    )

    assert _round_trip(view).suggestion.suggestion_id == "s-1"


def test_a_view_without_a_suggestion_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("suggestion")


# Applying it.


def test_the_apply_modes_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_APPLY_MODE_WRITTEN,
        heating_pb2.HEAT_CURVE_APPLY_MODE_BY_HAND,
        heating_pb2.HEAT_CURVE_APPLY_MODE_GATEWAY,
    ) == (1, 2, 3)


def test_an_unknown_verification_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveApplied(suggestion_id="s-1"))

    assert decoded.verification == heating_pb2.HEAT_CURVE_VERIFICATION_UNSPECIFIED


def test_the_verifications_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_VERIFICATION_PENDING,
        heating_pb2.HEAT_CURVE_VERIFICATION_VERIFIED,
        heating_pb2.HEAT_CURVE_VERIFICATION_MISMATCH,
        heating_pb2.HEAT_CURVE_VERIFICATION_UNVERIFIABLE,
    ) == (1, 2, 3, 4)


def test_the_ways_of_verifying_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_VERIFIED_BY_READ_BACK,
        heating_pb2.HEAT_CURVE_VERIFIED_BY_MEASURED_SUPPLY,
    ) == (1, 2)


def test_the_mismatch_kinds_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO,
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE,
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_POINT,
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_SHIFT,
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_SUPPLY,
    ) == (1, 2, 3, 4, 5)


def test_a_bend_left_in_place_is_named_with_the_bend_found():
    mismatch = heating_pb2.HeatCurveMismatch(
        kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL, found_bend_offset_centidegrees=-200
    )

    assert _round_trip(mismatch) == mismatch


def test_a_bend_mismatch_keeps_its_number():
    assert heating_pb2.HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL == 6


def test_a_shift_left_in_place_is_named_with_the_shift_found():
    mismatch = heating_pb2.HeatCurveMismatch(
        kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO, found_offset=-2
    )

    assert _round_trip(mismatch) == mismatch


def test_a_shift_found_at_zero_is_a_value():
    decoded = _round_trip(heating_pb2.HeatCurveMismatch(kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_SHIFT, found_offset=0))

    assert decoded.HasField("found_offset")


def test_a_point_set_otherwise_names_its_outdoor_temperature_and_both_supplies():
    mismatch = heating_pb2.HeatCurveMismatch(
        kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_POINT,
        outdoor_centidegrees=-1000,
        expected_supply_centidegrees=3100,
        found_supply_centidegrees=3600,
    )

    assert _round_trip(mismatch) == mismatch


def test_a_mismatch_of_the_own_curve_names_no_point():
    decoded = _round_trip(heating_pb2.HeatCurveMismatch(kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE))

    assert not decoded.HasField("outdoor_centidegrees")


def test_an_apply_records_what_it_set_and_what_it_replaced():
    applied = heating_pb2.HeatCurveApplied(
        suggestion_id="s-1",
        mode=heating_pb2.HEAT_CURVE_APPLY_MODE_BY_HAND,
        applied_at=timestamp_pb2.Timestamp(seconds=1_800_000_000),
        settings=device_pb2.HeatSourceReadings(own_curve_in_force=True, heating_curve_offset=0),
        settings_before=device_pb2.HeatSourceReadings(own_curve_in_force=False, heating_curve=9, heating_curve_offset=1),
    )

    assert _round_trip(applied) == applied


def test_a_revert_is_marked_so():
    decoded = _round_trip(heating_pb2.HeatCurveApplied(revert=True))

    assert (decoded.revert, decoded.suggestion_id) == (True, "")


def test_a_verified_apply_says_how_and_when():
    applied = heating_pb2.HeatCurveApplied(
        suggestion_id="s-1",
        verification=heating_pb2.HEAT_CURVE_VERIFICATION_VERIFIED,
        verified_by=heating_pb2.HEAT_CURVE_VERIFIED_BY_READ_BACK,
        verified_at=timestamp_pb2.Timestamp(seconds=1_800_003_600),
    )

    assert _round_trip(applied) == applied


def test_a_pending_apply_has_no_verification_time():
    decoded = _round_trip(
        heating_pb2.HeatCurveApplied(suggestion_id="s-1", verification=heating_pb2.HEAT_CURVE_VERIFICATION_PENDING)
    )

    assert not decoded.HasField("verified_at")


def test_a_mismatched_apply_names_each_setting_found_otherwise():
    applied = heating_pb2.HeatCurveApplied(
        suggestion_id="s-1",
        verification=heating_pb2.HEAT_CURVE_VERIFICATION_MISMATCH,
        mismatches=[
            heating_pb2.HeatCurveMismatch(kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO, found_offset=1),
            heating_pb2.HeatCurveMismatch(kind=heating_pb2.HEAT_CURVE_MISMATCH_KIND_POINT, outdoor_centidegrees=-2000),
        ],
    )

    decoded = _round_trip(applied)
    assert [m.kind for m in decoded.mismatches] == [
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO,
        heating_pb2.HEAT_CURVE_MISMATCH_KIND_POINT,
    ]


def test_a_view_carries_its_last_apply():
    view = heating_pb2.HeatCurveView(plant_id="plant-1", last_applied=heating_pb2.HeatCurveApplied(suggestion_id="s-1"))

    assert _round_trip(view).last_applied.suggestion_id == "s-1"


# Automatic savings.


def test_an_automatic_savings_state_not_given_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert decoded.automatic_savings == heating_pb2.HEAT_CURVE_AUTOMATIC_SAVINGS_UNSPECIFIED


def test_the_automatic_savings_states_keep_their_numbers():
    assert (heating_pb2.HEAT_CURVE_AUTOMATIC_SAVINGS_ON, heating_pb2.HEAT_CURVE_AUTOMATIC_SAVINGS_OFF) == (1, 2)


def test_a_view_says_whether_automatic_savings_is_on():
    view = heating_pb2.HeatCurveView(plant_id="plant-1", automatic_savings=heating_pb2.HEAT_CURVE_AUTOMATIC_SAVINGS_OFF)

    assert _round_trip(view).automatic_savings == heating_pb2.HEAT_CURVE_AUTOMATIC_SAVINGS_OFF


def test_automatic_savings_is_set_for_a_plant():
    request = management_pb2.ManagementRequest(
        set_heat_curve_automatic_savings=management_pb2.SetHeatCurveAutomaticSavings(
            plant_id="plant-1", automatic_savings=heating_pb2.HEAT_CURVE_AUTOMATIC_SAVINGS_OFF
        )
    )

    assert _round_trip(request) == request


# The requests.


def test_an_apply_names_the_plant_the_suggestion_and_how():
    request = management_pb2.ManagementRequest(
        apply_heat_curve=management_pb2.ApplyHeatCurve(
            plant_id="plant-1", suggestion_id="s-1", mode=heating_pb2.HEAT_CURVE_APPLY_MODE_WRITTEN
        )
    )

    assert _round_trip(request) == request


def test_a_revert_is_an_apply():
    request = management_pb2.ManagementRequest(
        apply_heat_curve=management_pb2.ApplyHeatCurve(
            plant_id="plant-1", mode=heating_pb2.HEAT_CURVE_APPLY_MODE_BY_HAND, revert=True
        )
    )

    assert _round_trip(request).apply_heat_curve.revert


def test_a_decline_names_the_plant_and_the_suggestion():
    request = management_pb2.ManagementRequest(
        decline_heat_curve=management_pb2.DeclineHeatCurve(plant_id="plant-1", suggestion_id="s-1")
    )

    decoded = _round_trip(request)
    assert (decoded.WhichOneof("request"), decoded.decline_heat_curve.withdraw) == ("decline_heat_curve", False)


def test_a_decline_is_withdrawn_by_a_decline():
    request = management_pb2.ManagementRequest(
        decline_heat_curve=management_pb2.DeclineHeatCurve(plant_id="plant-1", suggestion_id="s-1", withdraw=True)
    )

    assert _round_trip(request).decline_heat_curve.withdraw


def test_an_apply_is_answered_with_the_plants_views():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        heat_curve_views=heating_pb2.HeatCurveViews(
            views=[
                heating_pb2.HeatCurveView(
                    plant_id="plant-1", last_applied=heating_pb2.HeatCurveApplied(suggestion_id="s-1")
                )
            ]
        ),
    )

    decoded = _round_trip(result)
    assert decoded.heat_curve_views.views[0].last_applied.suggestion_id == "s-1"
