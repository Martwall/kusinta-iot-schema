"""Contract tests for handing a linked account's access token to the connector that reads it.

These assert the decisions the shape encodes:

  * only the short-lived access token crosses, keyed by an opaque link id
  * a connector says which linked services it reads, so the gateway sends tokens to no other
  * revocation names only the link
"""

from kusinta.iot.accountlink.v1 import account_link_pb2
from kusinta.iot.connector.v1 import connector_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_connector_declares_the_linked_services_it_reads():
    info = connector_pb2.ConnectorInfo(consumes_credentials=[account_link_pb2.LINKED_SERVICE_MYUPLINK])

    assert list(_round_trip(info).consumes_credentials) == [account_link_pb2.LINKED_SERVICE_MYUPLINK]


def test_a_credentials_update_carries_an_access_token_for_one_link():
    response = connector_pb2.SessionResponse(
        credentials_update=connector_pb2.CredentialsUpdate(
            link_id="l-1", service=account_link_pb2.LINKED_SERVICE_MYUPLINK, access_token="at"
        )
    )

    update = _round_trip(response).credentials_update
    assert (update.link_id, update.access_token) == ("l-1", "at")


def test_a_credentials_update_carries_no_refresh_token():
    names = set(connector_pb2.CredentialsUpdate.DESCRIPTOR.fields_by_name)

    assert names == {"link_id", "service", "access_token", "expires_at"}


def test_a_revocation_names_only_the_link():
    response = connector_pb2.SessionResponse(credentials_revoked=connector_pb2.CredentialsRevoked(link_id="l-1"))

    assert _round_trip(response).credentials_revoked.link_id == "l-1"
