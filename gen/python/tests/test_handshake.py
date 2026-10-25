"""Contract tests for a refused handshake.

These assert the decisions the shape encodes:

  * a refusal names its reason by code, so an app says it in its user's language
  * a refusal from a gateway that sends only its English text reads as UNSPECIFIED
"""

from kusinta.iot.webrtc.v1 import envelope_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_refused_handshake_names_its_reason_by_code():
    rejected = envelope_pb2.HandshakeRejected(
        reason="Invalid message encoding", code=envelope_pb2.HANDSHAKE_REJECT_REASON_INVALID_ENCODING
    )

    assert _round_trip(rejected).code == envelope_pb2.HANDSHAKE_REJECT_REASON_INVALID_ENCODING


def test_a_refusal_with_only_a_reason_reads_as_unspecified():
    rejected = envelope_pb2.HandshakeRejected(reason="Must authenticate with AppHandshake first")

    assert _round_trip(rejected).code == envelope_pb2.HANDSHAKE_REJECT_REASON_UNSPECIFIED
