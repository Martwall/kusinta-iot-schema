"""Contract tests for organisations owning gateways.

  * the api-server tells the gateway who its vouched administrators are, by version
  * a transfer's outcome says, per outgoing staff member, whether they leave or stay
  * an ownership epoch opens the gateway's stream and completes its registration
  * a delete notice asks for a wipe in a scope, and is acknowledged with the one applied
  * granting a role is a request the person asked accepts
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.access.v1 import roles_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.registration.v1 import registration_pb2
from kusinta.iot.signaling.v1 import signaling_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2, members_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_vouched_administrators_reach_the_gateway_with_their_version():
    response = signaling_pb2.GatewayConnectResponse(
        vouched_administrators=signaling_pb2.VouchedAdministrators(
            version=7,
            administrators=[identity_pb2.UserId(value="anna")],
            organisation_name="Brf Ek",
        )
    )

    assert _round_trip(response).vouched_administrators.version == 7


def test_the_gateway_acknowledges_the_vouched_set_by_version():
    request = signaling_pb2.GatewayConnectRequest(
        vouched_administrators_applied=signaling_pb2.VouchedAdministratorsApplied(version=7)
    )

    assert _round_trip(request).vouched_administrators_applied.version == 7


def test_an_outgoing_choice_left_unset_states_no_choice():
    choice = signaling_pb2.OutgoingChoice(user_id=identity_pb2.UserId(value="olle"))

    assert _round_trip(choice).choice == signaling_pb2.OUTGOING_STAFF_CHOICE_UNSPECIFIED


def test_a_transfer_outcome_lets_someone_stay_as_technician_until_a_date():
    response = signaling_pb2.GatewayConnectResponse(
        transfer_outcome=signaling_pb2.TransferOutcome(
            transfer_id="t-1",
            outgoing=[
                signaling_pb2.OutgoingChoice(
                    user_id=identity_pb2.UserId(value="anna"),
                    choice=signaling_pb2.OUTGOING_STAFF_CHOICE_STAY_AS_TECHNICIAN,
                    access_until=timestamp_pb2.Timestamp(seconds=1_800_000_000),
                )
            ],
        )
    )

    assert _round_trip(response).transfer_outcome.outgoing[0].access_until.seconds == 1_800_000_000


def test_the_gateway_acknowledges_a_transfer_by_its_id():
    request = signaling_pb2.GatewayConnectRequest(
        transfer_outcome_applied=signaling_pb2.TransferOutcomeApplied(transfer_id="t-1")
    )

    assert _round_trip(request).transfer_outcome_applied.transfer_id == "t-1"


def test_the_stream_opens_with_the_ownership_epoch():
    response = signaling_pb2.GatewayConnectResponse(
        stream_opened=signaling_pb2.GatewayStreamOpened(ownership_epoch="ep-2")
    )

    assert _round_trip(response).stream_opened.ownership_epoch == "ep-2"


def test_a_delete_notice_names_the_epoch_that_ended():
    response = signaling_pb2.GatewayConnectResponse(
        gateway_deleted=signaling_pb2.GatewayDeleted(ownership_epoch="ep-2")
    )

    assert _round_trip(response).gateway_deleted.ownership_epoch == "ep-2"


def test_a_delete_notice_with_no_scope_states_none():
    notice = signaling_pb2.GatewayDeleted(ownership_epoch="ep-2")

    assert _round_trip(notice).scope == signaling_pb2.WIPE_SCOPE_UNSPECIFIED


def test_a_delete_notice_has_no_option_for_keeping_space_names():
    fields = signaling_pb2.GatewayDeleted.DESCRIPTOR.fields

    assert [(f.name, f.number) for f in fields] == [("ownership_epoch", 1), ("scope", 2)]


def test_the_stream_opens_with_the_epoch_alone():
    fields = signaling_pb2.GatewayStreamOpened.DESCRIPTOR.fields

    assert [f.name for f in fields] == ["ownership_epoch"]


def test_a_wipe_is_acknowledged_with_no_word_on_space_names():
    fields = signaling_pb2.GatewayWiped.DESCRIPTOR.fields

    assert [(f.name, f.number) for f in fields] == [
        ("ownership_epoch", 1),
        ("scope", 2),
        ("left_behind", 3),
    ]


def test_the_gateway_acknowledges_a_wipe_with_the_scope_it_applied():
    request = signaling_pb2.GatewayConnectRequest(
        wiped=signaling_pb2.GatewayWiped(
            ownership_epoch="ep-2", scope=signaling_pb2.WIPE_SCOPE_PEOPLE_AND_HISTORY
        )
    )

    assert _round_trip(request).wiped.scope == signaling_pb2.WIPE_SCOPE_PEOPLE_AND_HISTORY


def test_a_factory_reset_says_which_pairings_it_left_behind():
    wiped = signaling_pb2.GatewayWiped(
        scope=signaling_pb2.WIPE_SCOPE_FACTORY_RESET,
        left_behind=[signaling_pb2.PairingsLeftBehind(display_name="CCU3")],
    )

    assert _round_trip(wiped).left_behind[0].display_name == "CCU3"


def test_a_registration_completes_with_no_space_name_choice():
    fields = registration_pb2.RegistrationComplete.DESCRIPTOR.fields

    assert [f.name for f in fields] == ["certificate_pem", "ca_bundle_pem", "ownership_epoch"]


def test_a_registration_completes_with_the_ownership_epoch():
    complete = registration_pb2.RegistrationComplete(ownership_epoch="ep-3")

    assert _round_trip(complete).ownership_epoch == "ep-3"


def test_a_member_is_marked_as_a_vouched_administrator():
    member = members_pb2.MemberDetail(
        user_id=identity_pb2.UserId(value="anna"), vouched_admin=True
    )

    assert _round_trip(member).vouched_admin is True


def test_a_promotion_is_requested_for_a_role():
    request = management_pb2.ManagementRequest(
        request_promotion=members_pb2.RequestPromotion(
            user_id=identity_pb2.UserId(value="tek"), role=roles_pb2.ROLE_GATEWAY_ADMIN
        )
    )

    assert _round_trip(request).request_promotion.role == roles_pb2.ROLE_GATEWAY_ADMIN


def test_a_promotion_request_is_answered_by_its_id():
    request = management_pb2.ManagementRequest(
        answer_promotion=members_pb2.AnswerPromotion(request_id="p-1", accept=True)
    )

    assert _round_trip(request).answer_promotion.accept is True


def test_a_promotion_request_names_who_asked():
    promotion = members_pb2.PromotionRequest(
        requested_by=identity_pb2.UserId(value="anna"), requested_by_name="Anna"
    )

    assert _round_trip(promotion).requested_by_name == "Anna"


def test_promotion_requests_are_pushed_when_they_change():
    message = envelope_pb2.GatewayMessage(
        promotion_requests=members_pb2.PromotionRequests(
            requests=[members_pb2.PromotionRequest(request_id="p-1")]
        )
    )

    assert _round_trip(message).promotion_requests.requests[0].request_id == "p-1"
