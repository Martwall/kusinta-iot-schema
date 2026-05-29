from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Space(_message.Message):
    __slots__ = ("space_id", "space_type", "name", "description", "floor", "parent_space_id", "sub_space_ids", "device_ids", "resident_user_id", "tenant_id", "gateway_id")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SUB_SPACE_IDS_FIELD_NUMBER: _ClassVar[int]
    DEVICE_IDS_FIELD_NUMBER: _ClassVar[int]
    RESIDENT_USER_ID_FIELD_NUMBER: _ClassVar[int]
    TENANT_ID_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    sub_space_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.SpaceId]
    device_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    resident_user_id: _identity_pb2.UserId
    tenant_id: _identity_pb2.TenantId
    gateway_id: _identity_pb2.GatewayId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., sub_space_ids: _Optional[_Iterable[_Union[_identity_pb2.SpaceId, _Mapping]]] = ..., device_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ..., resident_user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., tenant_id: _Optional[_Union[_identity_pb2.TenantId, _Mapping]] = ..., gateway_id: _Optional[_Union[_identity_pb2.GatewayId, _Mapping]] = ...) -> None: ...
