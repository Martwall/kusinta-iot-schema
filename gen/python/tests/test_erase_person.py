"""ERASURE: the api-server tells a gateway to erase a person, and the gateway acknowledges."""

from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.signaling.v1 import signaling_pb2


def _round_trip(message):
    return type(message).FromString(message.SerializeToString())


def test_an_erasure_names_its_id_and_the_person():
    response = signaling_pb2.GatewayConnectResponse(
        erase_person=signaling_pb2.ErasePerson(
            erasure_id="er-1", user_id=identity_pb2.UserId(value="user-1")
        )
    )

    sent = _round_trip(response)
    assert (sent.WhichOneof("payload"), sent.erase_person.erasure_id, sent.erase_person.user_id.value) == (
        "erase_person",
        "er-1",
        "user-1",
    )


def test_an_erasure_carries_no_sender():
    response = signaling_pb2.GatewayConnectResponse(
        erase_person=signaling_pb2.ErasePerson(erasure_id="er-1")
    )

    assert _round_trip(response).HasField("from_user_id") is False


def test_the_acknowledgement_carries_counts_only():
    request = signaling_pb2.GatewayConnectRequest(
        erase_person_applied=signaling_pb2.ErasePersonApplied(
            erasure_id="er-1", records_unnamed=3, records_deleted=7
        )
    )

    applied = _round_trip(request).erase_person_applied
    assert (applied.erasure_id, applied.records_unnamed, applied.records_deleted) == ("er-1", 3, 7)
