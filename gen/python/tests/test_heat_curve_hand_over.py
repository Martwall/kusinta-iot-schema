"""Contract tests for handing a heat curve suggestion to a technician, and the suggestion
history (beta.87).

These assert the decisions the shape encodes:

  * an open suggestion says to whom it is handed, since when, and when it was done
  * the owning organisation hands one to a technician by a management request, and
    withdraws it the same way; it is answered with the plant's views
  * the plant's past suggestions say their kind, what became of them and when, what they
    set, and whether a declined one is still current, so it can be reopened
  * a handed suggestion has a notice kind of its own
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.device.v1 import device_pb2
from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.reporting.v1 import reporting_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# Handing a suggestion over.


def test_a_suggestion_says_to_whom_it_is_handed_and_since_when():
    suggestion = heating_pb2.HeatCurveSuggestion(
        suggestion_id="s-1",
        hand_over=heating_pb2.HeatCurveHandOver(
            technician=identity_pb2.UserId(value="tech-1"),
            since=timestamp_pb2.Timestamp(seconds=1_800_000_000),
        ),
    )

    assert _round_trip(suggestion) == suggestion


def test_a_hand_over_not_yet_done_has_no_done_time():
    decoded = _round_trip(heating_pb2.HeatCurveHandOver(technician=identity_pb2.UserId(value="tech-1")))

    assert not decoded.HasField("done_at")


def test_a_suggestion_not_handed_over_has_no_hand_over():
    decoded = _round_trip(heating_pb2.HeatCurveSuggestion(suggestion_id="s-1"))

    assert not decoded.HasField("hand_over")


def test_a_suggestion_is_handed_to_a_technician():
    request = management_pb2.ManagementRequest(
        hand_heat_curve_suggestion=management_pb2.HandHeatCurveSuggestion(
            plant_id="plant-1", suggestion_id="s-1", technician=identity_pb2.UserId(value="tech-1")
        )
    )

    assert _round_trip(request) == request


def test_a_hand_over_is_withdrawn():
    request = management_pb2.ManagementRequest(
        hand_heat_curve_suggestion=management_pb2.HandHeatCurveSuggestion(
            plant_id="plant-1", suggestion_id="s-1", withdraw=True
        )
    )

    assert _round_trip(request).hand_heat_curve_suggestion.withdraw


def test_a_hand_over_is_answered_with_the_plants_views():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        heat_curve_views=heating_pb2.HeatCurveViews(views=[heating_pb2.HeatCurveView(plant_id="plant-1")]),
    )

    assert _round_trip(result).WhichOneof("result") == "heat_curve_views"


# The suggestion history.


def test_an_unknown_outcome_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveHistoryEntry(suggestion_id="s-1"))

    assert decoded.outcome == heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_UNSPECIFIED


def test_the_outcomes_keep_their_numbers():
    assert (
        heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_APPLIED,
        heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_REVERTED,
        heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_DECLINED,
        heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_SUPERSEDED,
    ) == (1, 2, 3, 4)


def test_a_history_entry_carries_what_it_was_and_what_became_of_it():
    entry = heating_pb2.HeatCurveHistoryEntry(
        suggestion_id="s-1",
        kind=heating_pb2.HEAT_CURVE_SUGGESTION_KIND_SHIFT,
        outcome=heating_pb2.HEAT_CURVE_HISTORY_OUTCOME_DECLINED,
        at=timestamp_pb2.Timestamp(seconds=1_800_000_000),
        settings=device_pb2.HeatSourceReadings(heating_curve_offset=0),
        still_current=True,
        hand_over=heating_pb2.HeatCurveHandOver(technician=identity_pb2.UserId(value="tech-1")),
    )

    assert _round_trip(entry) == entry


def test_a_view_orders_its_history_as_given():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1",
        history=[heating_pb2.HeatCurveHistoryEntry(suggestion_id="s-2"), heating_pb2.HeatCurveHistoryEntry(suggestion_id="s-1")],
    )

    assert [e.suggestion_id for e in _round_trip(view).history] == ["s-2", "s-1"]


# A notice of its own.


def test_a_handed_suggestion_has_a_notice_kind_of_its_own():
    assert reporting_pb2.NOTICE_KIND_HEAT_CURVE_HANDED_OVER == 4
