"""Contract tests for what a party learns of a private space.

  * a membership states how its member stands to the space: resident or service
  * a device's ACL says when it is a service view, so withheld is not read as missing
  * a privacy disclosure states the policy by category of party, never by name
  * a room's state can be withheld while its configuration is still sent
  * an apartment's climate summary leaves an unknown mean absent, never zero
  * a device event names the previous one its user was due, so a skip is not a gap
  * service sees a device in a home as a quarter-hourly status, not its readings
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.access.v1 import acl_pb2, roles_pb2
from kusinta.iot.climate.v1 import climate_pb2
from kusinta.iot.device.v1 import device_event_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.link.v1 import link_pb2
from kusinta.iot.space.v1 import space_pb2
from kusinta.iot.webrtc.v1 import (
    device_state_pb2,
    envelope_pb2,
    management_pb2,
    permission_push_pb2,
)

APARTMENT = identity_pb2.SpaceId(value="apt-101")
USER = identity_pb2.UserId(value="user-1")


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


# --- membership relation --------------------------------------------------------------


def test_assigning_a_user_carries_their_relation_to_the_space():
    request = management_pb2.AssignUserToSpace(
        space_id=APARTMENT, user_id=USER, relation=roles_pb2.MEMBERSHIP_RELATION_RESIDENT
    )

    assert _round_trip(request).relation == roles_pb2.MEMBERSHIP_RELATION_RESIDENT


def test_a_space_lists_its_members_with_their_relations():
    space = space_pb2.Space(
        space_id=APARTMENT,
        members=[
            space_pb2.SpaceMember(user_id=USER, relation=roles_pb2.MEMBERSHIP_RELATION_RESIDENT),
            space_pb2.SpaceMember(
                user_id=identity_pb2.UserId(value="user-2"),
                relation=roles_pb2.MEMBERSHIP_RELATION_SERVICE,
            ),
        ],
    )

    assert list(_round_trip(space).members) == list(space.members)


def test_a_device_acl_says_it_is_a_service_view():
    acl = acl_pb2.DeviceAcl(
        device_id=identity_pb2.DeviceId(value="etrv-1"),
        relation=roles_pb2.MEMBERSHIP_RELATION_SERVICE,
    )

    assert _round_trip(acl).relation == roles_pb2.MEMBERSHIP_RELATION_SERVICE


# --- privacy disclosure ---------------------------------------------------------------


SERVICE_VIEW = [
    acl_pb2.SERVICE_SIGNAL_REACHABILITY,
    acl_pb2.SERVICE_SIGNAL_BATTERY,
    acl_pb2.SERVICE_SIGNAL_RADIO_LINK,
    acl_pb2.SERVICE_SIGNAL_FIRMWARE,
    acl_pb2.SERVICE_SIGNAL_FAULT,
    acl_pb2.SERVICE_SIGNAL_FILING,
    acl_pb2.SERVICE_SIGNAL_ROOM_SETUP,
    acl_pb2.SERVICE_SIGNAL_LINKS,
]


def test_a_disclosure_says_what_each_kind_of_party_sees():
    disclosure = management_pb2.PrivacyDisclosure(
        space_id=APARTMENT,
        service_parties=[
            management_pb2.ServiceParty(role=roles_pb2.ROLE_TECHNICIAN, signals=SERVICE_VIEW),
            management_pb2.ServiceParty(
                role=roles_pb2.ROLE_GATEWAY_ADMIN,
                signals=[*SERVICE_VIEW, acl_pb2.SERVICE_SIGNAL_RESIDENTS],
            ),
        ],
        climate_summary_period=climate_pb2.CLIMATE_SUMMARY_PERIOD_WEEK,
    )

    assert list(_round_trip(disclosure).service_parties) == list(disclosure.service_parties)


def test_asking_for_a_disclosure_is_a_management_request():
    request = management_pb2.ManagementRequest(
        get_privacy_disclosure=management_pb2.GetPrivacyDisclosure(space_id=APARTMENT)
    )

    assert _round_trip(request).WhichOneof("request") == "get_privacy_disclosure"


def test_a_disclosure_is_a_management_result():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1", privacy_disclosure=management_pb2.PrivacyDisclosure(space_id=APARTMENT)
    )

    assert _round_trip(result).WhichOneof("result") == "privacy_disclosure"


# --- withheld room state --------------------------------------------------------------


def test_a_withheld_room_still_carries_its_configuration():
    room = climate_pb2.RoomClimate(
        space_id=identity_pb2.SpaceId(value="room-1"),
        state_withheld=True,
        min_centidegrees=1600,
        max_centidegrees=2400,
    )

    decoded = _round_trip(room)
    assert (decoded.state_withheld, decoded.HasField("target_centidegrees"), decoded.min_centidegrees) == (
        True,
        False,
        1600,
    )


# --- apartment climate summary --------------------------------------------------------


def test_a_period_with_no_reading_leaves_its_mean_absent_not_zero():
    period = climate_pb2.ClimatePeriodMean(rooms=4)

    assert not _round_trip(period).HasField("measured_centidegrees")


def test_a_period_carries_its_means_and_how_much_of_it_was_observed():
    period = climate_pb2.ClimatePeriodMean(
        measured_centidegrees=2140,
        target_centidegrees=2100,
        measured_coverage_permille=870,
        target_coverage_permille=1000,
        rooms_measured=3,
        rooms=4,
    )

    decoded = _round_trip(period)
    assert (
        decoded.measured_centidegrees,
        decoded.target_centidegrees,
        decoded.measured_coverage_permille,
        decoded.target_coverage_permille,
        decoded.rooms_measured,
        decoded.rooms,
    ) == (2140, 2100, 870, 1000, 3, 4)


def test_a_summary_states_its_period_and_weighting():
    summary = climate_pb2.ApartmentClimateSummary(
        apartment_id=APARTMENT,
        period=climate_pb2.CLIMATE_SUMMARY_PERIOD_WEEK,
        weighting=climate_pb2.CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL,
        kept_from=timestamp_pb2.Timestamp(seconds=1_790_000_000),
    )

    decoded = _round_trip(summary)
    assert (decoded.period, decoded.weighting, decoded.kept_from.seconds) == (
        climate_pb2.CLIMATE_SUMMARY_PERIOD_WEEK,
        climate_pb2.CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL,
        1_790_000_000,
    )


def test_a_summary_is_a_management_result():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        apartment_climate_summary=climate_pb2.ApartmentClimateSummary(apartment_id=APARTMENT),
    )

    assert _round_trip(result).WhichOneof("result") == "apartment_climate_summary"


def test_asking_for_a_summary_is_a_management_request():
    request = management_pb2.ManagementRequest(
        get_apartment_climate_summary=management_pb2.GetApartmentClimateSummary(
            apartment_id=APARTMENT
        )
    )

    assert _round_trip(request).WhichOneof("request") == "get_apartment_climate_summary"


# --- event gaps -----------------------------------------------------------------------


def test_an_event_with_no_earlier_one_due_to_the_user_has_no_previous_number():
    event = device_event_pb2.DeviceEvent(event_number=17)

    assert not _round_trip(event).HasField("previous_event_number")


def test_an_event_names_the_previous_one_the_user_was_due():
    event = device_event_pb2.DeviceEvent(event_number=17, previous_event_number=12)

    assert _round_trip(event).previous_event_number == 12


def test_an_event_says_when_the_gateway_itself_missed_events_before_it():
    event = device_event_pb2.DeviceEvent(event_number=17, previous_event_number=12, follows_loss=True)

    assert _round_trip(event).follows_loss is True


# --- service status -------------------------------------------------------------------


def test_a_device_that_does_not_report_its_charge_leaves_its_battery_percent_absent():
    status = device_state_pb2.ServiceStatus(device_id=identity_pb2.DeviceId(value="etrv-1"))

    assert not _round_trip(status).HasField("battery_percent")


def test_an_unreachable_device_says_since_which_quarter_hour():
    status = device_state_pb2.ServiceStatus(
        reachable=False, unreachable_since=timestamp_pb2.Timestamp(seconds=1_800_000_900)
    )

    assert _round_trip(status).unreachable_since.seconds == 1_800_000_900


def test_a_status_lists_the_faults_a_device_reports():
    status = device_state_pb2.ServiceStatus(
        faults=[device_state_pb2.SERVICE_FAULT_ERROR, device_state_pb2.SERVICE_FAULT_TAMPER]
    )

    assert list(_round_trip(status).faults) == [
        device_state_pb2.SERVICE_FAULT_ERROR,
        device_state_pb2.SERVICE_FAULT_TAMPER,
    ]


def test_a_snapshot_carries_a_status_for_each_device_seen():
    snapshot = device_state_pb2.DeviceStateSnapshot(
        service_statuses=[device_state_pb2.ServiceStatus(device_id=identity_pb2.DeviceId(value="etrv-1"))]
    )

    assert _round_trip(snapshot).service_statuses[0].device_id.value == "etrv-1"


def test_changed_statuses_are_pushed_to_the_app():
    message = envelope_pb2.GatewayMessage(
        service_status_changed=device_state_pb2.ServiceStatusChanged(
            statuses=[device_state_pb2.ServiceStatus(battery_low=True)]
        )
    )

    assert _round_trip(message).WhichOneof("payload") == "service_status_changed"


def test_a_link_seen_as_service_says_its_details_are_withheld():
    link = link_pb2.DeviceLink(link_id="l-1", details_withheld=True)

    decoded = _round_trip(link)
    assert (decoded.details_withheld, decoded.HasField("settings")) == (True, False)


def test_a_space_says_when_its_members_are_withheld():
    space = space_pb2.Space(space_id=APARTMENT, members_withheld=True)

    decoded = _round_trip(space)
    assert (decoded.members_withheld, len(decoded.members)) == (True, 0)


def test_an_event_names_the_numbering_its_number_belongs_to():
    event = device_event_pb2.DeviceEvent(event_number=1, numbering_id="n-2")

    assert _round_trip(event).numbering_id == "n-2"


def test_a_permission_update_names_the_spaces_to_read_again():
    update = permission_push_pb2.LivePermissionUpdate(reset_spaces=[APARTMENT])

    assert [s.value for s in _round_trip(update).reset_spaces] == ["apt-101"]
