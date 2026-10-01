import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.climate.v1 import climate_pb2 as _climate_pb2
from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.link.v1 import link_pb2 as _link_pb2
from kusinta.iot.space.v1 import space_pb2 as _space_pb2
from kusinta.iot.vendor.lorawan.v1 import lorawan_pb2 as _lorawan_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class CreateSpace(_message.Message):
    __slots__ = ("space_type", "name", "description", "floor", "parent_space_id", "time_zone")
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    TIME_ZONE_FIELD_NUMBER: _ClassVar[int]
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    time_zone: str
    def __init__(self, space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., time_zone: _Optional[str] = ...) -> None: ...

class UpdateSpace(_message.Message):
    __slots__ = ("space_id", "space_type", "name", "description", "floor", "parent_space_id", "detach", "time_zone")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    DETACH_FIELD_NUMBER: _ClassVar[int]
    TIME_ZONE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    detach: bool
    time_zone: str
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., detach: _Optional[bool] = ..., time_zone: _Optional[str] = ...) -> None: ...

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

class ProvisionDevice(_message.Message):
    __slots__ = ("connector_id", "lorawan")
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    LORAWAN_FIELD_NUMBER: _ClassVar[int]
    connector_id: _identity_pb2.ConnectorId
    lorawan: _lorawan_pb2.LorawanProvisioning
    def __init__(self, connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ..., lorawan: _Optional[_Union[_lorawan_pb2.LorawanProvisioning, _Mapping]] = ...) -> None: ...

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

class CreateDeviceLink(_message.Message):
    __slots__ = ("sender", "receiver", "function", "mode", "settings")
    SENDER_FIELD_NUMBER: _ClassVar[int]
    RECEIVER_FIELD_NUMBER: _ClassVar[int]
    FUNCTION_FIELD_NUMBER: _ClassVar[int]
    MODE_FIELD_NUMBER: _ClassVar[int]
    SETTINGS_FIELD_NUMBER: _ClassVar[int]
    sender: _identity_pb2.DeviceId
    receiver: _identity_pb2.DeviceId
    function: _link_pb2.LinkFunction
    mode: _link_pb2.LinkMode
    settings: _link_pb2.LinkSettings
    def __init__(self, sender: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., receiver: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., function: _Optional[_Union[_link_pb2.LinkFunction, str]] = ..., mode: _Optional[_Union[_link_pb2.LinkMode, str]] = ..., settings: _Optional[_Union[_link_pb2.LinkSettings, _Mapping]] = ...) -> None: ...

class RemoveDeviceLink(_message.Message):
    __slots__ = ("link_id",)
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    def __init__(self, link_id: _Optional[str] = ...) -> None: ...

class UpdateDeviceLink(_message.Message):
    __slots__ = ("link_id", "settings")
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    SETTINGS_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    settings: _link_pb2.LinkSettings
    def __init__(self, link_id: _Optional[str] = ..., settings: _Optional[_Union[_link_pb2.LinkSettings, _Mapping]] = ...) -> None: ...

class ListDeviceLinks(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class SetRoomTarget(_message.Message):
    __slots__ = ("room_id", "target_centidegrees")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    target_centidegrees: int
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., target_centidegrees: _Optional[int] = ...) -> None: ...

class RoomSensors(_message.Message):
    __slots__ = ("sensor_ids",)
    SENSOR_IDS_FIELD_NUMBER: _ClassVar[int]
    sensor_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    def __init__(self, sensor_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ...) -> None: ...

class RoomLimits(_message.Message):
    __slots__ = ("min_centidegrees", "max_centidegrees")
    MIN_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    MAX_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    min_centidegrees: int
    max_centidegrees: int
    def __init__(self, min_centidegrees: _Optional[int] = ..., max_centidegrees: _Optional[int] = ...) -> None: ...

class ConfigureRoomClimate(_message.Message):
    __slots__ = ("room_id", "limits", "sensors", "lock_device_controls")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    LIMITS_FIELD_NUMBER: _ClassVar[int]
    SENSORS_FIELD_NUMBER: _ClassVar[int]
    LOCK_DEVICE_CONTROLS_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    limits: RoomLimits
    sensors: RoomSensors
    lock_device_controls: bool
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., limits: _Optional[_Union[RoomLimits, _Mapping]] = ..., sensors: _Optional[_Union[RoomSensors, _Mapping]] = ..., lock_device_controls: _Optional[bool] = ...) -> None: ...

class SetClimateMode(_message.Message):
    __slots__ = ("space_id", "kind", "setback_centidegrees", "starts_at", "ends_at")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    SETBACK_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    STARTS_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    kind: _climate_pb2.ClimateModeKind
    setback_centidegrees: int
    starts_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., kind: _Optional[_Union[_climate_pb2.ClimateModeKind, str]] = ..., setback_centidegrees: _Optional[int] = ..., starts_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ListRoomClimates(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class GetRoomHistory(_message.Message):
    __slots__ = ("room_id", "from_time", "to_time")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    FROM_TIME_FIELD_NUMBER: _ClassVar[int]
    TO_TIME_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    from_time: _timestamp_pb2.Timestamp
    to_time: _timestamp_pb2.Timestamp
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., from_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., to_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ManagementRequest(_message.Message):
    __slots__ = ("create_space", "update_space", "delete_space", "assign_user_to_space", "remove_user_from_space", "place_device_in_space", "remove_device_from_space", "claim_device", "release_device", "list_spaces", "create_device_link", "remove_device_link", "list_device_links", "update_device_link", "provision_device", "set_room_target", "configure_room_climate", "set_climate_mode", "list_room_climates", "get_room_history")
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
    CREATE_DEVICE_LINK_FIELD_NUMBER: _ClassVar[int]
    REMOVE_DEVICE_LINK_FIELD_NUMBER: _ClassVar[int]
    LIST_DEVICE_LINKS_FIELD_NUMBER: _ClassVar[int]
    UPDATE_DEVICE_LINK_FIELD_NUMBER: _ClassVar[int]
    PROVISION_DEVICE_FIELD_NUMBER: _ClassVar[int]
    SET_ROOM_TARGET_FIELD_NUMBER: _ClassVar[int]
    CONFIGURE_ROOM_CLIMATE_FIELD_NUMBER: _ClassVar[int]
    SET_CLIMATE_MODE_FIELD_NUMBER: _ClassVar[int]
    LIST_ROOM_CLIMATES_FIELD_NUMBER: _ClassVar[int]
    GET_ROOM_HISTORY_FIELD_NUMBER: _ClassVar[int]
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
    create_device_link: CreateDeviceLink
    remove_device_link: RemoveDeviceLink
    list_device_links: ListDeviceLinks
    update_device_link: UpdateDeviceLink
    provision_device: ProvisionDevice
    set_room_target: SetRoomTarget
    configure_room_climate: ConfigureRoomClimate
    set_climate_mode: SetClimateMode
    list_room_climates: ListRoomClimates
    get_room_history: GetRoomHistory
    def __init__(self, create_space: _Optional[_Union[CreateSpace, _Mapping]] = ..., update_space: _Optional[_Union[UpdateSpace, _Mapping]] = ..., delete_space: _Optional[_Union[DeleteSpace, _Mapping]] = ..., assign_user_to_space: _Optional[_Union[AssignUserToSpace, _Mapping]] = ..., remove_user_from_space: _Optional[_Union[RemoveUserFromSpace, _Mapping]] = ..., place_device_in_space: _Optional[_Union[PlaceDeviceInSpace, _Mapping]] = ..., remove_device_from_space: _Optional[_Union[RemoveDeviceFromSpace, _Mapping]] = ..., claim_device: _Optional[_Union[ClaimDevice, _Mapping]] = ..., release_device: _Optional[_Union[ReleaseDevice, _Mapping]] = ..., list_spaces: _Optional[_Union[ListSpaces, _Mapping]] = ..., create_device_link: _Optional[_Union[CreateDeviceLink, _Mapping]] = ..., remove_device_link: _Optional[_Union[RemoveDeviceLink, _Mapping]] = ..., list_device_links: _Optional[_Union[ListDeviceLinks, _Mapping]] = ..., update_device_link: _Optional[_Union[UpdateDeviceLink, _Mapping]] = ..., provision_device: _Optional[_Union[ProvisionDevice, _Mapping]] = ..., set_room_target: _Optional[_Union[SetRoomTarget, _Mapping]] = ..., configure_room_climate: _Optional[_Union[ConfigureRoomClimate, _Mapping]] = ..., set_climate_mode: _Optional[_Union[SetClimateMode, _Mapping]] = ..., list_room_climates: _Optional[_Union[ListRoomClimates, _Mapping]] = ..., get_room_history: _Optional[_Union[GetRoomHistory, _Mapping]] = ...) -> None: ...
