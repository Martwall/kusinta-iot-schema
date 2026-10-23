"""Contract tests for handing a linked account's access token to the connector that reads it.

These assert the decisions the shape encodes:

  * only the short-lived access token crosses, keyed by an opaque account link id
  * the gateway says it sends tokens, and a connector says which linked services it reads
  * after a handshake the gateway sends every live link at once, so a link that ended while
    the connector was away is dropped
  * every device read through a link is announced under it, so the gateway files it in that home
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.accountlink.v1 import account_link_pb2
from kusinta.iot.connector.v1 import connector_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_connector_declares_the_linked_services_it_reads():
    info = connector_pb2.ConnectorInfo(consumes_credentials=[account_link_pb2.LINKED_SERVICE_MYUPLINK])

    assert list(_round_trip(info).consumes_credentials) == [account_link_pb2.LINKED_SERVICE_MYUPLINK]


def test_the_gateway_says_it_sends_credentials():
    assert _round_trip(connector_pb2.HandshakeAck(sends_credentials=True)).sends_credentials is True


def test_a_credentials_update_carries_an_access_token_for_one_account_link():
    update = connector_pb2.CredentialsUpdate(
        account_link_id="l-1",
        service=account_link_pb2.LINKED_SERVICE_MYUPLINK,
        access_token="at",
        expires_at=timestamp_pb2.Timestamp(seconds=1_790_003_600),
    )

    decoded = _round_trip(connector_pb2.SessionResponse(credentials_update=update)).credentials_update
    assert (decoded.account_link_id, decoded.service, decoded.access_token, decoded.expires_at.seconds) == (
        "l-1",
        account_link_pb2.LINKED_SERVICE_MYUPLINK,
        "at",
        1_790_003_600,
    )


def test_a_credentials_update_carries_no_refresh_token():
    names = set(connector_pb2.CredentialsUpdate.DESCRIPTOR.fields_by_name)

    assert names == {"account_link_id", "service", "access_token", "expires_at"}


def test_a_snapshot_lists_every_live_account_link():
    snapshot = connector_pb2.CredentialsSnapshot(
        links=[connector_pb2.CredentialsUpdate(account_link_id="l-1"), connector_pb2.CredentialsUpdate(account_link_id="l-2")]
    )

    decoded = _round_trip(connector_pb2.SessionResponse(credentials_snapshot=snapshot)).credentials_snapshot
    assert [link.account_link_id for link in decoded.links] == ["l-1", "l-2"]


def test_an_empty_snapshot_is_still_a_snapshot():
    response = connector_pb2.SessionResponse(credentials_snapshot=connector_pb2.CredentialsSnapshot())

    assert _round_trip(response).WhichOneof("payload") == "credentials_snapshot"


def test_a_revocation_names_only_the_account_link():
    response = connector_pb2.SessionResponse(credentials_revoked=connector_pb2.CredentialsRevoked(account_link_id="l-1"))

    assert _round_trip(response).credentials_revoked.account_link_id == "l-1"


def test_a_device_read_through_a_link_is_announced_under_it():
    announcement = connector_pb2.DeviceAnnouncement(account_link_id="l-1")

    assert _round_trip(announcement).account_link_id == "l-1"


def test_a_reconnecting_connector_says_which_link_each_known_device_is_read_through():
    handshake = connector_pb2.ConnectorHandshake(known_device_account_links={"myuplink:l-1:123": "l-1"})

    assert dict(_round_trip(handshake).known_device_account_links) == {"myuplink:l-1:123": "l-1"}
