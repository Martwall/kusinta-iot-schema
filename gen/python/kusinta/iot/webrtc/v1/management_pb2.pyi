from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.space.v1 import space_pb2 as _space_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class CreateSpace(_message.Message):
    __slots__ = ("space_type", "name", "description", "floor", "parent_space_id")
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    def __init__(self, space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class UpdateSpace(_message.Message):
    __slots__ = ("space_id", "space_type", "name", "description", "floor", "parent_space_id", "detach")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    DETACH_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    detach: bool
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., detach: _Optional[bool] = ...) -> None: ...

class DeleteSpace(_message.Message):
    __slots__ = ("space_id", "cascade")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    CASCADE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    cascade: bool
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., cascade: _Optional[bool] = ...) -> None: ...

class AssignUserToSpace(_message.Message):
    __slots__ = ("space_id", "user_id")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    user_id: _identity_pb2.UserId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class RemoveUserFromSpace(_message.Message):
    __slots__ = ("space_id", "user_id")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    user_id: _identity_pb2.UserId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class PlaceDeviceInSpace(_message.Message):
    __slots__ = ("device_id", "space_id")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    space_id: _identity_pb2.SpaceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class RemoveDeviceFromSpace(_message.Message):
    __slots__ = ("device_id", "space_id")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    space_id: _identity_pb2.SpaceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class ClaimDevice(_message.Message):
    __slots__ = ("device_id", "ownership", "initial_space_id", "possession_proof")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    OWNERSHIP_FIELD_NUMBER: _ClassVar[int]
    INITIAL_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    POSSESSION_PROOF_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    ownership: _types_pb2.DeviceOwnershipType
    initial_space_id: _identity_pb2.SpaceId
    possession_proof: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., ownership: _Optional[_Union[_types_pb2.DeviceOwnershipType, str]] = ..., initial_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., possession_proof: _Optional[str] = ...) -> None: ...

class ReleaseDevice(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class ListSpaces(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class SpaceTree(_message.Message):
    __slots__ = ("spaces",)
    SPACES_FIELD_NUMBER: _ClassVar[int]
    spaces: _containers.RepeatedCompositeFieldContainer[_space_pb2.Space]
    def __init__(self, spaces: _Optional[_Iterable[_Union[_space_pb2.Space, _Mapping]]] = ...) -> None: ...

class ManagementAck(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class ManagementRequest(_message.Message):
    __slots__ = ("create_space", "update_space", "delete_space", "assign_user_to_space", "remove_user_from_space", "place_device_in_space", "remove_device_from_space", "claim_device", "release_device", "list_spaces")
    CREATE_SPACE_FIELD_NUMBER: _ClassVar[int]
    UPDATE_SPACE_FIELD_NUMBER: _ClassVar[int]
    DELETE_SPACE_FIELD_NUMBER: _ClassVar[int]
    ASSIGN_USER_TO_SPACE_FIELD_NUMBER: _ClassVar[int]
    REMOVE_USER_FROM_SPACE_FIELD_NUMBER: _ClassVar[int]
    PLACE_DEVICE_IN_SPACE_FIELD_NUMBER: _ClassVar[int]
    REMOVE_DEVICE_FROM_SPACE_FIELD_NUMBER: _ClassVar[int]
    CLAIM_DEVICE_FIELD_NUMBER: _ClassVar[int]
    RELEASE_DEVICE_FIELD_NUMBER: _ClassVar[int]
    LIST_SPACES_FIELD_NUMBER: _ClassVar[int]
    create_space: CreateSpace
    update_space: UpdateSpace
    delete_space: DeleteSpace
    assign_user_to_space: AssignUserToSpace
    remove_user_from_space: RemoveUserFromSpace
    place_device_in_space: PlaceDeviceInSpace
    remove_device_from_space: RemoveDeviceFromSpace
    claim_device: ClaimDevice
    release_device: ReleaseDevice
    list_spaces: ListSpaces
    def __init__(self, create_space: _Optional[_Union[CreateSpace, _Mapping]] = ..., update_space: _Optional[_Union[UpdateSpace, _Mapping]] = ..., delete_space: _Optional[_Union[DeleteSpace, _Mapping]] = ..., assign_user_to_space: _Optional[_Union[AssignUserToSpace, _Mapping]] = ..., remove_user_from_space: _Optional[_Union[RemoveUserFromSpace, _Mapping]] = ..., place_device_in_space: _Optional[_Union[PlaceDeviceInSpace, _Mapping]] = ..., remove_device_from_space: _Optional[_Union[RemoveDeviceFromSpace, _Mapping]] = ..., claim_device: _Optional[_Union[ClaimDevice, _Mapping]] = ..., release_device: _Optional[_Union[ReleaseDevice, _Mapping]] = ..., list_spaces: _Optional[_Union[ListSpaces, _Mapping]] = ...) -> None: ...
