import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class RoomClimateCondition(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROOM_CLIMATE_CONDITION_UNSPECIFIED: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_HOLDING: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_NO_TARGET: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_SENSOR_LOST: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_WINDOW_OPEN: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_NO_HEATING: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE: _ClassVar[RoomClimateCondition]
    ROOM_CLIMATE_CONDITION_NO_SENSOR: _ClassVar[RoomClimateCondition]

class ClimateModeKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLIMATE_MODE_KIND_UNSPECIFIED: _ClassVar[ClimateModeKind]
    CLIMATE_MODE_KIND_AWAY: _ClassVar[ClimateModeKind]
    CLIMATE_MODE_KIND_HOLIDAY: _ClassVar[ClimateModeKind]
ROOM_CLIMATE_CONDITION_UNSPECIFIED: RoomClimateCondition
ROOM_CLIMATE_CONDITION_HOLDING: RoomClimateCondition
ROOM_CLIMATE_CONDITION_NO_TARGET: RoomClimateCondition
ROOM_CLIMATE_CONDITION_SENSOR_LOST: RoomClimateCondition
ROOM_CLIMATE_CONDITION_WINDOW_OPEN: RoomClimateCondition
ROOM_CLIMATE_CONDITION_NO_HEATING: RoomClimateCondition
ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE: RoomClimateCondition
ROOM_CLIMATE_CONDITION_NO_SENSOR: RoomClimateCondition
CLIMATE_MODE_KIND_UNSPECIFIED: ClimateModeKind
CLIMATE_MODE_KIND_AWAY: ClimateModeKind
CLIMATE_MODE_KIND_HOLIDAY: ClimateModeKind

class TargetChange(_message.Message):
    __slots__ = ("at", "user", "device")
    AT_FIELD_NUMBER: _ClassVar[int]
    USER_FIELD_NUMBER: _ClassVar[int]
    DEVICE_FIELD_NUMBER: _ClassVar[int]
    at: _timestamp_pb2.Timestamp
    user: _identity_pb2.UserId
    device: _identity_pb2.DeviceId
    def __init__(self, at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., user: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., device: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class RoomClimate(_message.Message):
    __slots__ = ("space_id", "target_centidegrees", "target_change", "effective_target_centidegrees", "overrides_mode", "mode_space_id", "min_centidegrees", "max_centidegrees", "sensor_ids", "sensors_configured", "measured_centidegrees", "measured_by", "condition", "lock_device_controls")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    TARGET_CHANGE_FIELD_NUMBER: _ClassVar[int]
    EFFECTIVE_TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OVERRIDES_MODE_FIELD_NUMBER: _ClassVar[int]
    MODE_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    MIN_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    MAX_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SENSOR_IDS_FIELD_NUMBER: _ClassVar[int]
    SENSORS_CONFIGURED_FIELD_NUMBER: _ClassVar[int]
    MEASURED_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    MEASURED_BY_FIELD_NUMBER: _ClassVar[int]
    CONDITION_FIELD_NUMBER: _ClassVar[int]
    LOCK_DEVICE_CONTROLS_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    target_centidegrees: int
    target_change: TargetChange
    effective_target_centidegrees: int
    overrides_mode: bool
    mode_space_id: _identity_pb2.SpaceId
    min_centidegrees: int
    max_centidegrees: int
    sensor_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    sensors_configured: bool
    measured_centidegrees: int
    measured_by: _identity_pb2.DeviceId
    condition: RoomClimateCondition
    lock_device_controls: bool
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., target_centidegrees: _Optional[int] = ..., target_change: _Optional[_Union[TargetChange, _Mapping]] = ..., effective_target_centidegrees: _Optional[int] = ..., overrides_mode: _Optional[bool] = ..., mode_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., min_centidegrees: _Optional[int] = ..., max_centidegrees: _Optional[int] = ..., sensor_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ..., sensors_configured: _Optional[bool] = ..., measured_centidegrees: _Optional[int] = ..., measured_by: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., condition: _Optional[_Union[RoomClimateCondition, str]] = ..., lock_device_controls: _Optional[bool] = ...) -> None: ...

class ClimateMode(_message.Message):
    __slots__ = ("space_id", "kind", "setback_centidegrees", "starts_at", "ends_at", "set_by", "warm_from")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    SETBACK_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    STARTS_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    SET_BY_FIELD_NUMBER: _ClassVar[int]
    WARM_FROM_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    kind: ClimateModeKind
    setback_centidegrees: int
    starts_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    set_by: _identity_pb2.UserId
    warm_from: _timestamp_pb2.Timestamp
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., kind: _Optional[_Union[ClimateModeKind, str]] = ..., setback_centidegrees: _Optional[int] = ..., starts_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., set_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., warm_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class RoomClimateList(_message.Message):
    __slots__ = ("rooms", "modes")
    ROOMS_FIELD_NUMBER: _ClassVar[int]
    MODES_FIELD_NUMBER: _ClassVar[int]
    rooms: _containers.RepeatedCompositeFieldContainer[RoomClimate]
    modes: _containers.RepeatedCompositeFieldContainer[ClimateMode]
    def __init__(self, rooms: _Optional[_Iterable[_Union[RoomClimate, _Mapping]]] = ..., modes: _Optional[_Iterable[_Union[ClimateMode, _Mapping]]] = ...) -> None: ...

class RoomHistorySample(_message.Message):
    __slots__ = ("at", "measured_centidegrees", "target_centidegrees", "effective_target_centidegrees", "valve_open_permille", "valve_open_seconds")
    AT_FIELD_NUMBER: _ClassVar[int]
    MEASURED_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    EFFECTIVE_TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    VALVE_OPEN_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    VALVE_OPEN_SECONDS_FIELD_NUMBER: _ClassVar[int]
    at: _timestamp_pb2.Timestamp
    measured_centidegrees: int
    target_centidegrees: int
    effective_target_centidegrees: int
    valve_open_permille: int
    valve_open_seconds: int
    def __init__(self, at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., measured_centidegrees: _Optional[int] = ..., target_centidegrees: _Optional[int] = ..., effective_target_centidegrees: _Optional[int] = ..., valve_open_permille: _Optional[int] = ..., valve_open_seconds: _Optional[int] = ...) -> None: ...

class RoomHistory(_message.Message):
    __slots__ = ("room_id", "kept_from", "samples")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    KEPT_FROM_FIELD_NUMBER: _ClassVar[int]
    SAMPLES_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    kept_from: _timestamp_pb2.Timestamp
    samples: _containers.RepeatedCompositeFieldContainer[RoomHistorySample]
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., kept_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., samples: _Optional[_Iterable[_Union[RoomHistorySample, _Mapping]]] = ...) -> None: ...
