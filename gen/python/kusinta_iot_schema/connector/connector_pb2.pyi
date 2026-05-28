import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from common import types_pb2 as _types_pb2
from identity import identity_pb2 as _identity_pb2
from device import descriptor_pb2 as _descriptor_pb2
from device import property_update_pb2 as _property_update_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ConnectorInfo(_message.Message):
    __slots__ = ("connector_id", "display_name", "version", "transport", "endpoint", "supported_device_type_ids")
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    DISPLAY_NAME_FIELD_NUMBER: _ClassVar[int]
    VERSION_FIELD_NUMBER: _ClassVar[int]
    TRANSPORT_FIELD_NUMBER: _ClassVar[int]
    ENDPOINT_FIELD_NUMBER: _ClassVar[int]
    SUPPORTED_DEVICE_TYPE_IDS_FIELD_NUMBER: _ClassVar[int]
    connector_id: _identity_pb2.ConnectorId
    display_name: str
    version: str
    transport: _types_pb2.ConnectorTransport
    endpoint: str
    supported_device_type_ids: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ..., display_name: _Optional[str] = ..., version: _Optional[str] = ..., transport: _Optional[_Union[_types_pb2.ConnectorTransport, str]] = ..., endpoint: _Optional[str] = ..., supported_device_type_ids: _Optional[_Iterable[int]] = ...) -> None: ...

class ConnectorHandshake(_message.Message):
    __slots__ = ("info", "known_devices")
    INFO_FIELD_NUMBER: _ClassVar[int]
    KNOWN_DEVICES_FIELD_NUMBER: _ClassVar[int]
    info: ConnectorInfo
    known_devices: _containers.RepeatedCompositeFieldContainer[_descriptor_pb2.DeviceDescriptor]
    def __init__(self, info: _Optional[_Union[ConnectorInfo, _Mapping]] = ..., known_devices: _Optional[_Iterable[_Union[_descriptor_pb2.DeviceDescriptor, _Mapping]]] = ...) -> None: ...

class HandshakeAck(_message.Message):
    __slots__ = ("accepted", "reason", "gateway_id")
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_ID_FIELD_NUMBER: _ClassVar[int]
    accepted: bool
    reason: str
    gateway_id: _identity_pb2.GatewayId
    def __init__(self, accepted: bool = ..., reason: _Optional[str] = ..., gateway_id: _Optional[_Union[_identity_pb2.GatewayId, _Mapping]] = ...) -> None: ...

class DeviceAnnouncement(_message.Message):
    __slots__ = ("descriptor",)
    DESCRIPTOR_FIELD_NUMBER: _ClassVar[int]
    descriptor: _descriptor_pb2.DeviceDescriptor
    def __init__(self, descriptor: _Optional[_Union[_descriptor_pb2.DeviceDescriptor, _Mapping]] = ...) -> None: ...

class DeviceRemoval(_message.Message):
    __slots__ = ("device_id", "reason")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    reason: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., reason: _Optional[str] = ...) -> None: ...

class HeartBeat(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class SubscribeDevice(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class UnsubscribeDevice(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class GatewayError(_message.Message):
    __slots__ = ("code", "message", "command_id")
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    COMMAND_ID_FIELD_NUMBER: _ClassVar[int]
    code: str
    message: str
    command_id: str
    def __init__(self, code: _Optional[str] = ..., message: _Optional[str] = ..., command_id: _Optional[str] = ...) -> None: ...

class CommandResult(_message.Message):
    __slots__ = ("command_id", "success", "error", "completed_at")
    COMMAND_ID_FIELD_NUMBER: _ClassVar[int]
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    COMPLETED_AT_FIELD_NUMBER: _ClassVar[int]
    command_id: str
    success: bool
    error: GatewayError
    completed_at: _timestamp_pb2.Timestamp
    def __init__(self, command_id: _Optional[str] = ..., success: bool = ..., error: _Optional[_Union[GatewayError, _Mapping]] = ..., completed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ConnectorToGatewayMessage(_message.Message):
    __slots__ = ("message_id", "sent_at", "handshake", "property_update", "device_announced", "device_removed", "command_result", "heartbeat")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    PROPERTY_UPDATE_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ANNOUNCED_FIELD_NUMBER: _ClassVar[int]
    DEVICE_REMOVED_FIELD_NUMBER: _ClassVar[int]
    COMMAND_RESULT_FIELD_NUMBER: _ClassVar[int]
    HEARTBEAT_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    handshake: ConnectorHandshake
    property_update: _property_update_pb2.PropertyUpdateBatch
    device_announced: DeviceAnnouncement
    device_removed: DeviceRemoval
    command_result: CommandResult
    heartbeat: HeartBeat
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., handshake: _Optional[_Union[ConnectorHandshake, _Mapping]] = ..., property_update: _Optional[_Union[_property_update_pb2.PropertyUpdateBatch, _Mapping]] = ..., device_announced: _Optional[_Union[DeviceAnnouncement, _Mapping]] = ..., device_removed: _Optional[_Union[DeviceRemoval, _Mapping]] = ..., command_result: _Optional[_Union[CommandResult, _Mapping]] = ..., heartbeat: _Optional[_Union[HeartBeat, _Mapping]] = ...) -> None: ...

class GatewayToConnectorMessage(_message.Message):
    __slots__ = ("message_id", "sent_at", "handshake_ack", "subscribe", "unsubscribe", "error")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_ACK_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIBE_FIELD_NUMBER: _ClassVar[int]
    UNSUBSCRIBE_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    handshake_ack: HandshakeAck
    subscribe: SubscribeDevice
    unsubscribe: UnsubscribeDevice
    error: GatewayError
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., handshake_ack: _Optional[_Union[HandshakeAck, _Mapping]] = ..., subscribe: _Optional[_Union[SubscribeDevice, _Mapping]] = ..., unsubscribe: _Optional[_Union[UnsubscribeDevice, _Mapping]] = ..., error: _Optional[_Union[GatewayError, _Mapping]] = ...) -> None: ...
