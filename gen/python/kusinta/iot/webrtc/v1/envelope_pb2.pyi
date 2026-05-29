import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.webrtc.v1 import command_pb2 as _command_pb2
from kusinta.iot.webrtc.v1 import device_state_pb2 as _device_state_pb2
from kusinta.iot.webrtc.v1 import permission_push_pb2 as _permission_push_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Ping(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class Pong(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class AppHandshake(_message.Message):
    __slots__ = ("jwt", "subscribe_device_ids")
    JWT_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIBE_DEVICE_IDS_FIELD_NUMBER: _ClassVar[int]
    jwt: str
    subscribe_device_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    def __init__(self, jwt: _Optional[str] = ..., subscribe_device_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ...) -> None: ...

class PropertyReadRequest(_message.Message):
    __slots__ = ("device_id", "attribute_name", "cluster_id_hex")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_NAME_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_HEX_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    attribute_name: str
    cluster_id_hex: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., attribute_name: _Optional[str] = ..., cluster_id_hex: _Optional[str] = ...) -> None: ...

class GatewayMessage(_message.Message):
    __slots__ = ("message_id", "sent_at", "state_snapshot", "property_event", "permission_update", "command_result", "error", "pong")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    STATE_SNAPSHOT_FIELD_NUMBER: _ClassVar[int]
    PROPERTY_EVENT_FIELD_NUMBER: _ClassVar[int]
    PERMISSION_UPDATE_FIELD_NUMBER: _ClassVar[int]
    COMMAND_RESULT_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    PONG_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    state_snapshot: _device_state_pb2.DeviceStateSnapshot
    property_event: _device_state_pb2.DevicePropertyEvent
    permission_update: _permission_push_pb2.LivePermissionUpdate
    command_result: _command_pb2.CommandResult
    error: str
    pong: Pong
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., state_snapshot: _Optional[_Union[_device_state_pb2.DeviceStateSnapshot, _Mapping]] = ..., property_event: _Optional[_Union[_device_state_pb2.DevicePropertyEvent, _Mapping]] = ..., permission_update: _Optional[_Union[_permission_push_pb2.LivePermissionUpdate, _Mapping]] = ..., command_result: _Optional[_Union[_command_pb2.CommandResult, _Mapping]] = ..., error: _Optional[str] = ..., pong: _Optional[_Union[Pong, _Mapping]] = ...) -> None: ...

class AppMessage(_message.Message):
    __slots__ = ("message_id", "sent_at", "handshake", "command", "read_request", "ping")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    COMMAND_FIELD_NUMBER: _ClassVar[int]
    READ_REQUEST_FIELD_NUMBER: _ClassVar[int]
    PING_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    handshake: AppHandshake
    command: _command_pb2.DeviceCommand
    read_request: PropertyReadRequest
    ping: Ping
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., handshake: _Optional[_Union[AppHandshake, _Mapping]] = ..., command: _Optional[_Union[_command_pb2.DeviceCommand, _Mapping]] = ..., read_request: _Optional[_Union[PropertyReadRequest, _Mapping]] = ..., ping: _Optional[_Union[Ping, _Mapping]] = ...) -> None: ...
