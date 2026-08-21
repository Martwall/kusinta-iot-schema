from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

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
    __slots__ = ("cluster_id", "cluster_revision", "feature_map", "attributes", "accepted_command_ids")
    CLUSTER_ID_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_REVISION_FIELD_NUMBER: _ClassVar[int]
    FEATURE_MAP_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTES_FIELD_NUMBER: _ClassVar[int]
    ACCEPTED_COMMAND_IDS_FIELD_NUMBER: _ClassVar[int]
    cluster_id: int
    cluster_revision: int
    feature_map: int
    attributes: _containers.RepeatedCompositeFieldContainer[AttributeState]
    accepted_command_ids: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, cluster_id: _Optional[int] = ..., cluster_revision: _Optional[int] = ..., feature_map: _Optional[int] = ..., attributes: _Optional[_Iterable[_Union[AttributeState, _Mapping]]] = ..., accepted_command_ids: _Optional[_Iterable[int]] = ...) -> None: ...
