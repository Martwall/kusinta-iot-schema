from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

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

class ConnectorKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CONNECTOR_KIND_UNSPECIFIED: _ClassVar[ConnectorKind]
    CONNECTOR_KIND_HOMEMATIC_IP: _ClassVar[ConnectorKind]
    CONNECTOR_KIND_LORAWAN: _ClassVar[ConnectorKind]

class BackendHealthState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    BACKEND_HEALTH_STATE_UNSPECIFIED: _ClassVar[BackendHealthState]
    BACKEND_HEALTH_STATE_OK: _ClassVar[BackendHealthState]
    BACKEND_HEALTH_STATE_FAILING: _ClassVar[BackendHealthState]

class BackendFailureReason(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    BACKEND_FAILURE_REASON_UNSPECIFIED: _ClassVar[BackendFailureReason]
    BACKEND_FAILURE_REASON_UNREACHABLE: _ClassVar[BackendFailureReason]
    BACKEND_FAILURE_REASON_AUTH_FAILED: _ClassVar[BackendFailureReason]
    BACKEND_FAILURE_REASON_BACKEND_ERROR: _ClassVar[BackendFailureReason]
    BACKEND_FAILURE_REASON_MISCONFIGURED: _ClassVar[BackendFailureReason]
    BACKEND_FAILURE_REASON_INTERNAL: _ClassVar[BackendFailureReason]
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
CONNECTOR_KIND_UNSPECIFIED: ConnectorKind
CONNECTOR_KIND_HOMEMATIC_IP: ConnectorKind
CONNECTOR_KIND_LORAWAN: ConnectorKind
BACKEND_HEALTH_STATE_UNSPECIFIED: BackendHealthState
BACKEND_HEALTH_STATE_OK: BackendHealthState
BACKEND_HEALTH_STATE_FAILING: BackendHealthState
BACKEND_FAILURE_REASON_UNSPECIFIED: BackendFailureReason
BACKEND_FAILURE_REASON_UNREACHABLE: BackendFailureReason
BACKEND_FAILURE_REASON_AUTH_FAILED: BackendFailureReason
BACKEND_FAILURE_REASON_BACKEND_ERROR: BackendFailureReason
BACKEND_FAILURE_REASON_MISCONFIGURED: BackendFailureReason
BACKEND_FAILURE_REASON_INTERNAL: BackendFailureReason

class AssetOwner(_message.Message):
    __slots__ = ("owner_organisation", "household_home_id")
    OWNER_ORGANISATION_FIELD_NUMBER: _ClassVar[int]
    HOUSEHOLD_HOME_ID_FIELD_NUMBER: _ClassVar[int]
    owner_organisation: bool
    household_home_id: _identity_pb2.SpaceId
    def __init__(self, owner_organisation: _Optional[bool] = ..., household_home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

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

class BackendHealth(_message.Message):
    __slots__ = ("state", "reason")
    STATE_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    state: BackendHealthState
    reason: BackendFailureReason
    def __init__(self, state: _Optional[_Union[BackendHealthState, str]] = ..., reason: _Optional[_Union[BackendFailureReason, str]] = ...) -> None: ...
