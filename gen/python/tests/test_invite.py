from kusinta.iot.access.v1 import roles_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, invite_pb2, management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_create_invite_is_a_management_request():
    request = _round_trip(
        management_pb2.ManagementRequest(
            create_invite=invite_pb2.CreateInvite(
                space_id=identity_pb2.SpaceId(value="lgh-1102"),
                relation=roles_pb2.MEMBERSHIP_RELATION_SERVICE,
            )
        )
    )

    assert request.WhichOneof("request") == "create_invite"


def test_an_issued_invite_carries_its_secrets():
    result = _round_trip(
        envelope_pb2.ManagementResult(
            issued_invite=invite_pb2.IssuedInvite(token="tKn", code="K7QM4RXD")
        )
    )

    assert (result.issued_invite.token, result.issued_invite.code) == ("tKn", "K7QM4RXD")


def test_a_listed_invite_has_no_field_for_a_secret():
    assert "token" not in invite_pb2.Invite.DESCRIPTOR.fields_by_name


def test_a_space_whose_invites_changed_is_pushed():
    message = _round_trip(
        envelope_pb2.GatewayMessage(
            space_invites=invite_pb2.SpaceInvites(
                space_id=identity_pb2.SpaceId(value="lgh-1102")
            )
        )
    )

    assert message.WhichOneof("payload") == "space_invites"


# --- what redeeming does --------------------------------------------------------------


def test_an_invite_leaves_its_admission_unspecified_when_not_said():
    invite = invite_pb2.Invite(invite_id="inv-1")

    assert _round_trip(invite).admission == invite_pb2.INVITE_ADMISSION_UNSPECIFIED


def test_a_home_key_is_listed_as_admitting_on_redeem():
    invite = invite_pb2.Invite(
        invite_id="inv-1", admission=invite_pb2.INVITE_ADMISSION_ON_REDEEM
    )

    assert _round_trip(invite).admission == invite_pb2.INVITE_ADMISSION_ON_REDEEM


def test_an_invite_bound_to_an_address_is_listed_as_admitting_on_an_email_match():
    invite = invite_pb2.Invite(
        invite_id="inv-1", admission=invite_pb2.INVITE_ADMISSION_ON_EMAIL_MATCH
    )

    assert _round_trip(invite).admission == invite_pb2.INVITE_ADMISSION_ON_EMAIL_MATCH


def test_an_invite_making_a_join_request_is_listed_as_admitting_on_approval():
    invite = invite_pb2.Invite(
        invite_id="inv-1", admission=invite_pb2.INVITE_ADMISSION_ON_APPROVAL
    )

    assert _round_trip(invite).admission == invite_pb2.INVITE_ADMISSION_ON_APPROVAL
