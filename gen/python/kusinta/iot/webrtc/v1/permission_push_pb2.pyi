from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class LivePermissionUpdate(_message.Message):
    __slots__ = ("new_permissions", "added_devices", "removed_devices", "change_reason")
    NEW_PERMISSIONS_FIELD_NUMBER: _ClassVar[int]
    ADDED_DEVICES_FIELD_NUMBER: _ClassVar[int]
    REMOVED_DEVICES_FIELD_NUMBER: _ClassVar[int]
    CHANGE_REASON_FIELD_NUMBER: _ClassVar[int]
    new_permissions: _acl_pb2.EffectivePermissions
    added_devices: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    removed_devices: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    change_reason: str
    def __init__(self, new_permissions: _Optional[_Union[_acl_pb2.EffectivePermissions, _Mapping]] = ..., added_devices: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ..., removed_devices: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ..., change_reason: _Optional[str] = ...) -> None: ...
