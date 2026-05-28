from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from typing import ClassVar as _ClassVar

DESCRIPTOR: _descriptor.FileDescriptor

class Role(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROLE_UNSPECIFIED: _ClassVar[Role]
    RESIDENT: _ClassVar[Role]
    PROPERTY_OWNER: _ClassVar[Role]
    TECHNICIAN: _ClassVar[Role]
    GATEWAY_ADMIN: _ClassVar[Role]

class PermissionAction(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PERMISSION_ACTION_UNSPECIFIED: _ClassVar[PermissionAction]
    READ: _ClassVar[PermissionAction]
    WRITE: _ClassVar[PermissionAction]
    OBSERVE: _ClassVar[PermissionAction]
    INVOKE: _ClassVar[PermissionAction]
ROLE_UNSPECIFIED: Role
RESIDENT: Role
PROPERTY_OWNER: Role
TECHNICIAN: Role
GATEWAY_ADMIN: Role
PERMISSION_ACTION_UNSPECIFIED: PermissionAction
READ: PermissionAction
WRITE: PermissionAction
OBSERVE: PermissionAction
INVOKE: PermissionAction
