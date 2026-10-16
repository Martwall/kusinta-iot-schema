"""Contract tests for the people on a gateway.

  * staff are told apart by a verified email address; a resident has none
  * a membership says since when it has been held, never finer than a day
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import app_token_pb2, members_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_token_naming_no_address_leaves_the_email_claim_empty():
    claims = app_token_pb2.AppTokenClaims(sub="anna")

    assert _round_trip(claims).email == ""


def test_a_token_carries_a_staff_members_email_claim():
    claims = app_token_pb2.AppTokenClaims(sub="tek", email="tek@example.com")

    assert _round_trip(claims).email == "tek@example.com"


def test_a_residents_email_is_empty():
    member = members_pb2.MemberDetail(user_id=identity_pb2.UserId(value="anna"))

    assert _round_trip(member).email == ""


def test_a_staff_member_is_listed_with_their_email():
    member = members_pb2.MemberDetail(
        user_id=identity_pb2.UserId(value="tek"), email="tek@example.com"
    )

    assert _round_trip(member).email == "tek@example.com"


def test_a_membership_says_since_when_it_is_held():
    membership = members_pb2.MemberSpace(
        space_id=identity_pb2.SpaceId(value="lgh-1102"),
        since=timestamp_pb2.Timestamp(seconds=1_790_000_000),
    )

    assert _round_trip(membership).since.seconds == 1_790_000_000
