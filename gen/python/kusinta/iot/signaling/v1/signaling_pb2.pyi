from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class SdpOffer(_message.Message):
    __slots__ = ("sdp",)
    SDP_FIELD_NUMBER: _ClassVar[int]
    sdp: str
    def __init__(self, sdp: _Optional[str] = ...) -> None: ...

class SdpAnswer(_message.Message):
    __slots__ = ("sdp",)
    SDP_FIELD_NUMBER: _ClassVar[int]
    sdp: str
    def __init__(self, sdp: _Optional[str] = ...) -> None: ...

class IceCandidate(_message.Message):
    __slots__ = ("candidate",)
    CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    candidate: str
    def __init__(self, candidate: _Optional[str] = ...) -> None: ...

class HeartBeat(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class UserHandshake(_message.Message):
    __slots__ = ("target_gateway_id",)
    TARGET_GATEWAY_ID_FIELD_NUMBER: _ClassVar[int]
    target_gateway_id: _identity_pb2.GatewayId
    def __init__(self, target_gateway_id: _Optional[_Union[_identity_pb2.GatewayId, _Mapping]] = ...) -> None: ...

class UserHandshakeAck(_message.Message):
    __slots__ = ("accepted", "reason")
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    accepted: bool
    reason: str
    def __init__(self, accepted: _Optional[bool] = ..., reason: _Optional[str] = ...) -> None: ...

class GatewayConnectRequest(_message.Message):
    __slots__ = ("target_user_id", "answer", "ice_candidate", "heartbeat")
    TARGET_USER_ID_FIELD_NUMBER: _ClassVar[int]
    ANSWER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    HEARTBEAT_FIELD_NUMBER: _ClassVar[int]
    target_user_id: _identity_pb2.UserId
    answer: SdpAnswer
    ice_candidate: IceCandidate
    heartbeat: HeartBeat
    def __init__(self, target_user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., answer: _Optional[_Union[SdpAnswer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ..., heartbeat: _Optional[_Union[HeartBeat, _Mapping]] = ...) -> None: ...

class GatewayConnectResponse(_message.Message):
    __slots__ = ("from_user_id", "offer", "ice_candidate")
    FROM_USER_ID_FIELD_NUMBER: _ClassVar[int]
    OFFER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    from_user_id: _identity_pb2.UserId
    offer: SdpOffer
    ice_candidate: IceCandidate
    def __init__(self, from_user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., offer: _Optional[_Union[SdpOffer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ...) -> None: ...

class UserConnectRequest(_message.Message):
    __slots__ = ("handshake", "offer", "ice_candidate")
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    OFFER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    handshake: UserHandshake
    offer: SdpOffer
    ice_candidate: IceCandidate
    def __init__(self, handshake: _Optional[_Union[UserHandshake, _Mapping]] = ..., offer: _Optional[_Union[SdpOffer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ...) -> None: ...

class UserConnectResponse(_message.Message):
    __slots__ = ("handshake_ack", "answer", "ice_candidate")
    HANDSHAKE_ACK_FIELD_NUMBER: _ClassVar[int]
    ANSWER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    handshake_ack: UserHandshakeAck
    answer: SdpAnswer
    ice_candidate: IceCandidate
    def __init__(self, handshake_ack: _Optional[_Union[UserHandshakeAck, _Mapping]] = ..., answer: _Optional[_Union[SdpAnswer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ...) -> None: ...
