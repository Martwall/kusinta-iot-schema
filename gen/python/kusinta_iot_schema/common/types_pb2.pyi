from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class SpaceType(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    SPACE_TYPE_UNSPECIFIED: _ClassVar[SpaceType]
    BUILDING: _ClassVar[SpaceType]
    FLOOR: _ClassVar[SpaceType]
    APARTMENT: _ClassVar[SpaceType]
    ROOM: _ClassVar[SpaceType]
    COMMON_AREA: _ClassVar[SpaceType]

class DeviceOwnershipType(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    DEVICE_OWNERSHIP_TYPE_UNSPECIFIED: _ClassVar[DeviceOwnershipType]
    COMPANY: _ClassVar[DeviceOwnershipType]
    RESIDENT: _ClassVar[DeviceOwnershipType]

class DeviceLifecycleState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    DEVICE_LIFECYCLE_STATE_UNSPECIFIED: _ClassVar[DeviceLifecycleState]
    PENDING_CLAIM: _ClassVar[DeviceLifecycleState]
    OWNED: _ClassVar[DeviceLifecycleState]
    PENDING_TRANSFER: _ClassVar[DeviceLifecycleState]
    BUILDING_POOL: _ClassVar[DeviceLifecycleState]

class ConnectorTransport(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CONNECTOR_TRANSPORT_UNSPECIFIED: _ClassVar[ConnectorTransport]
    UNIX_SOCKET: _ClassVar[ConnectorTransport]
    MTLS_TCP: _ClassVar[ConnectorTransport]
SPACE_TYPE_UNSPECIFIED: SpaceType
BUILDING: SpaceType
FLOOR: SpaceType
APARTMENT: SpaceType
ROOM: SpaceType
COMMON_AREA: SpaceType
DEVICE_OWNERSHIP_TYPE_UNSPECIFIED: DeviceOwnershipType
COMPANY: DeviceOwnershipType
RESIDENT: DeviceOwnershipType
DEVICE_LIFECYCLE_STATE_UNSPECIFIED: DeviceLifecycleState
PENDING_CLAIM: DeviceLifecycleState
OWNED: DeviceLifecycleState
PENDING_TRANSFER: DeviceLifecycleState
BUILDING_POOL: DeviceLifecycleState
CONNECTOR_TRANSPORT_UNSPECIFIED: ConnectorTransport
UNIX_SOCKET: ConnectorTransport
MTLS_TCP: ConnectorTransport

class ErrorDetail(_message.Message):
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
    code: str
    message: str
    metadata: _containers.ScalarMap[str, str]
    def __init__(self, code: _Optional[str] = ..., message: _Optional[str] = ..., metadata: _Optional[_Mapping[str, str]] = ...) -> None: ...
