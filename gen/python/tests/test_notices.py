"""Contract tests for the gateway's notices: the pushes it asks the api-server to send.

These assert the decisions the shape encodes:

  * a notice carries an identity the api-server dedupes on, a kind, and its recipients by
    user id, or the owning organisation; nothing that names a plant, a home, a room or a
    figure
  * an unknown kind is unspecified
  * the answer says only that the notice was taken, never who was sent it
"""

from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.reporting.v1 import reporting_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_an_empty_request_carries_no_notices():
    decoded = _round_trip(reporting_pb2.SendNoticesRequest())

    assert list(decoded.notices) == []


def test_a_notice_without_a_kind_is_unspecified():
    decoded = _round_trip(reporting_pb2.Notice(notice_id="n-1"))

    assert decoded.kind == reporting_pb2.NOTICE_KIND_UNSPECIFIED


def test_the_notice_kinds_keep_their_numbers():
    assert (
        reporting_pb2.NOTICE_KIND_HEAT_CURVE_SUGGESTION,
        reporting_pb2.NOTICE_KIND_HEAT_CURVE_REMINDER,
        reporting_pb2.NOTICE_KIND_ROOM_TARGET_SUGGESTION,
    ) == (1, 2, 3)


def test_a_notice_names_its_recipients_by_user_id():
    notice = reporting_pb2.Notice(
        notice_id="n-1",
        kind=reporting_pb2.NOTICE_KIND_HEAT_CURVE_SUGGESTION,
        recipients=[identity_pb2.UserId(value="user-1"), identity_pb2.UserId(value="user-2")],
    )

    assert _round_trip(notice) == notice


def test_a_notice_may_go_to_the_owning_organisation():
    decoded = _round_trip(
        reporting_pb2.Notice(notice_id="n-1", kind=reporting_pb2.NOTICE_KIND_HEAT_CURVE_REMINDER, owner_organisation=True)
    )

    assert decoded.owner_organisation


def test_a_notice_carries_nothing_that_names_a_place_or_a_figure():
    assert sorted(f.name for f in reporting_pb2.Notice.DESCRIPTOR.fields) == [
        "kind",
        "notice_id",
        "owner_organisation",
        "recipients",
    ]


def test_a_request_carries_several_notices():
    request = reporting_pb2.SendNoticesRequest(
        notices=[reporting_pb2.Notice(notice_id="n-1"), reporting_pb2.Notice(notice_id="n-2")]
    )

    assert [n.notice_id for n in _round_trip(request).notices] == ["n-1", "n-2"]


def test_the_answer_names_the_notices_taken_and_no_recipient():
    response = reporting_pb2.SendNoticesResponse(taken_notice_ids=["n-1", "n-2"])

    assert sorted(f.name for f in reporting_pb2.SendNoticesResponse.DESCRIPTOR.fields) == ["taken_notice_ids"]
    assert list(_round_trip(response).taken_notice_ids) == ["n-1", "n-2"]
