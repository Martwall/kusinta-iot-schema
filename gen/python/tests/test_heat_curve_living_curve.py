"""Contract tests for the living heat curve, its preview, its update mode and the heating season.

These assert the decisions the shape encodes:

  * a point is firm where its bands are, a confidence that keeps its number and that an older
    client reads as estimated; each point says on how many days its bands were judged so far
  * the preview is today's estimate as settings, with an identity an apply names, whether the
    heat source takes a write, and its saving, absent where not known; a view may carry none
  * an apply of the preview is recorded as one in the history
  * the update mode is a plant's setting, ongoing or once per season, unspecified where not
    given, set by a management request
  * the heating season says whether it is under way, since when, and how it was told
  * a lower curve that waits says why, and when it is suggested at the earliest
  * a step back and a season's-end suggestion are marked so
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.webrtc.v1 import management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# Firm points.


def test_a_firm_point_keeps_its_number():
    assert heating_pb2.HEAT_CURVE_POINT_CONFIDENCE_FIRM == 3


def test_a_point_says_on_how_many_days_its_bands_were_judged():
    point = heating_pb2.HeatCurvePoint(
        outdoor_centidegrees=-500,
        confidence=heating_pb2.HEAT_CURVE_POINT_CONFIDENCE_SEEN,
        days_judged=6,
    )

    assert _round_trip(point).days_judged == 6


def test_a_point_judged_on_no_day_says_none():
    decoded = _round_trip(heating_pb2.HeatCurvePoint(outdoor_centidegrees=-500))

    assert decoded.days_judged == 0


# The preview.


def test_a_view_without_a_preview_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("preview")


def test_a_preview_carries_its_identity_settings_and_whether_it_is_writable():
    preview = heating_pb2.HeatCurvePreview(preview_id="p-1", writable=True)
    preview.settings.own_curve_in_force = True
    preview.settings.heating_curve_offset = 0

    assert _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1", preview=preview)).preview == preview


def test_a_preview_without_a_known_saving_has_none():
    decoded = _round_trip(heating_pb2.HeatCurvePreview(preview_id="p-1"))

    assert not decoded.HasField("saving_permille")


def test_a_preview_saving_of_zero_is_a_value():
    decoded = _round_trip(heating_pb2.HeatCurvePreview(preview_id="p-1", saving_permille=0))

    assert decoded.HasField("saving_permille")


def test_an_apply_of_the_preview_is_marked_so_in_the_history():
    entry = heating_pb2.HeatCurveHistoryEntry(
        suggestion_id="p-1",
        kind=heating_pb2.HEAT_CURVE_SUGGESTION_KIND_CURVE,
        outcome=heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_APPLIED,
        from_preview=True,
    )

    assert _round_trip(entry).from_preview


def test_an_apply_names_the_preview_by_its_identity():
    request = management_pb2.ManagementRequest(
        apply_heat_curve=management_pb2.ApplyHeatCurve(
            plant_id="plant-1", suggestion_id="p-1", mode=heating_pb2.HEAT_CURVE_APPLY_MODE_BY_HAND
        )
    )

    assert _round_trip(request) == request


# The update mode.


def test_an_update_mode_not_given_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert decoded.update_mode == heating_pb2.HEAT_CURVE_UPDATE_MODE_UNSPECIFIED


def test_the_update_modes_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_UPDATE_MODE_ONGOING,
        heating_pb2.HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON,
    ) == (1, 2)


def test_a_view_says_its_update_mode():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1", update_mode=heating_pb2.HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON
    )

    assert _round_trip(view).update_mode == heating_pb2.HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON


def test_the_update_mode_is_set_for_a_plant():
    request = management_pb2.ManagementRequest(
        set_heat_curve_update_mode=management_pb2.SetHeatCurveUpdateMode(
            plant_id="plant-1", update_mode=heating_pb2.HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON
        )
    )

    assert _round_trip(request) == request


# The heating season.


def test_a_view_whose_season_cannot_be_told_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("season")


def test_the_season_bases_keep_their_numbers():
    assert (
        heating_pb2.HEATING_SEASON_BASIS_SPACE_HEATING,
        heating_pb2.HEATING_SEASON_BASIS_OUTDOOR_BELOW_STOP,
        heating_pb2.HEATING_SEASON_BASIS_JOINED,
    ) == (1, 2, 3)


def test_a_season_says_whether_it_is_under_way_since_when_and_how_it_was_told():
    season = heating_pb2.HeatingSeason(
        in_season=True,
        since=timestamp_pb2.Timestamp(seconds=1_790_000_000),
        basis=heating_pb2.HEATING_SEASON_BASIS_SPACE_HEATING,
    )

    assert _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1", season=season)).season == season


def test_a_season_out_of_season_with_none_ended_has_no_since():
    decoded = _round_trip(heating_pb2.HeatingSeason(in_season=False))

    assert not decoded.HasField("since")


# Why a lower curve waits.


def test_the_new_no_suggestion_reasons_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_NO_SUGGESTION_REASON_NOTHING_FIRM_YET,
        heating_pb2.HEAT_CURVE_NO_SUGGESTION_REASON_WAITING_FOR_SEASON_END,
        heating_pb2.HEAT_CURVE_NO_SUGGESTION_REASON_UPDATE_HELD,
    ) == (9, 10, 11)


def test_a_held_update_says_when_it_is_suggested_at_the_earliest():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1",
        no_suggestion_reason=heating_pb2.HEAT_CURVE_NO_SUGGESTION_REASON_UPDATE_HELD,
        next_proposal_at=timestamp_pb2.Timestamp(seconds=1_790_000_000),
    )

    assert _round_trip(view).next_proposal_at.seconds == 1_790_000_000


def test_a_view_with_no_update_held_has_no_next_proposal():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("next_proposal_at")


# Step back and season's end.


def test_a_step_back_is_marked_so():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-1", kind=heating_pb2.HEAT_CURVE_SUGGESTION_KIND_SHIFT, step_back=True
    )

    assert _round_trip(suggestion).step_back


def test_a_suggestion_made_at_a_seasons_end_is_marked_so():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-1", kind=heating_pb2.HEAT_CURVE_SUGGESTION_KIND_CURVE, season_end=True
    )

    assert _round_trip(suggestion).season_end
