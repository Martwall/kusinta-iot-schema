import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
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

class OuterLimitKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    OUTER_LIMIT_KIND_UNSPECIFIED: _ClassVar[OuterLimitKind]
    OUTER_LIMIT_KIND_MIN: _ClassVar[OuterLimitKind]
    OUTER_LIMIT_KIND_MAX: _ClassVar[OuterLimitKind]
    OUTER_LIMIT_KIND_AWAY_MIN: _ClassVar[OuterLimitKind]

class OuterLimitsCoverage(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    OUTER_LIMITS_COVERAGE_UNSPECIFIED: _ClassVar[OuterLimitsCoverage]
    OUTER_LIMITS_COVERAGE_NONE: _ClassVar[OuterLimitsCoverage]
    OUTER_LIMITS_COVERAGE_SOME: _ClassVar[OuterLimitsCoverage]
    OUTER_LIMITS_COVERAGE_ALL: _ClassVar[OuterLimitsCoverage]

class RoomPlanning(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROOM_PLANNING_UNSPECIFIED: _ClassVar[RoomPlanning]
    ROOM_PLANNING_PLANNED: _ClassVar[RoomPlanning]
    ROOM_PLANNING_NOT_PLANNED: _ClassVar[RoomPlanning]
    ROOM_PLANNING_UNAVAILABLE: _ClassVar[RoomPlanning]

class ClimateExplanationKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLIMATE_EXPLANATION_KIND_UNSPECIFIED: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_PRE_HEAT: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_COASTING: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_PRICE_HIGH: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_PEAK_GUARD: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_HOT_WATER_PRIORITY: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_SHARED_POWER_BUDGET: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_DISTRICT_HEATING_PEAK: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_AT_COMFORT_CEILING: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_NO_READING: _ClassVar[ClimateExplanationKind]
    CLIMATE_EXPLANATION_KIND_OUTSIDE_WINDOW: _ClassVar[ClimateExplanationKind]

class ClimateExplanationSubject(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLIMATE_EXPLANATION_SUBJECT_UNSPECIFIED: _ClassVar[ClimateExplanationSubject]
    CLIMATE_EXPLANATION_SUBJECT_ROOM: _ClassVar[ClimateExplanationSubject]
    CLIMATE_EXPLANATION_SUBJECT_FLOOR_ZONE: _ClassVar[ClimateExplanationSubject]
    CLIMATE_EXPLANATION_SUBJECT_COMFORT_LOAD: _ClassVar[ClimateExplanationSubject]
    CLIMATE_EXPLANATION_SUBJECT_ADD_ON_HEATER: _ClassVar[ClimateExplanationSubject]

class ClimateModeKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLIMATE_MODE_KIND_UNSPECIFIED: _ClassVar[ClimateModeKind]
    CLIMATE_MODE_KIND_AWAY: _ClassVar[ClimateModeKind]
    CLIMATE_MODE_KIND_HOLIDAY: _ClassVar[ClimateModeKind]

class RoomHistoryResolution(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ROOM_HISTORY_RESOLUTION_UNSPECIFIED: _ClassVar[RoomHistoryResolution]
    ROOM_HISTORY_RESOLUTION_QUARTER_HOUR: _ClassVar[RoomHistoryResolution]
    ROOM_HISTORY_RESOLUTION_HOUR: _ClassVar[RoomHistoryResolution]

class ClimateSummaryPeriod(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLIMATE_SUMMARY_PERIOD_UNSPECIFIED: _ClassVar[ClimateSummaryPeriod]
    CLIMATE_SUMMARY_PERIOD_DAY: _ClassVar[ClimateSummaryPeriod]
    CLIMATE_SUMMARY_PERIOD_WEEK: _ClassVar[ClimateSummaryPeriod]
    CLIMATE_SUMMARY_PERIOD_MONTH: _ClassVar[ClimateSummaryPeriod]

class ClimateSummaryWeighting(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED: _ClassVar[ClimateSummaryWeighting]
    CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL: _ClassVar[ClimateSummaryWeighting]
ROOM_CLIMATE_CONDITION_UNSPECIFIED: RoomClimateCondition
ROOM_CLIMATE_CONDITION_HOLDING: RoomClimateCondition
ROOM_CLIMATE_CONDITION_NO_TARGET: RoomClimateCondition
ROOM_CLIMATE_CONDITION_SENSOR_LOST: RoomClimateCondition
ROOM_CLIMATE_CONDITION_WINDOW_OPEN: RoomClimateCondition
ROOM_CLIMATE_CONDITION_NO_HEATING: RoomClimateCondition
ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE: RoomClimateCondition
ROOM_CLIMATE_CONDITION_NO_SENSOR: RoomClimateCondition
OUTER_LIMIT_KIND_UNSPECIFIED: OuterLimitKind
OUTER_LIMIT_KIND_MIN: OuterLimitKind
OUTER_LIMIT_KIND_MAX: OuterLimitKind
OUTER_LIMIT_KIND_AWAY_MIN: OuterLimitKind
OUTER_LIMITS_COVERAGE_UNSPECIFIED: OuterLimitsCoverage
OUTER_LIMITS_COVERAGE_NONE: OuterLimitsCoverage
OUTER_LIMITS_COVERAGE_SOME: OuterLimitsCoverage
OUTER_LIMITS_COVERAGE_ALL: OuterLimitsCoverage
ROOM_PLANNING_UNSPECIFIED: RoomPlanning
ROOM_PLANNING_PLANNED: RoomPlanning
ROOM_PLANNING_NOT_PLANNED: RoomPlanning
ROOM_PLANNING_UNAVAILABLE: RoomPlanning
CLIMATE_EXPLANATION_KIND_UNSPECIFIED: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_PRE_HEAT: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_COASTING: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_PRICE_HIGH: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_PEAK_GUARD: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_HOT_WATER_PRIORITY: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_SHARED_POWER_BUDGET: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_DISTRICT_HEATING_PEAK: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_AT_COMFORT_CEILING: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_NO_READING: ClimateExplanationKind
CLIMATE_EXPLANATION_KIND_OUTSIDE_WINDOW: ClimateExplanationKind
CLIMATE_EXPLANATION_SUBJECT_UNSPECIFIED: ClimateExplanationSubject
CLIMATE_EXPLANATION_SUBJECT_ROOM: ClimateExplanationSubject
CLIMATE_EXPLANATION_SUBJECT_FLOOR_ZONE: ClimateExplanationSubject
CLIMATE_EXPLANATION_SUBJECT_COMFORT_LOAD: ClimateExplanationSubject
CLIMATE_EXPLANATION_SUBJECT_ADD_ON_HEATER: ClimateExplanationSubject
CLIMATE_MODE_KIND_UNSPECIFIED: ClimateModeKind
CLIMATE_MODE_KIND_AWAY: ClimateModeKind
CLIMATE_MODE_KIND_HOLIDAY: ClimateModeKind
ROOM_HISTORY_RESOLUTION_UNSPECIFIED: RoomHistoryResolution
ROOM_HISTORY_RESOLUTION_QUARTER_HOUR: RoomHistoryResolution
ROOM_HISTORY_RESOLUTION_HOUR: RoomHistoryResolution
CLIMATE_SUMMARY_PERIOD_UNSPECIFIED: ClimateSummaryPeriod
CLIMATE_SUMMARY_PERIOD_DAY: ClimateSummaryPeriod
CLIMATE_SUMMARY_PERIOD_WEEK: ClimateSummaryPeriod
CLIMATE_SUMMARY_PERIOD_MONTH: ClimateSummaryPeriod
CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED: ClimateSummaryWeighting
CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL: ClimateSummaryWeighting

class TargetChange(_message.Message):
    __slots__ = ("at", "user", "device", "move_in")
    AT_FIELD_NUMBER: _ClassVar[int]
    USER_FIELD_NUMBER: _ClassVar[int]
    DEVICE_FIELD_NUMBER: _ClassVar[int]
    MOVE_IN_FIELD_NUMBER: _ClassVar[int]
    at: _timestamp_pb2.Timestamp
    user: _identity_pb2.UserId
    device: _identity_pb2.DeviceId
    move_in: bool
    def __init__(self, at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., user: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., device: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., move_in: _Optional[bool] = ...) -> None: ...

class RoomClimate(_message.Message):
    __slots__ = ("space_id", "target_centidegrees", "target_change", "effective_target_centidegrees", "overrides_mode", "mode_space_id", "min_centidegrees", "max_centidegrees", "sensor_ids", "sensors_configured", "measured_centidegrees", "measured_by", "condition", "lock_device_controls", "state_withheld", "explanations", "target_held_until", "planning", "comfort_band_low_centidegrees", "comfort_band_high_centidegrees", "outer_limits", "inner_limits", "outer_limit_clamp", "outer_limits_coverage")
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
    STATE_WITHHELD_FIELD_NUMBER: _ClassVar[int]
    EXPLANATIONS_FIELD_NUMBER: _ClassVar[int]
    TARGET_HELD_UNTIL_FIELD_NUMBER: _ClassVar[int]
    PLANNING_FIELD_NUMBER: _ClassVar[int]
    COMFORT_BAND_LOW_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    COMFORT_BAND_HIGH_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OUTER_LIMITS_FIELD_NUMBER: _ClassVar[int]
    INNER_LIMITS_FIELD_NUMBER: _ClassVar[int]
    OUTER_LIMIT_CLAMP_FIELD_NUMBER: _ClassVar[int]
    OUTER_LIMITS_COVERAGE_FIELD_NUMBER: _ClassVar[int]
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
    state_withheld: bool
    explanations: _containers.RepeatedCompositeFieldContainer[ClimateExplanation]
    target_held_until: _timestamp_pb2.Timestamp
    planning: RoomPlanning
    comfort_band_low_centidegrees: int
    comfort_band_high_centidegrees: int
    outer_limits: OuterRoomLimits
    inner_limits: InnerRoomLimits
    outer_limit_clamp: OuterLimitClamp
    outer_limits_coverage: OuterLimitsCoverage
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., target_centidegrees: _Optional[int] = ..., target_change: _Optional[_Union[TargetChange, _Mapping]] = ..., effective_target_centidegrees: _Optional[int] = ..., overrides_mode: _Optional[bool] = ..., mode_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., min_centidegrees: _Optional[int] = ..., max_centidegrees: _Optional[int] = ..., sensor_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ..., sensors_configured: _Optional[bool] = ..., measured_centidegrees: _Optional[int] = ..., measured_by: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., condition: _Optional[_Union[RoomClimateCondition, str]] = ..., lock_device_controls: _Optional[bool] = ..., state_withheld: _Optional[bool] = ..., explanations: _Optional[_Iterable[_Union[ClimateExplanation, _Mapping]]] = ..., target_held_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., planning: _Optional[_Union[RoomPlanning, str]] = ..., comfort_band_low_centidegrees: _Optional[int] = ..., comfort_band_high_centidegrees: _Optional[int] = ..., outer_limits: _Optional[_Union[OuterRoomLimits, _Mapping]] = ..., inner_limits: _Optional[_Union[InnerRoomLimits, _Mapping]] = ..., outer_limit_clamp: _Optional[_Union[OuterLimitClamp, _Mapping]] = ..., outer_limits_coverage: _Optional[_Union[OuterLimitsCoverage, str]] = ...) -> None: ...

class OuterLimit(_message.Message):
    __slots__ = ("centidegrees", "set_by_role", "set_at")
    CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SET_BY_ROLE_FIELD_NUMBER: _ClassVar[int]
    SET_AT_FIELD_NUMBER: _ClassVar[int]
    centidegrees: int
    set_by_role: _roles_pb2.Role
    set_at: _timestamp_pb2.Timestamp
    def __init__(self, centidegrees: _Optional[int] = ..., set_by_role: _Optional[_Union[_roles_pb2.Role, str]] = ..., set_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class OuterRoomLimits(_message.Message):
    __slots__ = ("min", "max", "away_min", "move_in_target", "min_accepted_threshold_centidegrees")
    MIN_FIELD_NUMBER: _ClassVar[int]
    MAX_FIELD_NUMBER: _ClassVar[int]
    AWAY_MIN_FIELD_NUMBER: _ClassVar[int]
    MOVE_IN_TARGET_FIELD_NUMBER: _ClassVar[int]
    MIN_ACCEPTED_THRESHOLD_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    min: OuterLimit
    max: OuterLimit
    away_min: OuterLimit
    move_in_target: OuterLimit
    min_accepted_threshold_centidegrees: int
    def __init__(self, min: _Optional[_Union[OuterLimit, _Mapping]] = ..., max: _Optional[_Union[OuterLimit, _Mapping]] = ..., away_min: _Optional[_Union[OuterLimit, _Mapping]] = ..., move_in_target: _Optional[_Union[OuterLimit, _Mapping]] = ..., min_accepted_threshold_centidegrees: _Optional[int] = ...) -> None: ...

class InnerRoomLimits(_message.Message):
    __slots__ = ("min_centidegrees", "max_centidegrees")
    MIN_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    MAX_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    min_centidegrees: int
    max_centidegrees: int
    def __init__(self, min_centidegrees: _Optional[int] = ..., max_centidegrees: _Optional[int] = ...) -> None: ...

class OuterLimitClamp(_message.Message):
    __slots__ = ("limit", "unclamped_centidegrees")
    LIMIT_FIELD_NUMBER: _ClassVar[int]
    UNCLAMPED_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    limit: OuterLimitKind
    unclamped_centidegrees: int
    def __init__(self, limit: _Optional[_Union[OuterLimitKind, str]] = ..., unclamped_centidegrees: _Optional[int] = ...) -> None: ...

class ClimateExplanation(_message.Message):
    __slots__ = ("kind", "subject", "ends_at")
    KIND_FIELD_NUMBER: _ClassVar[int]
    SUBJECT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    kind: ClimateExplanationKind
    subject: ClimateExplanationSubject
    ends_at: _timestamp_pb2.Timestamp
    def __init__(self, kind: _Optional[_Union[ClimateExplanationKind, str]] = ..., subject: _Optional[_Union[ClimateExplanationSubject, str]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

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
    __slots__ = ("at", "measured_centidegrees", "target_centidegrees", "effective_target_centidegrees", "valve_open_permille", "valve_open_seconds", "floor_heating_seconds")
    AT_FIELD_NUMBER: _ClassVar[int]
    MEASURED_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    EFFECTIVE_TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    VALVE_OPEN_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    VALVE_OPEN_SECONDS_FIELD_NUMBER: _ClassVar[int]
    FLOOR_HEATING_SECONDS_FIELD_NUMBER: _ClassVar[int]
    at: _timestamp_pb2.Timestamp
    measured_centidegrees: int
    target_centidegrees: int
    effective_target_centidegrees: int
    valve_open_permille: int
    valve_open_seconds: int
    floor_heating_seconds: int
    def __init__(self, at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., measured_centidegrees: _Optional[int] = ..., target_centidegrees: _Optional[int] = ..., effective_target_centidegrees: _Optional[int] = ..., valve_open_permille: _Optional[int] = ..., valve_open_seconds: _Optional[int] = ..., floor_heating_seconds: _Optional[int] = ...) -> None: ...

class RoomHistory(_message.Message):
    __slots__ = ("room_id", "kept_from", "samples", "resolution", "covered_from", "covered_to")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    KEPT_FROM_FIELD_NUMBER: _ClassVar[int]
    SAMPLES_FIELD_NUMBER: _ClassVar[int]
    RESOLUTION_FIELD_NUMBER: _ClassVar[int]
    COVERED_FROM_FIELD_NUMBER: _ClassVar[int]
    COVERED_TO_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    kept_from: _timestamp_pb2.Timestamp
    samples: _containers.RepeatedCompositeFieldContainer[RoomHistorySample]
    resolution: RoomHistoryResolution
    covered_from: _timestamp_pb2.Timestamp
    covered_to: _timestamp_pb2.Timestamp
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., kept_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., samples: _Optional[_Iterable[_Union[RoomHistorySample, _Mapping]]] = ..., resolution: _Optional[_Union[RoomHistoryResolution, str]] = ..., covered_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., covered_to: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ClimatePeriodMean(_message.Message):
    __slots__ = ("starts_at", "ends_at", "measured_centidegrees", "target_centidegrees", "measured_coverage_permille", "target_coverage_permille", "rooms_measured", "rooms")
    STARTS_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    MEASURED_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    MEASURED_COVERAGE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    TARGET_COVERAGE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    ROOMS_MEASURED_FIELD_NUMBER: _ClassVar[int]
    ROOMS_FIELD_NUMBER: _ClassVar[int]
    starts_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    measured_centidegrees: int
    target_centidegrees: int
    measured_coverage_permille: int
    target_coverage_permille: int
    rooms_measured: int
    rooms: int
    def __init__(self, starts_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., measured_centidegrees: _Optional[int] = ..., target_centidegrees: _Optional[int] = ..., measured_coverage_permille: _Optional[int] = ..., target_coverage_permille: _Optional[int] = ..., rooms_measured: _Optional[int] = ..., rooms: _Optional[int] = ...) -> None: ...

class ApartmentClimateSummary(_message.Message):
    __slots__ = ("apartment_id", "period", "weighting", "kept_from", "periods")
    APARTMENT_ID_FIELD_NUMBER: _ClassVar[int]
    PERIOD_FIELD_NUMBER: _ClassVar[int]
    WEIGHTING_FIELD_NUMBER: _ClassVar[int]
    KEPT_FROM_FIELD_NUMBER: _ClassVar[int]
    PERIODS_FIELD_NUMBER: _ClassVar[int]
    apartment_id: _identity_pb2.SpaceId
    period: ClimateSummaryPeriod
    weighting: ClimateSummaryWeighting
    kept_from: _timestamp_pb2.Timestamp
    periods: _containers.RepeatedCompositeFieldContainer[ClimatePeriodMean]
    def __init__(self, apartment_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., period: _Optional[_Union[ClimateSummaryPeriod, str]] = ..., weighting: _Optional[_Union[ClimateSummaryWeighting, str]] = ..., kept_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., periods: _Optional[_Iterable[_Union[ClimatePeriodMean, _Mapping]]] = ...) -> None: ...
