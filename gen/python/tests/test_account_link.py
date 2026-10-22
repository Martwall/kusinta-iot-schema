"""Contract tests for linking a home's account at a third-party service.

These assert the decisions the shape encodes:

  * the access grant travels apart from the refresh token, which stays on the gateway
  * an unavailable refresh tells the gateway how long to wait
  * the nonce's claims name the service by its fixed claim value, not an enum name
  * a link's status names no token
"""

from google.protobuf import duration_pb2

from kusinta.iot.accountlink.v1 import account_link_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_the_access_grant_is_apart_from_the_refresh_token():
    grant = account_link_pb2.TokenGrant(
        access=account_link_pb2.AccessGrant(access_token="a"), refresh_token="r"
    )

    assert _round_trip(grant).access.access_token == "a"


def test_an_unavailable_refresh_says_when_to_ask_again():
    answer = account_link_pb2.TokenRefreshed(
        outcome=account_link_pb2.TOKEN_OUTCOME_UNAVAILABLE, retry_after=duration_pb2.Duration(seconds=90)
    )

    assert _round_trip(answer).retry_after.seconds == 90


def test_the_nonce_claims_name_the_service_by_its_claim_value():
    claims = account_link_pb2.AccountLinkNonceClaims(aud="account-link", svc="myuplink")

    assert _round_trip(claims).svc == "myuplink"


def test_a_link_status_carries_no_token():
    link = account_link_pb2.AccountLink(
        service=account_link_pb2.LINKED_SERVICE_MYUPLINK, status=account_link_pb2.ACCOUNT_LINK_STATUS_LINKED
    )

    assert sorted(_round_trip(link).DESCRIPTOR.fields_by_name) == ["linked_since", "service", "status"]
