import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.device.v1 import cluster_state_pb2 as _cluster_state_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class EventPriority(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    EVENT_PRIORITY_UNSPECIFIED: _ClassVar[EventPriority]
    EVENT_PRIORITY_DEBUG: _ClassVar[EventPriority]
    EVENT_PRIORITY_INFO: _ClassVar[EventPriority]
    EVENT_PRIORITY_CRITICAL: _ClassVar[EventPriority]
EVENT_PRIORITY_UNSPECIFIED: EventPriority
EVENT_PRIORITY_DEBUG: EventPriority
EVENT_PRIORITY_INFO: EventPriority
EVENT_PRIORITY_CRITICAL: EventPriority

class DeviceEvent(_message.Message):
    __slots__ = ("device_id", "endpoint_id", "cluster_id", "event_id", "event_number", "timestamp", "priority", "data")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ENDPOINT_ID_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_FIELD_NUMBER: _ClassVar[int]
    EVENT_ID_FIELD_NUMBER: _ClassVar[int]
    EVENT_NUMBER_FIELD_NUMBER: _ClassVar[int]
    TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    PRIORITY_FIELD_NUMBER: _ClassVar[int]
    DATA_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    endpoint_id: int
    cluster_id: int
    event_id: int
    event_number: int
    timestamp: _timestamp_pb2.Timestamp
    priority: EventPriority
    data: _cluster_state_pb2.AttributeValue
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., endpoint_id: _Optional[int] = ..., cluster_id: _Optional[int] = ..., event_id: _Optional[int] = ..., event_number: _Optional[int] = ..., timestamp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., priority: _Optional[_Union[EventPriority, str]] = ..., data: _Optional[_Union[_cluster_state_pb2.AttributeValue, _Mapping]] = ...) -> None: ...

class DeviceEventBatch(_message.Message):
    __slots__ = ("events", "received_at")
    EVENTS_FIELD_NUMBER: _ClassVar[int]
    RECEIVED_AT_FIELD_NUMBER: _ClassVar[int]
    events: _containers.RepeatedCompositeFieldContainer[DeviceEvent]
    received_at: _timestamp_pb2.Timestamp
    def __init__(self, events: _Optional[_Iterable[_Union[DeviceEvent, _Mapping]]] = ..., received_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
