import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class AttributeRef(_message.Message):
    __slots__ = ("attribute_name", "cluster_id", "endpoint_id")
    ATTRIBUTE_NAME_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_FIELD_NUMBER: _ClassVar[int]
    ENDPOINT_ID_FIELD_NUMBER: _ClassVar[int]
    attribute_name: str
    cluster_id: int
    endpoint_id: int
    def __init__(self, attribute_name: _Optional[str] = ..., cluster_id: _Optional[int] = ..., endpoint_id: _Optional[int] = ...) -> None: ...

class PropertyConstraint(_message.Message):
    __slots__ = ("attribute", "int_max", "int_min", "uint_max", "uint_min")
    ATTRIBUTE_FIELD_NUMBER: _ClassVar[int]
    INT_MAX_FIELD_NUMBER: _ClassVar[int]
    INT_MIN_FIELD_NUMBER: _ClassVar[int]
    UINT_MAX_FIELD_NUMBER: _ClassVar[int]
    UINT_MIN_FIELD_NUMBER: _ClassVar[int]
    attribute: AttributeRef
    int_max: int
    int_min: int
    uint_max: int
    uint_min: int
    def __init__(self, attribute: _Optional[_Union[AttributeRef, _Mapping]] = ..., int_max: _Optional[int] = ..., int_min: _Optional[int] = ..., uint_max: _Optional[int] = ..., uint_min: _Optional[int] = ...) -> None: ...

class DeviceAcl(_message.Message):
    __slots__ = ("device_id", "user_id", "role", "allowed_actions", "allowed_attribute_refs", "property_constraints")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    ROLE_FIELD_NUMBER: _ClassVar[int]
    ALLOWED_ACTIONS_FIELD_NUMBER: _ClassVar[int]
    ALLOWED_ATTRIBUTE_REFS_FIELD_NUMBER: _ClassVar[int]
    PROPERTY_CONSTRAINTS_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    user_id: _identity_pb2.UserId
    role: _roles_pb2.Role
    allowed_actions: _containers.RepeatedScalarFieldContainer[_roles_pb2.PermissionAction]
    allowed_attribute_refs: _containers.RepeatedCompositeFieldContainer[AttributeRef]
    property_constraints: _containers.RepeatedCompositeFieldContainer[PropertyConstraint]
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., role: _Optional[_Union[_roles_pb2.Role, str]] = ..., allowed_actions: _Optional[_Iterable[_Union[_roles_pb2.PermissionAction, str]]] = ..., allowed_attribute_refs: _Optional[_Iterable[_Union[AttributeRef, _Mapping]]] = ..., property_constraints: _Optional[_Iterable[_Union[PropertyConstraint, _Mapping]]] = ...) -> None: ...

class EffectivePermissions(_message.Message):
    __slots__ = ("user_id", "gateway_id", "device_acls", "valid_at")
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_ID_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ACLS_FIELD_NUMBER: _ClassVar[int]
    VALID_AT_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    gateway_id: _identity_pb2.GatewayId
    device_acls: _containers.RepeatedCompositeFieldContainer[DeviceAcl]
    valid_at: _timestamp_pb2.Timestamp
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., gateway_id: _Optional[_Union[_identity_pb2.GatewayId, _Mapping]] = ..., device_acls: _Optional[_Iterable[_Union[DeviceAcl, _Mapping]]] = ..., valid_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
