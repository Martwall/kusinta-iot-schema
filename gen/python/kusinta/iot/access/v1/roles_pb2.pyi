from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from typing import ClassVar as _ClassVar

DESCRIPTOR: _descriptor.FileDescriptor

class Role(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROLE_UNSPECIFIED: _ClassVar[Role]
    ROLE_RESIDENT: _ClassVar[Role]
    ROLE_PROPERTY_OWNER: _ClassVar[Role]
    ROLE_TECHNICIAN: _ClassVar[Role]
    ROLE_GATEWAY_ADMIN: _ClassVar[Role]

class PermissionAction(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PERMISSION_ACTION_UNSPECIFIED: _ClassVar[PermissionAction]
    PERMISSION_ACTION_READ: _ClassVar[PermissionAction]
    PERMISSION_ACTION_WRITE: _ClassVar[PermissionAction]
    PERMISSION_ACTION_OBSERVE: _ClassVar[PermissionAction]
    PERMISSION_ACTION_INVOKE: _ClassVar[PermissionAction]
ROLE_UNSPECIFIED: Role
ROLE_RESIDENT: Role
ROLE_PROPERTY_OWNER: Role
ROLE_TECHNICIAN: Role
ROLE_GATEWAY_ADMIN: Role
PERMISSION_ACTION_UNSPECIFIED: PermissionAction
PERMISSION_ACTION_READ: PermissionAction
PERMISSION_ACTION_WRITE: PermissionAction
PERMISSION_ACTION_OBSERVE: PermissionAction
PERMISSION_ACTION_INVOKE: PermissionAction
