import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.webrtc.v1 import command_pb2 as _command_pb2
from kusinta.iot.webrtc.v1 import device_state_pb2 as _device_state_pb2
from kusinta.iot.webrtc.v1 import permission_push_pb2 as _permission_push_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class GatewayErrorCode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    GATEWAY_ERROR_CODE_UNSPECIFIED: _ClassVar[GatewayErrorCode]
    GATEWAY_ERROR_CODE_NOT_ENTITLED: _ClassVar[GatewayErrorCode]
    GATEWAY_ERROR_CODE_INVALID_REQUEST: _ClassVar[GatewayErrorCode]
    GATEWAY_ERROR_CODE_UNAVAILABLE: _ClassVar[GatewayErrorCode]
    GATEWAY_ERROR_CODE_INTERNAL: _ClassVar[GatewayErrorCode]
    GATEWAY_ERROR_CODE_SESSION_LIMIT_REACHED: _ClassVar[GatewayErrorCode]
GATEWAY_ERROR_CODE_UNSPECIFIED: GatewayErrorCode
GATEWAY_ERROR_CODE_NOT_ENTITLED: GatewayErrorCode
GATEWAY_ERROR_CODE_INVALID_REQUEST: GatewayErrorCode
GATEWAY_ERROR_CODE_UNAVAILABLE: GatewayErrorCode
GATEWAY_ERROR_CODE_INTERNAL: GatewayErrorCode
GATEWAY_ERROR_CODE_SESSION_LIMIT_REACHED: GatewayErrorCode

class Ping(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class Pong(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class HandshakeRejected(_message.Message):
    __slots__ = ("reason",)
    REASON_FIELD_NUMBER: _ClassVar[int]
    reason: str
    def __init__(self, reason: _Optional[str] = ...) -> None: ...

class AppHandshake(_message.Message):
    __slots__ = ("jwt", "subscribe_device_ids")
    JWT_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIBE_DEVICE_IDS_FIELD_NUMBER: _ClassVar[int]
    jwt: str
    subscribe_device_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    def __init__(self, jwt: _Optional[str] = ..., subscribe_device_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ...) -> None: ...

class SubscribeDevices(_message.Message):
    __slots__ = ("device_ids",)
    DEVICE_IDS_FIELD_NUMBER: _ClassVar[int]
    device_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    def __init__(self, device_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ...) -> None: ...

class UnsubscribeDevices(_message.Message):
    __slots__ = ("device_ids",)
    DEVICE_IDS_FIELD_NUMBER: _ClassVar[int]
    device_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    def __init__(self, device_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ...) -> None: ...

class RefusedSubscription(_message.Message):
    __slots__ = ("device_id", "code", "message")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    code: GatewayErrorCode
    message: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., code: _Optional[_Union[GatewayErrorCode, str]] = ..., message: _Optional[str] = ...) -> None: ...

class SubscriptionAck(_message.Message):
    __slots__ = ("in_reply_to", "subscribed", "refused")
    IN_REPLY_TO_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIBED_FIELD_NUMBER: _ClassVar[int]
    REFUSED_FIELD_NUMBER: _ClassVar[int]
    in_reply_to: str
    subscribed: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    refused: _containers.RepeatedCompositeFieldContainer[RefusedSubscription]
    def __init__(self, in_reply_to: _Optional[str] = ..., subscribed: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ..., refused: _Optional[_Iterable[_Union[RefusedSubscription, _Mapping]]] = ...) -> None: ...

class PropertyReadRequest(_message.Message):
    __slots__ = ("device_id", "attribute_name", "cluster_id_hex")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_NAME_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_HEX_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    attribute_name: str
    cluster_id_hex: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., attribute_name: _Optional[str] = ..., cluster_id_hex: _Optional[str] = ...) -> None: ...

class GatewayError(_message.Message):
    __slots__ = ("code", "message", "metadata")
    class MetadataEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: str
        value: str
        def __init__(self, key: _Optional[str] = ..., value: _Optional[str] = ...) -> None: ...
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    METADATA_FIELD_NUMBER: _ClassVar[int]
    code: GatewayErrorCode
    message: str
    metadata: _containers.ScalarMap[str, str]
    def __init__(self, code: _Optional[_Union[GatewayErrorCode, str]] = ..., message: _Optional[str] = ..., metadata: _Optional[_Mapping[str, str]] = ...) -> None: ...

class GatewayMessage(_message.Message):
    __slots__ = ("message_id", "sent_at", "state_snapshot", "property_event", "permission_update", "command_result", "pong", "handshake_rejected", "error", "subscription_ack", "device_added", "device_removed")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    STATE_SNAPSHOT_FIELD_NUMBER: _ClassVar[int]
    PROPERTY_EVENT_FIELD_NUMBER: _ClassVar[int]
    PERMISSION_UPDATE_FIELD_NUMBER: _ClassVar[int]
    COMMAND_RESULT_FIELD_NUMBER: _ClassVar[int]
    PONG_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_REJECTED_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIPTION_ACK_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ADDED_FIELD_NUMBER: _ClassVar[int]
    DEVICE_REMOVED_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    state_snapshot: _device_state_pb2.DeviceStateSnapshot
    property_event: _device_state_pb2.DevicePropertyEvent
    permission_update: _permission_push_pb2.LivePermissionUpdate
    command_result: _command_pb2.CommandResult
    pong: Pong
    handshake_rejected: HandshakeRejected
    error: GatewayError
    subscription_ack: SubscriptionAck
    device_added: _device_state_pb2.DeviceAdded
    device_removed: _device_state_pb2.DeviceRemoved
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., state_snapshot: _Optional[_Union[_device_state_pb2.DeviceStateSnapshot, _Mapping]] = ..., property_event: _Optional[_Union[_device_state_pb2.DevicePropertyEvent, _Mapping]] = ..., permission_update: _Optional[_Union[_permission_push_pb2.LivePermissionUpdate, _Mapping]] = ..., command_result: _Optional[_Union[_command_pb2.CommandResult, _Mapping]] = ..., pong: _Optional[_Union[Pong, _Mapping]] = ..., handshake_rejected: _Optional[_Union[HandshakeRejected, _Mapping]] = ..., error: _Optional[_Union[GatewayError, _Mapping]] = ..., subscription_ack: _Optional[_Union[SubscriptionAck, _Mapping]] = ..., device_added: _Optional[_Union[_device_state_pb2.DeviceAdded, _Mapping]] = ..., device_removed: _Optional[_Union[_device_state_pb2.DeviceRemoved, _Mapping]] = ...) -> None: ...

class AppMessage(_message.Message):
    __slots__ = ("message_id", "sent_at", "handshake", "command", "read_request", "ping", "subscribe", "unsubscribe")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    COMMAND_FIELD_NUMBER: _ClassVar[int]
    READ_REQUEST_FIELD_NUMBER: _ClassVar[int]
    PING_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIBE_FIELD_NUMBER: _ClassVar[int]
    UNSUBSCRIBE_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    handshake: AppHandshake
    command: _command_pb2.DeviceCommand
    read_request: PropertyReadRequest
    ping: Ping
    subscribe: SubscribeDevices
    unsubscribe: UnsubscribeDevices
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., handshake: _Optional[_Union[AppHandshake, _Mapping]] = ..., command: _Optional[_Union[_command_pb2.DeviceCommand, _Mapping]] = ..., read_request: _Optional[_Union[PropertyReadRequest, _Mapping]] = ..., ping: _Optional[_Union[Ping, _Mapping]] = ..., subscribe: _Optional[_Union[SubscribeDevices, _Mapping]] = ..., unsubscribe: _Optional[_Union[UnsubscribeDevices, _Mapping]] = ...) -> None: ...
