"""Contract tests for Space.

  * a space's time zone is an IANA name, and empty means unknown — not UTC
  * a request that leaves the time zone alone differs from one that clears it
  * a member says since when they hold their membership
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.space.v1 import space_pb2
from kusinta.iot.webrtc.v1 import management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_space_without_a_time_zone_leaves_it_empty():
    space = space_pb2.Space(space_id=identity_pb2.SpaceId(value="building-1"))

    assert _round_trip(space).time_zone == ""


def test_a_building_carries_its_iana_time_zone():
    building = space_pb2.Space(
        space_id=identity_pb2.SpaceId(value="building-1"),
        space_type=types_pb2.SPACE_TYPE_BUILDING,
        time_zone="Europe/Stockholm",
    )

    assert _round_trip(building).time_zone == "Europe/Stockholm"


# --- writing it -----------------------------------------------------------------------


def test_creating_a_space_without_a_time_zone_leaves_it_absent():
    request = management_pb2.CreateSpace(space_type=types_pb2.SPACE_TYPE_BUILDING)

    assert not _round_trip(request).HasField("time_zone")


def test_creating_a_building_carries_its_time_zone():
    request = management_pb2.CreateSpace(
        space_type=types_pb2.SPACE_TYPE_BUILDING, time_zone="Europe/Stockholm"
    )

    assert _round_trip(request).time_zone == "Europe/Stockholm"


def test_an_update_without_a_time_zone_leaves_it_alone():
    request = management_pb2.UpdateSpace(space_id=identity_pb2.SpaceId(value="building-1"))

    assert not _round_trip(request).HasField("time_zone")


def test_an_update_with_an_empty_time_zone_clears_it():
    request = management_pb2.UpdateSpace(
        space_id=identity_pb2.SpaceId(value="building-1"), time_zone=""
    )

    decoded = _round_trip(request)
    assert (decoded.HasField("time_zone"), decoded.time_zone) == (True, "")


def test_an_update_sets_a_time_zone():
    request = management_pb2.UpdateSpace(
        space_id=identity_pb2.SpaceId(value="building-1"), time_zone="Europe/Helsinki"
    )

    assert _round_trip(request).time_zone == "Europe/Helsinki"


# --- members --------------------------------------------------------------------------


def test_a_member_says_since_when_they_hold_their_membership():
    home = space_pb2.Space(
        space_id=identity_pb2.SpaceId(value="lgh-1102"),
        members=[
            space_pb2.SpaceMember(
                user_id=identity_pb2.UserId(value="anna"),
                since=timestamp_pb2.Timestamp(seconds=1_790_000_000),
            )
        ],
    )

    assert _round_trip(home).members[0].since.seconds == 1_790_000_000


def test_an_apartment_carries_when_its_climate_history_was_last_cleared():
    space = space_pb2.Space(climate_history_cleared_at=timestamp_pb2.Timestamp(seconds=1_790_000_000))

    decoded = space_pb2.Space()
    decoded.ParseFromString(space.SerializeToString())
    assert decoded.climate_history_cleared_at.seconds == 1_790_000_000


def test_an_apartment_never_cleared_carries_no_floor():
    decoded = space_pb2.Space()
    decoded.ParseFromString(space_pb2.Space(space_type=types_pb2.SPACE_TYPE_APARTMENT).SerializeToString())

    assert decoded.HasField("climate_history_cleared_at") is False
