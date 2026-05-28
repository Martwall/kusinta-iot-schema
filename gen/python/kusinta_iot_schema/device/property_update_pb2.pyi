import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from identity import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class PropertyUpdate(_message.Message):
    __slots__ = ("device_id", "attribute_name", "int_value", "uint_value", "bool_value", "float_value", "string_value", "bytes_value", "timestamp", "cluster_id_hex")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_NAME_FIELD_NUMBER: _ClassVar[int]
    INT_VALUE_FIELD_NUMBER: _ClassVar[int]
    UINT_VALUE_FIELD_NUMBER: _ClassVar[int]
    BOOL_VALUE_FIELD_NUMBER: _ClassVar[int]
    FLOAT_VALUE_FIELD_NUMBER: _ClassVar[int]
    STRING_VALUE_FIELD_NUMBER: _ClassVar[int]
    BYTES_VALUE_FIELD_NUMBER: _ClassVar[int]
    TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_HEX_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    attribute_name: str
    int_value: int
    uint_value: int
    bool_value: bool
    float_value: float
    string_value: str
    bytes_value: bytes
    timestamp: _timestamp_pb2.Timestamp
    cluster_id_hex: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., attribute_name: _Optional[str] = ..., int_value: _Optional[int] = ..., uint_value: _Optional[int] = ..., bool_value: bool = ..., float_value: _Optional[float] = ..., string_value: _Optional[str] = ..., bytes_value: _Optional[bytes] = ..., timestamp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., cluster_id_hex: _Optional[str] = ...) -> None: ...

class PropertyUpdateBatch(_message.Message):
    __slots__ = ("updates", "batch_timestamp")
    UPDATES_FIELD_NUMBER: _ClassVar[int]
    BATCH_TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    updates: _containers.RepeatedCompositeFieldContainer[PropertyUpdate]
    batch_timestamp: _timestamp_pb2.Timestamp
    def __init__(self, updates: _Optional[_Iterable[_Union[PropertyUpdate, _Mapping]]] = ..., batch_timestamp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
