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
    SPACE_TYPE_BUILDING: _ClassVar[SpaceType]
    SPACE_TYPE_FLOOR: _ClassVar[SpaceType]
    SPACE_TYPE_APARTMENT: _ClassVar[SpaceType]
    SPACE_TYPE_ROOM: _ClassVar[SpaceType]
    SPACE_TYPE_COMMON_AREA: _ClassVar[SpaceType]

class DeviceOwnershipType(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    DEVICE_OWNERSHIP_TYPE_UNSPECIFIED: _ClassVar[DeviceOwnershipType]
    DEVICE_OWNERSHIP_TYPE_COMPANY: _ClassVar[DeviceOwnershipType]
    DEVICE_OWNERSHIP_TYPE_RESIDENT: _ClassVar[DeviceOwnershipType]

class DeviceLifecycleState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    DEVICE_LIFECYCLE_STATE_UNSPECIFIED: _ClassVar[DeviceLifecycleState]
    DEVICE_LIFECYCLE_STATE_PENDING_CLAIM: _ClassVar[DeviceLifecycleState]
    DEVICE_LIFECYCLE_STATE_OWNED: _ClassVar[DeviceLifecycleState]
    DEVICE_LIFECYCLE_STATE_PENDING_TRANSFER: _ClassVar[DeviceLifecycleState]
    DEVICE_LIFECYCLE_STATE_BUILDING_POOL: _ClassVar[DeviceLifecycleState]

class ConnectorTransport(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CONNECTOR_TRANSPORT_UNSPECIFIED: _ClassVar[ConnectorTransport]
    CONNECTOR_TRANSPORT_UNIX_SOCKET: _ClassVar[ConnectorTransport]
    CONNECTOR_TRANSPORT_MTLS_TCP: _ClassVar[ConnectorTransport]
SPACE_TYPE_UNSPECIFIED: SpaceType
SPACE_TYPE_BUILDING: SpaceType
SPACE_TYPE_FLOOR: SpaceType
SPACE_TYPE_APARTMENT: SpaceType
SPACE_TYPE_ROOM: SpaceType
SPACE_TYPE_COMMON_AREA: SpaceType
DEVICE_OWNERSHIP_TYPE_UNSPECIFIED: DeviceOwnershipType
DEVICE_OWNERSHIP_TYPE_COMPANY: DeviceOwnershipType
DEVICE_OWNERSHIP_TYPE_RESIDENT: DeviceOwnershipType
DEVICE_LIFECYCLE_STATE_UNSPECIFIED: DeviceLifecycleState
DEVICE_LIFECYCLE_STATE_PENDING_CLAIM: DeviceLifecycleState
DEVICE_LIFECYCLE_STATE_OWNED: DeviceLifecycleState
DEVICE_LIFECYCLE_STATE_PENDING_TRANSFER: DeviceLifecycleState
DEVICE_LIFECYCLE_STATE_BUILDING_POOL: DeviceLifecycleState
CONNECTOR_TRANSPORT_UNSPECIFIED: ConnectorTransport
CONNECTOR_TRANSPORT_UNIX_SOCKET: ConnectorTransport
CONNECTOR_TRANSPORT_MTLS_TCP: ConnectorTransport

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
