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
