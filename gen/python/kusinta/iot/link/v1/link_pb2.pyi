import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class LinkFunction(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    LINK_FUNCTION_UNSPECIFIED: _ClassVar[LinkFunction]
    LINK_FUNCTION_CLIMATE_LEAD: _ClassVar[LinkFunction]
    LINK_FUNCTION_WINDOW_STATE: _ClassVar[LinkFunction]
    LINK_FUNCTION_REMOTE_CONTROL: _ClassVar[LinkFunction]

class LinkDirection(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    LINK_DIRECTION_UNSPECIFIED: _ClassVar[LinkDirection]
    LINK_DIRECTION_SOURCE: _ClassVar[LinkDirection]
    LINK_DIRECTION_TARGET: _ClassVar[LinkDirection]

class LinkMode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    LINK_MODE_UNSPECIFIED: _ClassVar[LinkMode]
    LINK_MODE_HARD: _ClassVar[LinkMode]
    LINK_MODE_SOFT: _ClassVar[LinkMode]

class LinkState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    LINK_STATE_UNSPECIFIED: _ClassVar[LinkState]
    LINK_STATE_ACTIVE: _ClassVar[LinkState]
    LINK_STATE_BROKEN: _ClassVar[LinkState]
    LINK_STATE_UNKNOWN: _ClassVar[LinkState]
LINK_FUNCTION_UNSPECIFIED: LinkFunction
LINK_FUNCTION_CLIMATE_LEAD: LinkFunction
LINK_FUNCTION_WINDOW_STATE: LinkFunction
LINK_FUNCTION_REMOTE_CONTROL: LinkFunction
LINK_DIRECTION_UNSPECIFIED: LinkDirection
LINK_DIRECTION_SOURCE: LinkDirection
LINK_DIRECTION_TARGET: LinkDirection
LINK_MODE_UNSPECIFIED: LinkMode
LINK_MODE_HARD: LinkMode
LINK_MODE_SOFT: LinkMode
LINK_STATE_UNSPECIFIED: LinkState
LINK_STATE_ACTIVE: LinkState
LINK_STATE_BROKEN: LinkState
LINK_STATE_UNKNOWN: LinkState

class DeviceLink(_message.Message):
    __slots__ = ("link_id", "sender", "receiver", "function", "mode", "state", "created_at", "state_detail")
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    SENDER_FIELD_NUMBER: _ClassVar[int]
    RECEIVER_FIELD_NUMBER: _ClassVar[int]
    FUNCTION_FIELD_NUMBER: _ClassVar[int]
    MODE_FIELD_NUMBER: _ClassVar[int]
    STATE_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    STATE_DETAIL_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    sender: _identity_pb2.DeviceId
    receiver: _identity_pb2.DeviceId
    function: LinkFunction
    mode: LinkMode
    state: LinkState
    created_at: _timestamp_pb2.Timestamp
    state_detail: str
    def __init__(self, link_id: _Optional[str] = ..., sender: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., receiver: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., function: _Optional[_Union[LinkFunction, str]] = ..., mode: _Optional[_Union[LinkMode, str]] = ..., state: _Optional[_Union[LinkState, str]] = ..., created_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., state_detail: _Optional[str] = ...) -> None: ...

class LinkCapability(_message.Message):
    __slots__ = ("function", "direction", "supported_modes", "attribute", "label")
    FUNCTION_FIELD_NUMBER: _ClassVar[int]
    DIRECTION_FIELD_NUMBER: _ClassVar[int]
    SUPPORTED_MODES_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_FIELD_NUMBER: _ClassVar[int]
    LABEL_FIELD_NUMBER: _ClassVar[int]
    function: LinkFunction
    direction: LinkDirection
    supported_modes: _containers.RepeatedScalarFieldContainer[LinkMode]
    attribute: _acl_pb2.AttributeRef
    label: str
    def __init__(self, function: _Optional[_Union[LinkFunction, str]] = ..., direction: _Optional[_Union[LinkDirection, str]] = ..., supported_modes: _Optional[_Iterable[_Union[LinkMode, str]]] = ..., attribute: _Optional[_Union[_acl_pb2.AttributeRef, _Mapping]] = ..., label: _Optional[str] = ...) -> None: ...

class DeviceLinkList(_message.Message):
    __slots__ = ("links",)
    LINKS_FIELD_NUMBER: _ClassVar[int]
    links: _containers.RepeatedCompositeFieldContainer[DeviceLink]
    def __init__(self, links: _Optional[_Iterable[_Union[DeviceLink, _Mapping]]] = ...) -> None: ...
