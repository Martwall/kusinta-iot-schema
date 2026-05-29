from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class HmThermostatProps(_message.Message):
    __slots__ = ("boost_mode", "boost_time_period", "control_mode", "frost_protection", "current_profile_period")
    BOOST_MODE_FIELD_NUMBER: _ClassVar[int]
    BOOST_TIME_PERIOD_FIELD_NUMBER: _ClassVar[int]
    CONTROL_MODE_FIELD_NUMBER: _ClassVar[int]
    FROST_PROTECTION_FIELD_NUMBER: _ClassVar[int]
    CURRENT_PROFILE_PERIOD_FIELD_NUMBER: _ClassVar[int]
    boost_mode: bool
    boost_time_period: float
    control_mode: int
    frost_protection: bool
    current_profile_period: float
    def __init__(self, boost_mode: _Optional[bool] = ..., boost_time_period: _Optional[float] = ..., control_mode: _Optional[int] = ..., frost_protection: _Optional[bool] = ..., current_profile_period: _Optional[float] = ...) -> None: ...

class HmWallThermostatProps(_message.Message):
    __slots__ = ("display_mode",)
    DISPLAY_MODE_FIELD_NUMBER: _ClassVar[int]
    display_mode: int
    def __init__(self, display_mode: _Optional[int] = ...) -> None: ...

class HmWindowActuatorProps(_message.Message):
    __slots__ = ("drive_state", "error_efuse", "error_motor_coils_temp")
    DRIVE_STATE_FIELD_NUMBER: _ClassVar[int]
    ERROR_EFUSE_FIELD_NUMBER: _ClassVar[int]
    ERROR_MOTOR_COILS_TEMP_FIELD_NUMBER: _ClassVar[int]
    drive_state: int
    error_efuse: bool
    error_motor_coils_temp: bool
    def __init__(self, drive_state: _Optional[int] = ..., error_efuse: _Optional[bool] = ..., error_motor_coils_temp: _Optional[bool] = ...) -> None: ...

class HmDoorSensorProps(_message.Message):
    __slots__ = ("sabotage", "low_battery")
    SABOTAGE_FIELD_NUMBER: _ClassVar[int]
    LOW_BATTERY_FIELD_NUMBER: _ClassVar[int]
    sabotage: bool
    low_battery: bool
    def __init__(self, sabotage: _Optional[bool] = ..., low_battery: _Optional[bool] = ...) -> None: ...

class HmSmokeDetectorProps(_message.Message):
    __slots__ = ("alarm_triggered", "low_battery")
    ALARM_TRIGGERED_FIELD_NUMBER: _ClassVar[int]
    LOW_BATTERY_FIELD_NUMBER: _ClassVar[int]
    alarm_triggered: bool
    low_battery: bool
    def __init__(self, alarm_triggered: _Optional[bool] = ..., low_battery: _Optional[bool] = ...) -> None: ...

class HomematicVendorExtension(_message.Message):
    __slots__ = ("homematic_address", "homematic_type", "hm_thermostat", "hm_wall_thermostat", "hm_window_actuator", "hm_door_sensor", "hm_smoke_detector")
    HOMEMATIC_ADDRESS_FIELD_NUMBER: _ClassVar[int]
    HOMEMATIC_TYPE_FIELD_NUMBER: _ClassVar[int]
    HM_THERMOSTAT_FIELD_NUMBER: _ClassVar[int]
    HM_WALL_THERMOSTAT_FIELD_NUMBER: _ClassVar[int]
    HM_WINDOW_ACTUATOR_FIELD_NUMBER: _ClassVar[int]
    HM_DOOR_SENSOR_FIELD_NUMBER: _ClassVar[int]
    HM_SMOKE_DETECTOR_FIELD_NUMBER: _ClassVar[int]
    homematic_address: str
    homematic_type: str
    hm_thermostat: HmThermostatProps
    hm_wall_thermostat: HmWallThermostatProps
    hm_window_actuator: HmWindowActuatorProps
    hm_door_sensor: HmDoorSensorProps
    hm_smoke_detector: HmSmokeDetectorProps
    def __init__(self, homematic_address: _Optional[str] = ..., homematic_type: _Optional[str] = ..., hm_thermostat: _Optional[_Union[HmThermostatProps, _Mapping]] = ..., hm_wall_thermostat: _Optional[_Union[HmWallThermostatProps, _Mapping]] = ..., hm_window_actuator: _Optional[_Union[HmWindowActuatorProps, _Mapping]] = ..., hm_door_sensor: _Optional[_Union[HmDoorSensorProps, _Mapping]] = ..., hm_smoke_detector: _Optional[_Union[HmSmokeDetectorProps, _Mapping]] = ...) -> None: ...
