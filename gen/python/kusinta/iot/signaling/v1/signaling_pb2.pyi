from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class RedeemOutcome(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    REDEEM_OUTCOME_UNSPECIFIED: _ClassVar[RedeemOutcome]
    REDEEM_OUTCOME_JOINED: _ClassVar[RedeemOutcome]
    REDEEM_OUTCOME_PENDING_APPROVAL: _ClassVar[RedeemOutcome]
    REDEEM_OUTCOME_INVALID: _ClassVar[RedeemOutcome]
    REDEEM_OUTCOME_WRONG_ACCOUNT: _ClassVar[RedeemOutcome]
REDEEM_OUTCOME_UNSPECIFIED: RedeemOutcome
REDEEM_OUTCOME_JOINED: RedeemOutcome
REDEEM_OUTCOME_PENDING_APPROVAL: RedeemOutcome
REDEEM_OUTCOME_INVALID: RedeemOutcome
REDEEM_OUTCOME_WRONG_ACCOUNT: RedeemOutcome

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
    __slots__ = ("candidate", "sdp_mid", "sdp_mline_index")
    CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    SDP_MID_FIELD_NUMBER: _ClassVar[int]
    SDP_MLINE_INDEX_FIELD_NUMBER: _ClassVar[int]
    candidate: str
    sdp_mid: str
    sdp_mline_index: int
    def __init__(self, candidate: _Optional[str] = ..., sdp_mid: _Optional[str] = ..., sdp_mline_index: _Optional[int] = ...) -> None: ...

class HeartBeat(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class UserHandshake(_message.Message):
    __slots__ = ("target_gateway_id",)
    TARGET_GATEWAY_ID_FIELD_NUMBER: _ClassVar[int]
    target_gateway_id: _identity_pb2.GatewayId
    def __init__(self, target_gateway_id: _Optional[_Union[_identity_pb2.GatewayId, _Mapping]] = ...) -> None: ...

class UserHandshakeAck(_message.Message):
    __slots__ = ("accepted", "reason", "heartbeat_interval_ms")
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    HEARTBEAT_INTERVAL_MS_FIELD_NUMBER: _ClassVar[int]
    accepted: bool
    reason: str
    heartbeat_interval_ms: int
    def __init__(self, accepted: _Optional[bool] = ..., reason: _Optional[str] = ..., heartbeat_interval_ms: _Optional[int] = ...) -> None: ...

class GatewayConnectRequest(_message.Message):
    __slots__ = ("target_user_id", "session_id", "answer", "ice_candidate", "heartbeat", "redeem_invite_result")
    TARGET_USER_ID_FIELD_NUMBER: _ClassVar[int]
    SESSION_ID_FIELD_NUMBER: _ClassVar[int]
    ANSWER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    HEARTBEAT_FIELD_NUMBER: _ClassVar[int]
    REDEEM_INVITE_RESULT_FIELD_NUMBER: _ClassVar[int]
    target_user_id: _identity_pb2.UserId
    session_id: str
    answer: SdpAnswer
    ice_candidate: IceCandidate
    heartbeat: HeartBeat
    redeem_invite_result: RedeemInviteResult
    def __init__(self, target_user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., session_id: _Optional[str] = ..., answer: _Optional[_Union[SdpAnswer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ..., heartbeat: _Optional[_Union[HeartBeat, _Mapping]] = ..., redeem_invite_result: _Optional[_Union[RedeemInviteResult, _Mapping]] = ...) -> None: ...

class GatewayConnectResponse(_message.Message):
    __slots__ = ("from_user_id", "session_id", "offer", "ice_candidate", "redeem_invite")
    FROM_USER_ID_FIELD_NUMBER: _ClassVar[int]
    SESSION_ID_FIELD_NUMBER: _ClassVar[int]
    OFFER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    REDEEM_INVITE_FIELD_NUMBER: _ClassVar[int]
    from_user_id: _identity_pb2.UserId
    session_id: str
    offer: SdpOffer
    ice_candidate: IceCandidate
    redeem_invite: RedeemInvite
    def __init__(self, from_user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., session_id: _Optional[str] = ..., offer: _Optional[_Union[SdpOffer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ..., redeem_invite: _Optional[_Union[RedeemInvite, _Mapping]] = ...) -> None: ...

class RedeemInvite(_message.Message):
    __slots__ = ("request_id", "token", "code", "display_name", "verified_email")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    TOKEN_FIELD_NUMBER: _ClassVar[int]
    CODE_FIELD_NUMBER: _ClassVar[int]
    DISPLAY_NAME_FIELD_NUMBER: _ClassVar[int]
    VERIFIED_EMAIL_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    token: str
    code: str
    display_name: str
    verified_email: str
    def __init__(self, request_id: _Optional[str] = ..., token: _Optional[str] = ..., code: _Optional[str] = ..., display_name: _Optional[str] = ..., verified_email: _Optional[str] = ...) -> None: ...

class RedeemInviteResult(_message.Message):
    __slots__ = ("request_id", "outcome")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    OUTCOME_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    outcome: RedeemOutcome
    def __init__(self, request_id: _Optional[str] = ..., outcome: _Optional[_Union[RedeemOutcome, str]] = ...) -> None: ...

class UserConnectRequest(_message.Message):
    __slots__ = ("session_id", "handshake", "offer", "ice_candidate")
    SESSION_ID_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    OFFER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    session_id: str
    handshake: UserHandshake
    offer: SdpOffer
    ice_candidate: IceCandidate
    def __init__(self, session_id: _Optional[str] = ..., handshake: _Optional[_Union[UserHandshake, _Mapping]] = ..., offer: _Optional[_Union[SdpOffer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ...) -> None: ...

class UserConnectResponse(_message.Message):
    __slots__ = ("session_id", "handshake_ack", "answer", "ice_candidate", "heartbeat")
    SESSION_ID_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_ACK_FIELD_NUMBER: _ClassVar[int]
    ANSWER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    HEARTBEAT_FIELD_NUMBER: _ClassVar[int]
    session_id: str
    handshake_ack: UserHandshakeAck
    answer: SdpAnswer
    ice_candidate: IceCandidate
    heartbeat: HeartBeat
    def __init__(self, session_id: _Optional[str] = ..., handshake_ack: _Optional[_Union[UserHandshakeAck, _Mapping]] = ..., answer: _Optional[_Union[SdpAnswer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ..., heartbeat: _Optional[_Union[HeartBeat, _Mapping]] = ...) -> None: ...

class UserListenRequest(_message.Message):
    __slots__ = ("handshake", "session_id")
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    SESSION_ID_FIELD_NUMBER: _ClassVar[int]
    handshake: UserHandshake
    session_id: str
    def __init__(self, handshake: _Optional[_Union[UserHandshake, _Mapping]] = ..., session_id: _Optional[str] = ...) -> None: ...

class UserListenResponse(_message.Message):
    __slots__ = ("response",)
    RESPONSE_FIELD_NUMBER: _ClassVar[int]
    response: UserConnectResponse
    def __init__(self, response: _Optional[_Union[UserConnectResponse, _Mapping]] = ...) -> None: ...

class UserSendRequest(_message.Message):
    __slots__ = ("session_id", "offer", "ice_candidate")
    SESSION_ID_FIELD_NUMBER: _ClassVar[int]
    OFFER_FIELD_NUMBER: _ClassVar[int]
    ICE_CANDIDATE_FIELD_NUMBER: _ClassVar[int]
    session_id: str
    offer: SdpOffer
    ice_candidate: IceCandidate
    def __init__(self, session_id: _Optional[str] = ..., offer: _Optional[_Union[SdpOffer, _Mapping]] = ..., ice_candidate: _Optional[_Union[IceCandidate, _Mapping]] = ...) -> None: ...

class UserSendResponse(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...
