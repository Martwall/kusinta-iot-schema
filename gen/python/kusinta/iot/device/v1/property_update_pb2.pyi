import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ValueProvenance(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    VALUE_PROVENANCE_UNSPECIFIED: _ClassVar[ValueProvenance]
    VALUE_PROVENANCE_CONFIRMED: _ClassVar[ValueProvenance]
    VALUE_PROVENANCE_OPTIMISTIC: _ClassVar[ValueProvenance]
    VALUE_PROVENANCE_CORRECTED: _ClassVar[ValueProvenance]
VALUE_PROVENANCE_UNSPECIFIED: ValueProvenance
VALUE_PROVENANCE_CONFIRMED: ValueProvenance
VALUE_PROVENANCE_OPTIMISTIC: ValueProvenance
VALUE_PROVENANCE_CORRECTED: ValueProvenance

class PropertyUpdate(_message.Message):
    __slots__ = ("device_id", "attribute_name", "int_value", "uint_value", "bool_value", "float_value", "string_value", "bytes_value", "timestamp", "provenance", "endpoint_id", "vendor_extension", "cluster_id")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_NAME_FIELD_NUMBER: _ClassVar[int]
    INT_VALUE_FIELD_NUMBER: _ClassVar[int]
    UINT_VALUE_FIELD_NUMBER: _ClassVar[int]
    BOOL_VALUE_FIELD_NUMBER: _ClassVar[int]
    FLOAT_VALUE_FIELD_NUMBER: _ClassVar[int]
    STRING_VALUE_FIELD_NUMBER: _ClassVar[int]
    BYTES_VALUE_FIELD_NUMBER: _ClassVar[int]
    TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    PROVENANCE_FIELD_NUMBER: _ClassVar[int]
    ENDPOINT_ID_FIELD_NUMBER: _ClassVar[int]
    VENDOR_EXTENSION_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    attribute_name: str
    int_value: int
    uint_value: int
    bool_value: bool
    float_value: float
    string_value: str
    bytes_value: bytes
    timestamp: _timestamp_pb2.Timestamp
    provenance: ValueProvenance
    endpoint_id: int
    vendor_extension: str
    cluster_id: int
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., attribute_name: _Optional[str] = ..., int_value: _Optional[int] = ..., uint_value: _Optional[int] = ..., bool_value: _Optional[bool] = ..., float_value: _Optional[float] = ..., string_value: _Optional[str] = ..., bytes_value: _Optional[bytes] = ..., timestamp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., provenance: _Optional[_Union[ValueProvenance, str]] = ..., endpoint_id: _Optional[int] = ..., vendor_extension: _Optional[str] = ..., cluster_id: _Optional[int] = ...) -> None: ...

class PropertyUpdateBatch(_message.Message):
    __slots__ = ("updates", "batch_timestamp")
    UPDATES_FIELD_NUMBER: _ClassVar[int]
    BATCH_TIMESTAMP_FIELD_NUMBER: _ClassVar[int]
    updates: _containers.RepeatedCompositeFieldContainer[PropertyUpdate]
    batch_timestamp: _timestamp_pb2.Timestamp
    def __init__(self, updates: _Optional[_Iterable[_Union[PropertyUpdate, _Mapping]]] = ..., batch_timestamp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
