from kusinta.iot.signaling.v1 import signaling_pb2
from kusinta.iot.identity.v1 import identity_pb2


def test_sdp_offer_round_trip():
    offer = signaling_pb2.SdpOffer(sdp="v=0\r\no=- 0 0 IN IP4 0.0.0.0\r\n")
    decoded = signaling_pb2.SdpOffer()
    decoded.ParseFromString(offer.SerializeToString())
    assert "v=0" in decoded.sdp


def test_sdp_answer_round_trip():
    answer = signaling_pb2.SdpAnswer(sdp="v=0\r\no=- 1 1 IN IP4 0.0.0.0\r\n")
    decoded = signaling_pb2.SdpAnswer()
    decoded.ParseFromString(answer.SerializeToString())
    assert "v=0" in decoded.sdp


def test_ice_candidate_round_trip():
    ice = signaling_pb2.IceCandidate(
        candidate="candidate:1 1 UDP 2130706431 192.168.1.1 54321 typ host"
    )
    decoded = signaling_pb2.IceCandidate()
    decoded.ParseFromString(ice.SerializeToString())
    assert "typ host" in decoded.candidate


def test_user_handshake_round_trip():
    hs = signaling_pb2.UserHandshake(
        target_gateway_id=identity_pb2.GatewayId(value="gw-home-1")
    )
    decoded = signaling_pb2.UserHandshake()
    decoded.ParseFromString(hs.SerializeToString())
    assert decoded.target_gateway_id.value == "gw-home-1"


def test_user_handshake_ack_accepted():
    ack = signaling_pb2.UserHandshakeAck(accepted=True)
    decoded = signaling_pb2.UserHandshakeAck()
    decoded.ParseFromString(ack.SerializeToString())
    assert decoded.accepted is True


def test_user_handshake_ack_rejected():
    ack = signaling_pb2.UserHandshakeAck(accepted=False, reason="JWT expired")
    decoded = signaling_pb2.UserHandshakeAck()
    decoded.ParseFromString(ack.SerializeToString())
    assert decoded.accepted is False
    assert decoded.reason == "JWT expired"


def test_gateway_connect_request_answer_payload():
    req = signaling_pb2.GatewayConnectRequest(
        target_user_id=identity_pb2.UserId(value="user-42"),
        answer=signaling_pb2.SdpAnswer(sdp="v=0\r\n"),
    )
    decoded = signaling_pb2.GatewayConnectRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.target_user_id.value == "user-42"
    assert decoded.WhichOneof("payload") == "answer"
    assert "v=0" in decoded.answer.sdp


def test_gateway_connect_request_ice_candidate_payload():
    req = signaling_pb2.GatewayConnectRequest(
        target_user_id=identity_pb2.UserId(value="user-42"),
        ice_candidate=signaling_pb2.IceCandidate(
            candidate="candidate:1 1 UDP 2130706431 10.0.0.1 12345 typ host"
        ),
    )
    decoded = signaling_pb2.GatewayConnectRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.WhichOneof("payload") == "ice_candidate"
    assert "typ host" in decoded.ice_candidate.candidate


def test_gateway_connect_response_offer_payload():
    resp = signaling_pb2.GatewayConnectResponse(
        from_user_id=identity_pb2.UserId(value="user-1"),
        offer=signaling_pb2.SdpOffer(sdp="v=0\r\n"),
    )
    decoded = signaling_pb2.GatewayConnectResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.from_user_id.value == "user-1"
    assert decoded.WhichOneof("payload") == "offer"


def test_gateway_connect_response_ice_candidate_payload():
    resp = signaling_pb2.GatewayConnectResponse(
        from_user_id=identity_pb2.UserId(value="user-1"),
        ice_candidate=signaling_pb2.IceCandidate(
            candidate="candidate:2 1 UDP 1694498815 203.0.113.1 54321 typ srflx"
        ),
    )
    decoded = signaling_pb2.GatewayConnectResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("payload") == "ice_candidate"
    assert "typ srflx" in decoded.ice_candidate.candidate


def test_user_connect_request_handshake_payload():
    req = signaling_pb2.UserConnectRequest(
        handshake=signaling_pb2.UserHandshake(
            target_gateway_id=identity_pb2.GatewayId(value="gw-home-1")
        )
    )
    decoded = signaling_pb2.UserConnectRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.WhichOneof("payload") == "handshake"
    assert decoded.handshake.target_gateway_id.value == "gw-home-1"


def test_user_connect_request_offer_payload():
    req = signaling_pb2.UserConnectRequest(offer=signaling_pb2.SdpOffer(sdp="v=0\r\n"))
    decoded = signaling_pb2.UserConnectRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.WhichOneof("payload") == "offer"


def test_user_connect_request_ice_candidate_payload():
    req = signaling_pb2.UserConnectRequest(
        ice_candidate=signaling_pb2.IceCandidate(
            candidate="candidate:1 1 UDP 2130706431 192.168.1.2 56789 typ host"
        )
    )
    decoded = signaling_pb2.UserConnectRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.WhichOneof("payload") == "ice_candidate"


def test_user_connect_response_handshake_ack_accepted():
    resp = signaling_pb2.UserConnectResponse(
        handshake_ack=signaling_pb2.UserHandshakeAck(accepted=True)
    )
    decoded = signaling_pb2.UserConnectResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("payload") == "handshake_ack"
    assert decoded.handshake_ack.accepted is True


def test_user_connect_response_handshake_ack_rejected():
    resp = signaling_pb2.UserConnectResponse(
        handshake_ack=signaling_pb2.UserHandshakeAck(accepted=False, reason="Gateway not found")
    )
    decoded = signaling_pb2.UserConnectResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("payload") == "handshake_ack"
    assert decoded.handshake_ack.accepted is False
    assert decoded.handshake_ack.reason == "Gateway not found"


def test_user_connect_response_answer_payload():
    resp = signaling_pb2.UserConnectResponse(answer=signaling_pb2.SdpAnswer(sdp="v=0\r\n"))
    decoded = signaling_pb2.UserConnectResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("payload") == "answer"


def test_user_connect_response_ice_candidate_payload():
    resp = signaling_pb2.UserConnectResponse(
        ice_candidate=signaling_pb2.IceCandidate(
            candidate="candidate:3 1 UDP 16777215 10.0.0.2 9999 typ relay"
        )
    )
    decoded = signaling_pb2.UserConnectResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("payload") == "ice_candidate"
    assert "typ relay" in decoded.ice_candidate.candidate
