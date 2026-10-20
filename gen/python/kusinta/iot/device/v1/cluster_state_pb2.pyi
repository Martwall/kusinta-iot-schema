from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class WritePersistence(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    WRITE_PERSISTENCE_UNSPECIFIED: _ClassVar[WritePersistence]
    WRITE_PERSISTENCE_STICKY: _ClassVar[WritePersistence]
    WRITE_PERSISTENCE_LEASED: _ClassVar[WritePersistence]

class ReadLatency(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    READ_LATENCY_UNSPECIFIED: _ClassVar[ReadLatency]
    READ_LATENCY_REAL_TIME: _ClassVar[ReadLatency]
    READ_LATENCY_DELAYED: _ClassVar[ReadLatency]
WRITE_PERSISTENCE_UNSPECIFIED: WritePersistence
WRITE_PERSISTENCE_STICKY: WritePersistence
WRITE_PERSISTENCE_LEASED: WritePersistence
READ_LATENCY_UNSPECIFIED: ReadLatency
READ_LATENCY_REAL_TIME: ReadLatency
READ_LATENCY_DELAYED: ReadLatency

class NullValue(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class AttributeValue(_message.Message):
    __slots__ = ("bool_value", "int_value", "uint_value", "double_value", "string_value", "bytes_value", "list_value", "struct_value", "null_value")
    BOOL_VALUE_FIELD_NUMBER: _ClassVar[int]
    INT_VALUE_FIELD_NUMBER: _ClassVar[int]
    UINT_VALUE_FIELD_NUMBER: _ClassVar[int]
    DOUBLE_VALUE_FIELD_NUMBER: _ClassVar[int]
    STRING_VALUE_FIELD_NUMBER: _ClassVar[int]
    BYTES_VALUE_FIELD_NUMBER: _ClassVar[int]
    LIST_VALUE_FIELD_NUMBER: _ClassVar[int]
    STRUCT_VALUE_FIELD_NUMBER: _ClassVar[int]
    NULL_VALUE_FIELD_NUMBER: _ClassVar[int]
    bool_value: bool
    int_value: int
    uint_value: int
    double_value: float
    string_value: str
    bytes_value: bytes
    list_value: AttributeValueList
    struct_value: AttributeValueStruct
    null_value: NullValue
    def __init__(self, bool_value: _Optional[bool] = ..., int_value: _Optional[int] = ..., uint_value: _Optional[int] = ..., double_value: _Optional[float] = ..., string_value: _Optional[str] = ..., bytes_value: _Optional[bytes] = ..., list_value: _Optional[_Union[AttributeValueList, _Mapping]] = ..., struct_value: _Optional[_Union[AttributeValueStruct, _Mapping]] = ..., null_value: _Optional[_Union[NullValue, _Mapping]] = ...) -> None: ...

class AttributeValueList(_message.Message):
    __slots__ = ("values",)
    VALUES_FIELD_NUMBER: _ClassVar[int]
    values: _containers.RepeatedCompositeFieldContainer[AttributeValue]
    def __init__(self, values: _Optional[_Iterable[_Union[AttributeValue, _Mapping]]] = ...) -> None: ...

class AttributeValueStruct(_message.Message):
    __slots__ = ("fields",)
    class FieldsEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: int
        value: AttributeValue
        def __init__(self, key: _Optional[int] = ..., value: _Optional[_Union[AttributeValue, _Mapping]] = ...) -> None: ...
    FIELDS_FIELD_NUMBER: _ClassVar[int]
    fields: _containers.MessageMap[int, AttributeValue]
    def __init__(self, fields: _Optional[_Mapping[int, AttributeValue]] = ...) -> None: ...

class AttributeState(_message.Message):
    __slots__ = ("attribute_id", "value")
    ATTRIBUTE_ID_FIELD_NUMBER: _ClassVar[int]
    VALUE_FIELD_NUMBER: _ClassVar[int]
    attribute_id: int
    value: AttributeValue
    def __init__(self, attribute_id: _Optional[int] = ..., value: _Optional[_Union[AttributeValue, _Mapping]] = ...) -> None: ...

class ClusterState(_message.Message):
    __slots__ = ("cluster_id", "cluster_revision", "feature_map", "attributes", "accepted_command_ids", "attribute_ids", "attribute_steps", "attribute_write_behaviours", "attribute_read_latencies")
    class AttributeStepsEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: int
        value: int
        def __init__(self, key: _Optional[int] = ..., value: _Optional[int] = ...) -> None: ...
    class AttributeWriteBehavioursEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: int
        value: AttributeWriteBehaviour
        def __init__(self, key: _Optional[int] = ..., value: _Optional[_Union[AttributeWriteBehaviour, _Mapping]] = ...) -> None: ...
    class AttributeReadLatenciesEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: int
        value: ReadLatency
        def __init__(self, key: _Optional[int] = ..., value: _Optional[_Union[ReadLatency, str]] = ...) -> None: ...
    CLUSTER_ID_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_REVISION_FIELD_NUMBER: _ClassVar[int]
    FEATURE_MAP_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTES_FIELD_NUMBER: _ClassVar[int]
    ACCEPTED_COMMAND_IDS_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_IDS_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_STEPS_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_WRITE_BEHAVIOURS_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_READ_LATENCIES_FIELD_NUMBER: _ClassVar[int]
    cluster_id: int
    cluster_revision: int
    feature_map: int
    attributes: _containers.RepeatedCompositeFieldContainer[AttributeState]
    accepted_command_ids: _containers.RepeatedScalarFieldContainer[int]
    attribute_ids: _containers.RepeatedScalarFieldContainer[int]
    attribute_steps: _containers.ScalarMap[int, int]
    attribute_write_behaviours: _containers.MessageMap[int, AttributeWriteBehaviour]
    attribute_read_latencies: _containers.ScalarMap[int, ReadLatency]
    def __init__(self, cluster_id: _Optional[int] = ..., cluster_revision: _Optional[int] = ..., feature_map: _Optional[int] = ..., attributes: _Optional[_Iterable[_Union[AttributeState, _Mapping]]] = ..., accepted_command_ids: _Optional[_Iterable[int]] = ..., attribute_ids: _Optional[_Iterable[int]] = ..., attribute_steps: _Optional[_Mapping[int, int]] = ..., attribute_write_behaviours: _Optional[_Mapping[int, AttributeWriteBehaviour]] = ..., attribute_read_latencies: _Optional[_Mapping[int, ReadLatency]] = ...) -> None: ...

class AttributeWriteBehaviour(_message.Message):
    __slots__ = ("persistence", "min_lease_seconds", "max_lease_seconds", "renewal_restarts_lease", "rest_value", "min_write_interval_seconds")
    PERSISTENCE_FIELD_NUMBER: _ClassVar[int]
    MIN_LEASE_SECONDS_FIELD_NUMBER: _ClassVar[int]
    MAX_LEASE_SECONDS_FIELD_NUMBER: _ClassVar[int]
    RENEWAL_RESTARTS_LEASE_FIELD_NUMBER: _ClassVar[int]
    REST_VALUE_FIELD_NUMBER: _ClassVar[int]
    MIN_WRITE_INTERVAL_SECONDS_FIELD_NUMBER: _ClassVar[int]
    persistence: WritePersistence
    min_lease_seconds: int
    max_lease_seconds: int
    renewal_restarts_lease: bool
    rest_value: AttributeValue
    min_write_interval_seconds: int
    def __init__(self, persistence: _Optional[_Union[WritePersistence, str]] = ..., min_lease_seconds: _Optional[int] = ..., max_lease_seconds: _Optional[int] = ..., renewal_restarts_lease: _Optional[bool] = ..., rest_value: _Optional[_Union[AttributeValue, _Mapping]] = ..., min_write_interval_seconds: _Optional[int] = ...) -> None: ...
