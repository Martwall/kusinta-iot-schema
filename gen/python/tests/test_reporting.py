"""Contract tests for what the building-server gateway reports to the api-server.

  * a full set may span several requests, each a part of one snapshot
  * a problem transition is keyed by problem id and seq, so a repeat is recognisable
  * a problem is opened with its whole state and closed with a reason
  * a battery level is optional: absent is not zero
  * service reach says, for each space, since when it has been unbroken
  * reach and served spaces are ordered by a seq the api-server can refuse to go back on
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.reporting.v1 import reporting_pb2

VALVE = identity_pb2.DeviceId(value="hm:eTRV-42")
BEDROOM = identity_pb2.SpaceId(value="bed")
QUARTER = timestamp_pb2.Timestamp(seconds=1_790_000_100)


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def _offline(problem_id="p-1", seq=1):
    return reporting_pb2.ProblemTransition(
        problem_id=problem_id,
        seq=seq,
        open=reporting_pb2.Problem(
            kind=reporting_pb2.PROBLEM_KIND_DEVICE_OFFLINE,
            subject=reporting_pb2.ProblemSubject(device_id=VALVE),
            space_id=BEDROOM,
            opened_at=QUARTER,
        ),
    )


# --- snapshots -------------------------------------------------------------------------


def test_a_snapshot_part_names_its_snapshot_and_its_place_in_it():
    part = _round_trip(reporting_pb2.SnapshotPart(snapshot_id="s-1", part=2, last=True))

    assert (part.snapshot_id, part.part, part.last) == ("s-1", 2, True)


def test_a_request_with_no_snapshot_is_not_part_of_one():
    request = _round_trip(reporting_pb2.ReportProblemsRequest(transitions=[_offline()]))

    assert not request.HasField("snapshot")


# --- problems --------------------------------------------------------------------------


def test_a_transition_carries_its_idempotency_key():
    transition = _round_trip(_offline(problem_id="p-7", seq=3))

    assert (transition.problem_id, transition.seq) == ("p-7", 3)


def test_an_opening_carries_the_whole_problem():
    transition = _round_trip(_offline())

    assert transition.WhichOneof("change") == "open"
    assert transition.open.subject.device_id.value == "hm:eTRV-42"
    assert transition.open.opened_at.seconds == QUARTER.seconds


def test_a_clearing_carries_its_reason():
    transition = _round_trip(
        reporting_pb2.ProblemTransition(
            problem_id="p-1",
            seq=2,
            cleared=reporting_pb2.ProblemCleared(
                cleared_at=QUARTER, reason=reporting_pb2.CLEAR_REASON_DEVICE_REMOVED
            ),
        )
    )

    assert transition.WhichOneof("change") == "cleared"
    assert transition.cleared.reason == reporting_pb2.CLEAR_REASON_DEVICE_REMOVED


def test_a_battery_level_a_device_does_not_report_is_absent_not_zero():
    problem = _round_trip(
        reporting_pb2.Problem(kind=reporting_pb2.PROBLEM_KIND_BATTERY_LOW)
    )

    assert not problem.HasField("battery_percent")


def test_a_battery_level_of_zero_survives_the_wire():
    problem = _round_trip(
        reporting_pb2.Problem(
            kind=reporting_pb2.PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED, battery_percent=0
        )
    )

    assert problem.HasField("battery_percent")


def test_unfiled_devices_are_a_problem_of_the_gateway_with_a_count():
    problem = _round_trip(
        reporting_pb2.Problem(
            kind=reporting_pb2.PROBLEM_KIND_UNFILED_DEVICES,
            subject=reporting_pb2.ProblemSubject(gateway=True),
            device_count=5,
        )
    )

    assert (problem.subject.WhichOneof("subject"), problem.device_count) == ("gateway", 5)


def test_an_open_window_is_about_a_room():
    problem = _round_trip(
        reporting_pb2.Problem(
            kind=reporting_pb2.PROBLEM_KIND_WINDOW_OPEN,
            subject=reporting_pb2.ProblemSubject(
                room_id=identity_pb2.SpaceId(value="stairwell-2")
            ),
        )
    )

    assert problem.subject.WhichOneof("subject") == "room_id"


def test_each_transition_is_acknowledged_by_its_key():
    response = _round_trip(
        reporting_pb2.ReportProblemsResponse(
            acks=[
                reporting_pb2.TransitionAck(
                    problem_id="p-1", seq=1, status=reporting_pb2.ACK_STATUS_DUPLICATE
                )
            ]
        )
    )

    assert (response.acks[0].problem_id, response.acks[0].seq, response.acks[0].status) == (
        "p-1",
        1,
        reporting_pb2.ACK_STATUS_DUPLICATE,
    )


# --- service reach ---------------------------------------------------------------------


def test_reach_says_since_when_it_has_held_each_space():
    reach = _round_trip(
        reporting_pb2.ServiceReach(
            user_id=identity_pb2.UserId(value="tech-sub"),
            spaces=[reporting_pb2.ReachedSpace(space_id=BEDROOM, since=QUARTER)],
        )
    )

    assert (reach.spaces[0].space_id.value, reach.spaces[0].since.seconds) == (
        "bed",
        QUARTER.seconds,
    )


def test_reach_names_the_members_who_lost_it():
    request = _round_trip(
        reporting_pb2.ReportServiceReachRequest(
            seq=4, removed_user_ids=[identity_pb2.UserId(value="tech-sub")]
        )
    )

    assert (request.seq, request.removed_user_ids[0].value) == (4, "tech-sub")


def test_reach_names_the_stream_its_seq_counts_on():
    request = _round_trip(
        reporting_pb2.ReportServiceReachRequest(stream_id="0b0e7c1e-9a51-4c43-8a4e-6f0c2d1b7a11", seq=1)
    )

    assert (request.stream_id, request.seq) == ("0b0e7c1e-9a51-4c43-8a4e-6f0c2d1b7a11", 1)


def test_a_stream_names_every_stream_it_replaced():
    request = _round_trip(
        reporting_pb2.ReportServedSpacesRequest(
            stream_id="c", previous_stream_ids=["a", "b"], seq=1
        )
    )

    assert list(request.previous_stream_ids) == ["a", "b"]


def test_the_api_server_says_how_far_it_has_applied_reach():
    response = _round_trip(reporting_pb2.ReportServiceReachResponse(applied_seq=4))

    assert response.applied_seq == 4


# --- served spaces ---------------------------------------------------------------------


def test_a_served_space_carries_its_place_in_the_building():
    space = _round_trip(
        reporting_pb2.ServedSpace(
            space_id=identity_pb2.SpaceId(value="apt-4b"),
            space_type=types_pb2.SPACE_TYPE_APARTMENT,
            name="4B",
            parent_space_id=identity_pb2.SpaceId(value="floor-4"),
        )
    )

    assert (space.space_type, space.parent_space_id.value) == (
        types_pb2.SPACE_TYPE_APARTMENT,
        "floor-4",
    )


def test_a_building_carries_its_time_zone():
    space = _round_trip(
        reporting_pb2.ServedSpace(
            space_type=types_pb2.SPACE_TYPE_BUILDING, time_zone="Europe/Stockholm"
        )
    )

    assert space.time_zone == "Europe/Stockholm"


def test_served_spaces_name_the_spaces_no_longer_served():
    request = _round_trip(
        reporting_pb2.ReportServedSpacesRequest(
            seq=2, removed_space_ids=[identity_pb2.SpaceId(value="apt-old")]
        )
    )

    assert request.removed_space_ids[0].value == "apt-old"


# --- refusals and resync ---------------------------------------------------------------


def test_a_transition_held_with_an_unfinished_snapshot_says_so():
    ack = _round_trip(
        reporting_pb2.TransitionAck(problem_id="p-1", seq=1, status=reporting_pb2.ACK_STATUS_HELD)
    )

    assert ack.status == reporting_pb2.ACK_STATUS_HELD


def test_each_response_can_ask_the_gateway_to_resync():
    responses = [
        _round_trip(reporting_pb2.ReportProblemsResponse(resync_required=True)),
        _round_trip(reporting_pb2.ReportServiceReachResponse(resync_required=True)),
        _round_trip(reporting_pb2.ReportServedSpacesResponse(resync_required=True)),
    ]

    assert [r.resync_required for r in responses] == [True, True, True]
