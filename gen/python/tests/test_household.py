"""Contract tests for a home's household: its admins, commissioning grants, asset owners and handover.

These assert the decisions the shape encodes:

  * a household admin is a relation on one home, never a role, and comes by promotion or by
    an appointment invite on an empty home
  * a commissioning grant names one installer on one space for a bounded time, and no state of
    it grants anything before it is answered
  * an asset is owned by the organisation that owns the gateway or by a household, keyed to
    its home and never to a person
  * a handover is started, then confirmed or cancelled; the household can export what it may
    read, part by part, and no part carries the gateway's models
  * a home's climate history is cleared whole, by naming the home and nothing else
"""

from kusinta.iot.access.v1 import roles_pb2
from kusinta.iot.climate.v1 import climate_pb2
from kusinta.iot.commissioning.v1 import commissioning_pb2
from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.device.v1 import descriptor_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.signaling.v1 import signaling_pb2
from kusinta.iot.space.v1 import space_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, household_pb2, invite_pb2, management_pb2, members_pb2

c = commissioning_pb2
h = household_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def _enum_names(enum_descriptor) -> list[str]:
    return [v.name for v in enum_descriptor.values]


def test_household_admin_is_the_third_membership_relation():
    assert _enum_names(roles_pb2.MembershipRelation.DESCRIPTOR) == [
        "MEMBERSHIP_RELATION_UNSPECIFIED",
        "MEMBERSHIP_RELATION_RESIDENT",
        "MEMBERSHIP_RELATION_SERVICE",
        "MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN",
    ]


def test_household_admin_is_no_role():
    assert "ROLE_HOUSEHOLD_ADMIN" not in _enum_names(roles_pb2.Role.DESCRIPTOR)


def test_an_appointment_invite_carries_the_household_admin_relation():
    invite = invite_pb2.CreateInvite(
        space_id=identity_pb2.SpaceId(value="home-15"),
        relation=roles_pb2.MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN,
    )

    assert _round_trip(invite).relation == roles_pb2.MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN


def test_an_appointment_invite_is_listed_as_bound_to_an_address():
    invite = invite_pb2.Invite(
        relation=roles_pb2.MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN,
        email="new.owner@example.org",
        admission=invite_pb2.INVITE_ADMISSION_ON_EMAIL_MATCH,
    )

    decoded = _round_trip(invite)
    assert (decoded.email, decoded.admission) == (
        "new.owner@example.org",
        invite_pb2.INVITE_ADMISSION_ON_EMAIL_MATCH,
    )


def test_a_redeem_by_someone_who_may_not_be_appointed_has_its_own_outcome():
    result = signaling_pb2.RedeemInviteResult(
        request_id="r-1", outcome=signaling_pb2.REDEEM_OUTCOME_NOT_ELIGIBLE
    )

    assert _round_trip(result).outcome == signaling_pb2.REDEEM_OUTCOME_NOT_ELIGIBLE


def test_a_household_promotion_names_its_home_and_no_role():
    request = members_pb2.RequestPromotion(
        user_id=identity_pb2.UserId(value="residency:7f3a"),
        home_id=identity_pb2.SpaceId(value="home-15"),
    )

    decoded = _round_trip(request)
    assert (decoded.home_id.value, decoded.role) == ("home-15", roles_pb2.ROLE_UNSPECIFIED)


def test_a_pending_household_promotion_is_listed_with_its_home():
    listed = members_pb2.PromotionRequest(
        request_id="p-1", home_id=identity_pb2.SpaceId(value="home-15")
    )

    assert _round_trip(listed).home_id.value == "home-15"


def test_a_household_admin_is_demoted_by_home_and_user():
    request = management_pb2.ManagementRequest(
        demote_household_admin=h.DemoteHouseholdAdmin(
            home_id=identity_pb2.SpaceId(value="home-15"), user_id=identity_pb2.UserId(value="u-2")
        )
    )

    assert _round_trip(request).demote_household_admin.user_id.value == "u-2"


def test_the_disclosure_names_the_staff_member_behind_each_appointment():
    disclosure = management_pb2.PrivacyDisclosure(
        staff_appointments=[
            h.StaffAppointment(
                appointee=identity_pb2.UserId(value="u-2"),
                appointed_by=identity_pb2.UserId(value="board"),
                appointed_by_name="Board member",
                kind=h.STAFF_APPOINTMENT_KIND_INVITE,
            )
        ]
    )

    appointment = _round_trip(disclosure).staff_appointments[0]
    assert (appointment.appointed_by.value, appointment.kind) == ("board", h.STAFF_APPOINTMENT_KIND_INVITE)


def test_an_appointment_is_made_by_invite_or_by_promotion():
    assert _enum_names(h.StaffAppointmentKind.DESCRIPTOR) == [
        "STAFF_APPOINTMENT_KIND_UNSPECIFIED",
        "STAFF_APPOINTMENT_KIND_INVITE",
        "STAFF_APPOINTMENT_KIND_PROMOTION",
    ]


def test_a_commissioning_grant_is_requested_then_granted_and_nothing_else():
    assert _enum_names(c.CommissioningGrantState.DESCRIPTOR) == [
        "COMMISSIONING_GRANT_STATE_UNSPECIFIED",
        "COMMISSIONING_GRANT_STATE_REQUESTED",
        "COMMISSIONING_GRANT_STATE_GRANTED",
    ]


def test_a_commissioning_grant_names_one_installer_on_one_space_for_a_bounded_time():
    grant = c.CommissioningGrant(
        grant_id="g-1",
        space_id=identity_pb2.SpaceId(value="home-15"),
        installer=identity_pb2.UserId(value="installer"),
        state=c.COMMISSIONING_GRANT_STATE_GRANTED,
    )
    grant.starts_at.seconds = 1_790_000_000
    grant.ends_at.seconds = 1_790_086_400

    decoded = _round_trip(grant)
    assert (decoded.installer.value, decoded.starts_at.seconds, decoded.ends_at.seconds) == (
        "installer",
        1_790_000_000,
        1_790_086_400,
    )


def test_a_commissioning_grant_carries_no_choice_of_what_it_covers():
    assert "covers" not in c.CommissioningGrant.DESCRIPTOR.fields_by_name


def test_a_grant_is_answered_with_when_it_starts_and_ends():
    answer = management_pb2.AnswerCommissioningGrant(grant_id="g-1", accept=True)
    answer.ends_at.seconds = 1_790_086_400

    decoded = _round_trip(answer)
    assert (decoded.accept, decoded.HasField("starts_at"), decoded.ends_at.seconds) == (
        True,
        False,
        1_790_086_400,
    )


def test_an_asset_owner_is_the_owner_organisation_or_a_household_home():
    assert [f.name for f in types_pb2.AssetOwner.DESCRIPTOR.oneofs_by_name["owner"].fields] == [
        "owner_organisation",
        "household_home_id",
    ]


def test_a_household_asset_is_keyed_to_its_home():
    descriptor = descriptor_pb2.DeviceDescriptor(
        asset_owner=types_pb2.AssetOwner(household_home_id=identity_pb2.SpaceId(value="home-15"))
    )

    assert _round_trip(descriptor).asset_owner.household_home_id.value == "home-15"


def test_an_asset_owner_travels_beside_ownership_on_the_descriptor():
    descriptor = descriptor_pb2.DeviceDescriptor(
        ownership=types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY,
        asset_owner=types_pb2.AssetOwner(owner_organisation=True),
    )

    decoded = _round_trip(descriptor)
    assert (decoded.ownership, decoded.asset_owner.WhichOneof("owner")) == (
        types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY,
        "owner_organisation",
    )


def test_a_handover_says_whether_staff_started_it():
    handover = h.HouseholdHandover(
        handover_id="h-1", state=h.HOUSEHOLD_HANDOVER_STATE_PENDING, started_by_staff=True
    )

    assert _round_trip(handover).started_by_staff is True


def test_a_handover_leaves_what_to_take_and_release_to_the_reads_that_hold_them():
    fields = h.HouseholdHandover.DESCRIPTOR.fields_by_name

    assert ("personal_device_ids" in fields, "linked_services" in fields) == (False, False)


def test_a_handover_says_when_the_last_residency_ending_started_it():
    handover = h.HouseholdHandover(handover_id="h-2", vacated=True)

    decoded = _round_trip(handover)
    assert (decoded.vacated, decoded.started_by_staff) == (True, False)


def test_an_apartment_carries_a_home_name_apart_from_its_name():
    space = space_pb2.Space(name="Lgh 1102", home_name="Our place")

    decoded = _round_trip(space)
    assert (decoded.name, decoded.home_name) == ("Lgh 1102", "Our place")


def test_a_home_name_is_set_for_one_home():
    request = management_pb2.ManagementRequest(
        set_home_name=h.SetHomeName(home_id=identity_pb2.SpaceId(value="home-15"), name="Our place")
    )

    assert _round_trip(request).set_home_name.name == "Our place"


def test_clearing_a_home_s_climate_history_is_a_management_request_for_one_home():
    request = management_pb2.ManagementRequest(
        clear_climate_history=h.ClearClimateHistory(home_id=identity_pb2.SpaceId(value="home-15"))
    )

    decoded = _round_trip(request)
    assert (decoded.WhichOneof("request"), decoded.clear_climate_history.home_id.value) == (
        "clear_climate_history",
        "home-15",
    )


def test_a_cleared_climate_history_is_pushed_with_when_it_was_cleared():
    from google.protobuf import timestamp_pb2

    message = envelope_pb2.GatewayMessage(
        climate_history_cleared=h.ClimateHistoryCleared(
            home_id=identity_pb2.SpaceId(value="home-15"),
            cleared_at=timestamp_pb2.Timestamp(seconds=1_800_000_000),
        )
    )

    decoded = _round_trip(message)
    assert (
        decoded.WhichOneof("payload"),
        decoded.climate_history_cleared.home_id.value,
        decoded.climate_history_cleared.cleared_at.seconds,
    ) == ("climate_history_cleared", "home-15", 1_800_000_000)


def test_clearing_a_home_s_climate_history_names_nothing_but_the_home():
    assert [f.name for f in h.ClearClimateHistory.DESCRIPTOR.fields] == ["home_id"]


def test_a_handover_is_pending_cancelled_or_done():
    assert _enum_names(h.HouseholdHandoverState.DESCRIPTOR) == [
        "HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED",
        "HOUSEHOLD_HANDOVER_STATE_PENDING",
        "HOUSEHOLD_HANDOVER_STATE_CANCELLED",
        "HOUSEHOLD_HANDOVER_STATE_DONE",
    ]


def test_an_export_part_carries_room_history_and_the_next_token():
    export = h.HouseholdExport(
        room_history=climate_pb2.RoomHistory(room_id=identity_pb2.SpaceId(value="room-1")),
        next_part_token="p-2",
    )

    decoded = _round_trip(export)
    assert (decoded.WhichOneof("part"), decoded.next_part_token) == ("room_history", "p-2")


def test_an_export_has_no_part_for_models():
    assert [f.name for f in h.HouseholdExport.DESCRIPTOR.oneofs_by_name["part"].fields] == [
        "room_climates",
        "room_history",
        "climate_summary",
        "commissioning",
        "heating",
    ]


def test_a_handover_push_reaches_the_app():
    message = envelope_pb2.GatewayMessage(
        household_handover=h.HouseholdHandover(
            handover_id="h-1", state=h.HOUSEHOLD_HANDOVER_STATE_DONE
        )
    )

    assert _round_trip(message).household_handover.state == h.HOUSEHOLD_HANDOVER_STATE_DONE


def test_a_handover_tells_its_recipient_they_are_in_its_household():
    decoded = _round_trip(h.HouseholdHandover(handover_id="h-3", vacated=True, recipient_in_household=True))

    assert decoded.recipient_in_household is True


def test_a_handover_tells_its_recipient_they_may_confirm_it_as_a_household_admin():
    decoded = _round_trip(h.HouseholdHandover(handover_id="h-4", vacated=True, recipient_household_admin=True))

    assert decoded.recipient_household_admin is True


def test_a_disclosure_tells_residents_who_held_a_commissioning_grant_and_when():
    from google.protobuf import timestamp_pb2

    from kusinta.iot.commissioning.v1 import commissioning_pb2

    disclosure = management_pb2.PrivacyDisclosure(
        commissioning_grants=[
            commissioning_pb2.CommissioningGrantRecord(
                installer_name="Installer AB",
                starts_at=timestamp_pb2.Timestamp(seconds=1_790_000_000),
                ended_at=timestamp_pb2.Timestamp(seconds=1_790_086_400),
            )
        ]
    )

    decoded = _round_trip(disclosure).commissioning_grants[0]
    assert (decoded.installer_name, decoded.ended_at.seconds) == ("Installer AB", 1_790_086_400)


def test_a_vacated_handover_says_its_notice_ends_early_if_a_new_household_moves_in():
    decoded = _round_trip(h.HouseholdHandover(handover_id="h-5", vacated=True, may_end_on_move_in=True))

    assert decoded.may_end_on_move_in is True
