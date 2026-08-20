from kusinta.iot.device.v1 import matter_options_pb2 as _matter_options_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class ThermostatProperties(_message.Message):
    __slots__ = ("local_temperature", "occupied_heating_setpoint", "occupied_cooling_setpoint", "min_heat_setpoint_limit", "max_heat_setpoint_limit", "min_cool_setpoint_limit", "max_cool_setpoint_limit", "control_sequence_of_operation", "system_mode", "thermostat_running_mode")
    LOCAL_TEMPERATURE_FIELD_NUMBER: _ClassVar[int]
    OCCUPIED_HEATING_SETPOINT_FIELD_NUMBER: _ClassVar[int]
    OCCUPIED_COOLING_SETPOINT_FIELD_NUMBER: _ClassVar[int]
    MIN_HEAT_SETPOINT_LIMIT_FIELD_NUMBER: _ClassVar[int]
    MAX_HEAT_SETPOINT_LIMIT_FIELD_NUMBER: _ClassVar[int]
    MIN_COOL_SETPOINT_LIMIT_FIELD_NUMBER: _ClassVar[int]
    MAX_COOL_SETPOINT_LIMIT_FIELD_NUMBER: _ClassVar[int]
    CONTROL_SEQUENCE_OF_OPERATION_FIELD_NUMBER: _ClassVar[int]
    SYSTEM_MODE_FIELD_NUMBER: _ClassVar[int]
    THERMOSTAT_RUNNING_MODE_FIELD_NUMBER: _ClassVar[int]
    local_temperature: int
    occupied_heating_setpoint: int
    occupied_cooling_setpoint: int
    min_heat_setpoint_limit: int
    max_heat_setpoint_limit: int
    min_cool_setpoint_limit: int
    max_cool_setpoint_limit: int
    control_sequence_of_operation: int
    system_mode: int
    thermostat_running_mode: int
    def __init__(self, local_temperature: _Optional[int] = ..., occupied_heating_setpoint: _Optional[int] = ..., occupied_cooling_setpoint: _Optional[int] = ..., min_heat_setpoint_limit: _Optional[int] = ..., max_heat_setpoint_limit: _Optional[int] = ..., min_cool_setpoint_limit: _Optional[int] = ..., max_cool_setpoint_limit: _Optional[int] = ..., control_sequence_of_operation: _Optional[int] = ..., system_mode: _Optional[int] = ..., thermostat_running_mode: _Optional[int] = ...) -> None: ...

class TemperatureSensorProperties(_message.Message):
    __slots__ = ("measured_value", "min_measured_value", "max_measured_value", "tolerance")
    MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    MIN_MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    MAX_MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    TOLERANCE_FIELD_NUMBER: _ClassVar[int]
    measured_value: int
    min_measured_value: int
    max_measured_value: int
    tolerance: int
    def __init__(self, measured_value: _Optional[int] = ..., min_measured_value: _Optional[int] = ..., max_measured_value: _Optional[int] = ..., tolerance: _Optional[int] = ...) -> None: ...

class HumiditySensorProperties(_message.Message):
    __slots__ = ("measured_value", "min_measured_value", "max_measured_value", "tolerance")
    MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    MIN_MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    MAX_MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    TOLERANCE_FIELD_NUMBER: _ClassVar[int]
    measured_value: int
    min_measured_value: int
    max_measured_value: int
    tolerance: int
    def __init__(self, measured_value: _Optional[int] = ..., min_measured_value: _Optional[int] = ..., max_measured_value: _Optional[int] = ..., tolerance: _Optional[int] = ...) -> None: ...

class OccupancySensorProperties(_message.Message):
    __slots__ = ("occupancy", "occupancy_sensor_type", "occupancy_sensor_type_bitmap", "pir_occupied_to_unoccupied_delay", "pir_unoccupied_to_occupied_delay")
    OCCUPANCY_FIELD_NUMBER: _ClassVar[int]
    OCCUPANCY_SENSOR_TYPE_FIELD_NUMBER: _ClassVar[int]
    OCCUPANCY_SENSOR_TYPE_BITMAP_FIELD_NUMBER: _ClassVar[int]
    PIR_OCCUPIED_TO_UNOCCUPIED_DELAY_FIELD_NUMBER: _ClassVar[int]
    PIR_UNOCCUPIED_TO_OCCUPIED_DELAY_FIELD_NUMBER: _ClassVar[int]
    occupancy: int
    occupancy_sensor_type: int
    occupancy_sensor_type_bitmap: int
    pir_occupied_to_unoccupied_delay: int
    pir_unoccupied_to_occupied_delay: int
    def __init__(self, occupancy: _Optional[int] = ..., occupancy_sensor_type: _Optional[int] = ..., occupancy_sensor_type_bitmap: _Optional[int] = ..., pir_occupied_to_unoccupied_delay: _Optional[int] = ..., pir_unoccupied_to_occupied_delay: _Optional[int] = ...) -> None: ...

class ContactSensorProperties(_message.Message):
    __slots__ = ("state_value",)
    STATE_VALUE_FIELD_NUMBER: _ClassVar[int]
    state_value: bool
    def __init__(self, state_value: _Optional[bool] = ...) -> None: ...

class WindowCoveringProperties(_message.Message):
    __slots__ = ("covering_type", "current_position_lift_percent100ths", "current_position_tilt_percent100ths", "target_position_lift_percent100ths", "target_position_tilt_percent100ths", "operational_status", "end_product_type", "mode")
    COVERING_TYPE_FIELD_NUMBER: _ClassVar[int]
    CURRENT_POSITION_LIFT_PERCENT100THS_FIELD_NUMBER: _ClassVar[int]
    CURRENT_POSITION_TILT_PERCENT100THS_FIELD_NUMBER: _ClassVar[int]
    TARGET_POSITION_LIFT_PERCENT100THS_FIELD_NUMBER: _ClassVar[int]
    TARGET_POSITION_TILT_PERCENT100THS_FIELD_NUMBER: _ClassVar[int]
    OPERATIONAL_STATUS_FIELD_NUMBER: _ClassVar[int]
    END_PRODUCT_TYPE_FIELD_NUMBER: _ClassVar[int]
    MODE_FIELD_NUMBER: _ClassVar[int]
    covering_type: int
    current_position_lift_percent100ths: int
    current_position_tilt_percent100ths: int
    target_position_lift_percent100ths: int
    target_position_tilt_percent100ths: int
    operational_status: int
    end_product_type: int
    mode: int
    def __init__(self, covering_type: _Optional[int] = ..., current_position_lift_percent100ths: _Optional[int] = ..., current_position_tilt_percent100ths: _Optional[int] = ..., target_position_lift_percent100ths: _Optional[int] = ..., target_position_tilt_percent100ths: _Optional[int] = ..., operational_status: _Optional[int] = ..., end_product_type: _Optional[int] = ..., mode: _Optional[int] = ...) -> None: ...

class DoorLockProperties(_message.Message):
    __slots__ = ("lock_state", "lock_type", "actuator_enabled", "door_state", "operating_mode")
    LOCK_STATE_FIELD_NUMBER: _ClassVar[int]
    LOCK_TYPE_FIELD_NUMBER: _ClassVar[int]
    ACTUATOR_ENABLED_FIELD_NUMBER: _ClassVar[int]
    DOOR_STATE_FIELD_NUMBER: _ClassVar[int]
    OPERATING_MODE_FIELD_NUMBER: _ClassVar[int]
    lock_state: int
    lock_type: int
    actuator_enabled: bool
    door_state: int
    operating_mode: int
    def __init__(self, lock_state: _Optional[int] = ..., lock_type: _Optional[int] = ..., actuator_enabled: _Optional[bool] = ..., door_state: _Optional[int] = ..., operating_mode: _Optional[int] = ...) -> None: ...

class OnOffLightProperties(_message.Message):
    __slots__ = ("on_off", "global_scene_control", "on_time", "off_wait_time", "start_up_on_off")
    ON_OFF_FIELD_NUMBER: _ClassVar[int]
    GLOBAL_SCENE_CONTROL_FIELD_NUMBER: _ClassVar[int]
    ON_TIME_FIELD_NUMBER: _ClassVar[int]
    OFF_WAIT_TIME_FIELD_NUMBER: _ClassVar[int]
    START_UP_ON_OFF_FIELD_NUMBER: _ClassVar[int]
    on_off: bool
    global_scene_control: bool
    on_time: int
    off_wait_time: int
    start_up_on_off: int
    def __init__(self, on_off: _Optional[bool] = ..., global_scene_control: _Optional[bool] = ..., on_time: _Optional[int] = ..., off_wait_time: _Optional[int] = ..., start_up_on_off: _Optional[int] = ...) -> None: ...

class DimmableLightProperties(_message.Message):
    __slots__ = ("on_off", "current_level", "min_level", "max_level", "on_level", "start_up_current_level", "remaining_time")
    ON_OFF_FIELD_NUMBER: _ClassVar[int]
    CURRENT_LEVEL_FIELD_NUMBER: _ClassVar[int]
    MIN_LEVEL_FIELD_NUMBER: _ClassVar[int]
    MAX_LEVEL_FIELD_NUMBER: _ClassVar[int]
    ON_LEVEL_FIELD_NUMBER: _ClassVar[int]
    START_UP_CURRENT_LEVEL_FIELD_NUMBER: _ClassVar[int]
    REMAINING_TIME_FIELD_NUMBER: _ClassVar[int]
    on_off: bool
    current_level: int
    min_level: int
    max_level: int
    on_level: int
    start_up_current_level: int
    remaining_time: int
    def __init__(self, on_off: _Optional[bool] = ..., current_level: _Optional[int] = ..., min_level: _Optional[int] = ..., max_level: _Optional[int] = ..., on_level: _Optional[int] = ..., start_up_current_level: _Optional[int] = ..., remaining_time: _Optional[int] = ...) -> None: ...

class ColorTemperatureLightProperties(_message.Message):
    __slots__ = ("on_off", "current_level", "color_temperature_mireds", "color_temp_physical_min_mireds", "color_temp_physical_max_mireds", "startup_color_temperature_mireds", "color_mode")
    ON_OFF_FIELD_NUMBER: _ClassVar[int]
    CURRENT_LEVEL_FIELD_NUMBER: _ClassVar[int]
    COLOR_TEMPERATURE_MIREDS_FIELD_NUMBER: _ClassVar[int]
    COLOR_TEMP_PHYSICAL_MIN_MIREDS_FIELD_NUMBER: _ClassVar[int]
    COLOR_TEMP_PHYSICAL_MAX_MIREDS_FIELD_NUMBER: _ClassVar[int]
    STARTUP_COLOR_TEMPERATURE_MIREDS_FIELD_NUMBER: _ClassVar[int]
    COLOR_MODE_FIELD_NUMBER: _ClassVar[int]
    on_off: bool
    current_level: int
    color_temperature_mireds: int
    color_temp_physical_min_mireds: int
    color_temp_physical_max_mireds: int
    startup_color_temperature_mireds: int
    color_mode: int
    def __init__(self, on_off: _Optional[bool] = ..., current_level: _Optional[int] = ..., color_temperature_mireds: _Optional[int] = ..., color_temp_physical_min_mireds: _Optional[int] = ..., color_temp_physical_max_mireds: _Optional[int] = ..., startup_color_temperature_mireds: _Optional[int] = ..., color_mode: _Optional[int] = ...) -> None: ...

class EnergySensorProperties(_message.Message):
    __slots__ = ("active_power", "voltage", "active_current", "frequency")
    ACTIVE_POWER_FIELD_NUMBER: _ClassVar[int]
    VOLTAGE_FIELD_NUMBER: _ClassVar[int]
    ACTIVE_CURRENT_FIELD_NUMBER: _ClassVar[int]
    FREQUENCY_FIELD_NUMBER: _ClassVar[int]
    active_power: int
    voltage: int
    active_current: int
    frequency: int
    def __init__(self, active_power: _Optional[int] = ..., voltage: _Optional[int] = ..., active_current: _Optional[int] = ..., frequency: _Optional[int] = ...) -> None: ...

class PressureSensorProperties(_message.Message):
    __slots__ = ("measured_value", "min_measured_value", "max_measured_value", "tolerance")
    MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    MIN_MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    MAX_MEASURED_VALUE_FIELD_NUMBER: _ClassVar[int]
    TOLERANCE_FIELD_NUMBER: _ClassVar[int]
    measured_value: int
    min_measured_value: int
    max_measured_value: int
    tolerance: int
    def __init__(self, measured_value: _Optional[int] = ..., min_measured_value: _Optional[int] = ..., max_measured_value: _Optional[int] = ..., tolerance: _Optional[int] = ...) -> None: ...

class PowerSourceProperties(_message.Message):
    __slots__ = ("bat_percent_remaining", "bat_charge_level", "bat_replacement_needed", "bat_voltage", "status")
    BAT_PERCENT_REMAINING_FIELD_NUMBER: _ClassVar[int]
    BAT_CHARGE_LEVEL_FIELD_NUMBER: _ClassVar[int]
    BAT_REPLACEMENT_NEEDED_FIELD_NUMBER: _ClassVar[int]
    BAT_VOLTAGE_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    bat_percent_remaining: int
    bat_charge_level: int
    bat_replacement_needed: bool
    bat_voltage: int
    status: int
    def __init__(self, bat_percent_remaining: _Optional[int] = ..., bat_charge_level: _Optional[int] = ..., bat_replacement_needed: _Optional[bool] = ..., bat_voltage: _Optional[int] = ..., status: _Optional[int] = ...) -> None: ...
