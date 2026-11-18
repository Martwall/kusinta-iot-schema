import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.device.v1 import cluster_state_pb2 as _cluster_state_pb2
from kusinta.iot.device.v1 import descriptor_pb2 as _descriptor_pb2
from kusinta.iot.device.v1 import properties_pb2 as _properties_pb2
from kusinta.iot.vendor.homematic.v1 import homematic_pb2 as _homematic_pb2
from kusinta.iot.vendor.v1 import vendor_options_pb2 as _vendor_options_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class HeatSourceProduction(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HEAT_SOURCE_PRODUCTION_UNSPECIFIED: _ClassVar[HeatSourceProduction]
    HEAT_SOURCE_PRODUCTION_OFF: _ClassVar[HeatSourceProduction]
    HEAT_SOURCE_PRODUCTION_SPACE_HEATING: _ClassVar[HeatSourceProduction]
    HEAT_SOURCE_PRODUCTION_HOT_WATER: _ClassVar[HeatSourceProduction]
    HEAT_SOURCE_PRODUCTION_POOL: _ClassVar[HeatSourceProduction]
    HEAT_SOURCE_PRODUCTION_COOLING: _ClassVar[HeatSourceProduction]
    HEAT_SOURCE_PRODUCTION_OTHER: _ClassVar[HeatSourceProduction]

class HeatSourceOperatingMode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HEAT_SOURCE_OPERATING_MODE_UNSPECIFIED: _ClassVar[HeatSourceOperatingMode]
    HEAT_SOURCE_OPERATING_MODE_AUTOMATIC: _ClassVar[HeatSourceOperatingMode]
    HEAT_SOURCE_OPERATING_MODE_MANUAL: _ClassVar[HeatSourceOperatingMode]
    HEAT_SOURCE_OPERATING_MODE_ADD_ON_ONLY: _ClassVar[HeatSourceOperatingMode]
    HEAT_SOURCE_OPERATING_MODE_OTHER: _ClassVar[HeatSourceOperatingMode]

class CompressorState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    COMPRESSOR_STATE_UNSPECIFIED: _ClassVar[CompressorState]
    COMPRESSOR_STATE_STOPPED: _ClassVar[CompressorState]
    COMPRESSOR_STATE_STARTING: _ClassVar[CompressorState]
    COMPRESSOR_STATE_RUNNING: _ClassVar[CompressorState]
    COMPRESSOR_STATE_STOPPING: _ClassVar[CompressorState]
    COMPRESSOR_STATE_BLOCKED: _ClassVar[CompressorState]

class RadioQuality(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    RADIO_QUALITY_UNSPECIFIED: _ClassVar[RadioQuality]
    RADIO_QUALITY_GOOD: _ClassVar[RadioQuality]
    RADIO_QUALITY_FAIR: _ClassVar[RadioQuality]
    RADIO_QUALITY_POOR: _ClassVar[RadioQuality]

class AttentionReason(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ATTENTION_REASON_UNSPECIFIED: _ClassVar[AttentionReason]
    ATTENTION_REASON_VALVE_NOT_CALIBRATED: _ClassVar[AttentionReason]
HEAT_SOURCE_PRODUCTION_UNSPECIFIED: HeatSourceProduction
HEAT_SOURCE_PRODUCTION_OFF: HeatSourceProduction
HEAT_SOURCE_PRODUCTION_SPACE_HEATING: HeatSourceProduction
HEAT_SOURCE_PRODUCTION_HOT_WATER: HeatSourceProduction
HEAT_SOURCE_PRODUCTION_POOL: HeatSourceProduction
HEAT_SOURCE_PRODUCTION_COOLING: HeatSourceProduction
HEAT_SOURCE_PRODUCTION_OTHER: HeatSourceProduction
HEAT_SOURCE_OPERATING_MODE_UNSPECIFIED: HeatSourceOperatingMode
HEAT_SOURCE_OPERATING_MODE_AUTOMATIC: HeatSourceOperatingMode
HEAT_SOURCE_OPERATING_MODE_MANUAL: HeatSourceOperatingMode
HEAT_SOURCE_OPERATING_MODE_ADD_ON_ONLY: HeatSourceOperatingMode
HEAT_SOURCE_OPERATING_MODE_OTHER: HeatSourceOperatingMode
COMPRESSOR_STATE_UNSPECIFIED: CompressorState
COMPRESSOR_STATE_STOPPED: CompressorState
COMPRESSOR_STATE_STARTING: CompressorState
COMPRESSOR_STATE_RUNNING: CompressorState
COMPRESSOR_STATE_STOPPING: CompressorState
COMPRESSOR_STATE_BLOCKED: CompressorState
RADIO_QUALITY_UNSPECIFIED: RadioQuality
RADIO_QUALITY_GOOD: RadioQuality
RADIO_QUALITY_FAIR: RadioQuality
RADIO_QUALITY_POOR: RadioQuality
ATTENTION_REASON_UNSPECIFIED: AttentionReason
ATTENTION_REASON_VALVE_NOT_CALIBRATED: AttentionReason

class Endpoint(_message.Message):
    __slots__ = ("endpoint_id", "matter_device_type_id", "thermostat", "temperature_sensor", "humidity_sensor", "occupancy_sensor", "contact_sensor", "window_covering", "door_lock", "on_off_light", "dimmable_light", "color_temp_light", "energy_sensor", "pressure_sensor", "power_source", "hm_thermostat", "hm_maintenance", "radio_link", "heat_source", "attention", "clusters", "vendor_attribute_names", "vendor_attribute_behaviours")
    class VendorAttributeBehavioursEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: str
        value: _cluster_state_pb2.AttributeBehaviour
        def __init__(self, key: _Optional[str] = ..., value: _Optional[_Union[_cluster_state_pb2.AttributeBehaviour, _Mapping]] = ...) -> None: ...
    ENDPOINT_ID_FIELD_NUMBER: _ClassVar[int]
    MATTER_DEVICE_TYPE_ID_FIELD_NUMBER: _ClassVar[int]
    THERMOSTAT_FIELD_NUMBER: _ClassVar[int]
    TEMPERATURE_SENSOR_FIELD_NUMBER: _ClassVar[int]
    HUMIDITY_SENSOR_FIELD_NUMBER: _ClassVar[int]
    OCCUPANCY_SENSOR_FIELD_NUMBER: _ClassVar[int]
    CONTACT_SENSOR_FIELD_NUMBER: _ClassVar[int]
    WINDOW_COVERING_FIELD_NUMBER: _ClassVar[int]
    DOOR_LOCK_FIELD_NUMBER: _ClassVar[int]
    ON_OFF_LIGHT_FIELD_NUMBER: _ClassVar[int]
    DIMMABLE_LIGHT_FIELD_NUMBER: _ClassVar[int]
    COLOR_TEMP_LIGHT_FIELD_NUMBER: _ClassVar[int]
    ENERGY_SENSOR_FIELD_NUMBER: _ClassVar[int]
    PRESSURE_SENSOR_FIELD_NUMBER: _ClassVar[int]
    POWER_SOURCE_FIELD_NUMBER: _ClassVar[int]
    HM_THERMOSTAT_FIELD_NUMBER: _ClassVar[int]
    HM_MAINTENANCE_FIELD_NUMBER: _ClassVar[int]
    RADIO_LINK_FIELD_NUMBER: _ClassVar[int]
    HEAT_SOURCE_FIELD_NUMBER: _ClassVar[int]
    ATTENTION_FIELD_NUMBER: _ClassVar[int]
    CLUSTERS_FIELD_NUMBER: _ClassVar[int]
    VENDOR_ATTRIBUTE_NAMES_FIELD_NUMBER: _ClassVar[int]
    VENDOR_ATTRIBUTE_BEHAVIOURS_FIELD_NUMBER: _ClassVar[int]
    endpoint_id: int
    matter_device_type_id: int
    thermostat: _properties_pb2.ThermostatProperties
    temperature_sensor: _properties_pb2.TemperatureSensorProperties
    humidity_sensor: _properties_pb2.HumiditySensorProperties
    occupancy_sensor: _properties_pb2.OccupancySensorProperties
    contact_sensor: _properties_pb2.ContactSensorProperties
    window_covering: _properties_pb2.WindowCoveringProperties
    door_lock: _properties_pb2.DoorLockProperties
    on_off_light: _properties_pb2.OnOffLightProperties
    dimmable_light: _properties_pb2.DimmableLightProperties
    color_temp_light: _properties_pb2.ColorTemperatureLightProperties
    energy_sensor: _properties_pb2.EnergySensorProperties
    pressure_sensor: _properties_pb2.PressureSensorProperties
    power_source: _properties_pb2.PowerSourceProperties
    hm_thermostat: _homematic_pb2.HmThermostatProps
    hm_maintenance: _homematic_pb2.HmMaintenanceProps
    radio_link: RadioLink
    heat_source: HeatSourceReadings
    attention: DeviceAttention
    clusters: _containers.RepeatedCompositeFieldContainer[_cluster_state_pb2.ClusterState]
    vendor_attribute_names: _containers.RepeatedScalarFieldContainer[str]
    vendor_attribute_behaviours: _containers.MessageMap[str, _cluster_state_pb2.AttributeBehaviour]
    def __init__(self, endpoint_id: _Optional[int] = ..., matter_device_type_id: _Optional[int] = ..., thermostat: _Optional[_Union[_properties_pb2.ThermostatProperties, _Mapping]] = ..., temperature_sensor: _Optional[_Union[_properties_pb2.TemperatureSensorProperties, _Mapping]] = ..., humidity_sensor: _Optional[_Union[_properties_pb2.HumiditySensorProperties, _Mapping]] = ..., occupancy_sensor: _Optional[_Union[_properties_pb2.OccupancySensorProperties, _Mapping]] = ..., contact_sensor: _Optional[_Union[_properties_pb2.ContactSensorProperties, _Mapping]] = ..., window_covering: _Optional[_Union[_properties_pb2.WindowCoveringProperties, _Mapping]] = ..., door_lock: _Optional[_Union[_properties_pb2.DoorLockProperties, _Mapping]] = ..., on_off_light: _Optional[_Union[_properties_pb2.OnOffLightProperties, _Mapping]] = ..., dimmable_light: _Optional[_Union[_properties_pb2.DimmableLightProperties, _Mapping]] = ..., color_temp_light: _Optional[_Union[_properties_pb2.ColorTemperatureLightProperties, _Mapping]] = ..., energy_sensor: _Optional[_Union[_properties_pb2.EnergySensorProperties, _Mapping]] = ..., pressure_sensor: _Optional[_Union[_properties_pb2.PressureSensorProperties, _Mapping]] = ..., power_source: _Optional[_Union[_properties_pb2.PowerSourceProperties, _Mapping]] = ..., hm_thermostat: _Optional[_Union[_homematic_pb2.HmThermostatProps, _Mapping]] = ..., hm_maintenance: _Optional[_Union[_homematic_pb2.HmMaintenanceProps, _Mapping]] = ..., radio_link: _Optional[_Union[RadioLink, _Mapping]] = ..., heat_source: _Optional[_Union[HeatSourceReadings, _Mapping]] = ..., attention: _Optional[_Union[DeviceAttention, _Mapping]] = ..., clusters: _Optional[_Iterable[_Union[_cluster_state_pb2.ClusterState, _Mapping]]] = ..., vendor_attribute_names: _Optional[_Iterable[str]] = ..., vendor_attribute_behaviours: _Optional[_Mapping[str, _cluster_state_pb2.AttributeBehaviour]] = ...) -> None: ...

class Device(_message.Message):
    __slots__ = ("descriptor", "endpoints", "min_write_interval_seconds", "max_write_delay_seconds", "last_seen", "last_updated")
    DESCRIPTOR_FIELD_NUMBER: _ClassVar[int]
    ENDPOINTS_FIELD_NUMBER: _ClassVar[int]
    MIN_WRITE_INTERVAL_SECONDS_FIELD_NUMBER: _ClassVar[int]
    MAX_WRITE_DELAY_SECONDS_FIELD_NUMBER: _ClassVar[int]
    LAST_SEEN_FIELD_NUMBER: _ClassVar[int]
    LAST_UPDATED_FIELD_NUMBER: _ClassVar[int]
    descriptor: _descriptor_pb2.DeviceDescriptor
    endpoints: _containers.RepeatedCompositeFieldContainer[Endpoint]
    min_write_interval_seconds: int
    max_write_delay_seconds: int
    last_seen: _timestamp_pb2.Timestamp
    last_updated: _timestamp_pb2.Timestamp
    def __init__(self, descriptor: _Optional[_Union[_descriptor_pb2.DeviceDescriptor, _Mapping]] = ..., endpoints: _Optional[_Iterable[_Union[Endpoint, _Mapping]]] = ..., min_write_interval_seconds: _Optional[int] = ..., max_write_delay_seconds: _Optional[int] = ..., last_seen: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., last_updated: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class HeatSourceReadings(_message.Message):
    __slots__ = ("outdoor_centidegrees", "supply_centidegrees", "return_centidegrees", "hot_water_top_centidegrees", "hot_water_charging_centidegrees", "calculated_supply_centidegrees", "producing", "compressor_state", "compressor_starts", "compressor_operating_hours", "compressor_hot_water_operating_hours", "degree_minutes", "alarm_active", "alarm_code", "add_on_heat_watts", "external_adjustment_active", "operating_mode", "heating_stop_outdoor_centidegrees", "add_on_stop_outdoor_centidegrees", "outdoor_filter_hours", "add_on_max_watts", "own_curve_in_force", "heating_curve", "heating_curve_offset", "min_supply_centidegrees", "own_curve_supply_plus_30_centidegrees", "own_curve_supply_plus_20_centidegrees", "own_curve_supply_plus_10_centidegrees", "own_curve_supply_0_centidegrees", "own_curve_supply_minus_10_centidegrees", "own_curve_supply_minus_20_centidegrees", "own_curve_supply_minus_30_centidegrees", "curve_point_outdoor_centidegrees", "curve_point_offset_centidegrees")
    OUTDOOR_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    RETURN_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    HOT_WATER_TOP_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    HOT_WATER_CHARGING_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    CALCULATED_SUPPLY_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    PRODUCING_FIELD_NUMBER: _ClassVar[int]
    COMPRESSOR_STATE_FIELD_NUMBER: _ClassVar[int]
    COMPRESSOR_STARTS_FIELD_NUMBER: _ClassVar[int]
    COMPRESSOR_OPERATING_HOURS_FIELD_NUMBER: _ClassVar[int]
    COMPRESSOR_HOT_WATER_OPERATING_HOURS_FIELD_NUMBER: _ClassVar[int]
    DEGREE_MINUTES_FIELD_NUMBER: _ClassVar[int]
    ALARM_ACTIVE_FIELD_NUMBER: _ClassVar[int]
    ALARM_CODE_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_HEAT_WATTS_FIELD_NUMBER: _ClassVar[int]
    EXTERNAL_ADJUSTMENT_ACTIVE_FIELD_NUMBER: _ClassVar[int]
    OPERATING_MODE_FIELD_NUMBER: _ClassVar[int]
    HEATING_STOP_OUTDOOR_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_STOP_OUTDOOR_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OUTDOOR_FILTER_HOURS_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_MAX_WATTS_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_IN_FORCE_FIELD_NUMBER: _ClassVar[int]
    HEATING_CURVE_FIELD_NUMBER: _ClassVar[int]
    HEATING_CURVE_OFFSET_FIELD_NUMBER: _ClassVar[int]
    MIN_SUPPLY_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_PLUS_30_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_PLUS_20_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_PLUS_10_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_0_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_MINUS_10_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_MINUS_20_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OWN_CURVE_SUPPLY_MINUS_30_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    CURVE_POINT_OUTDOOR_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    CURVE_POINT_OFFSET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    outdoor_centidegrees: int
    supply_centidegrees: int
    return_centidegrees: int
    hot_water_top_centidegrees: int
    hot_water_charging_centidegrees: int
    calculated_supply_centidegrees: int
    producing: int
    compressor_state: int
    compressor_starts: int
    compressor_operating_hours: int
    compressor_hot_water_operating_hours: int
    degree_minutes: int
    alarm_active: bool
    alarm_code: int
    add_on_heat_watts: int
    external_adjustment_active: bool
    operating_mode: int
    heating_stop_outdoor_centidegrees: int
    add_on_stop_outdoor_centidegrees: int
    outdoor_filter_hours: int
    add_on_max_watts: int
    own_curve_in_force: bool
    heating_curve: int
    heating_curve_offset: int
    min_supply_centidegrees: int
    own_curve_supply_plus_30_centidegrees: int
    own_curve_supply_plus_20_centidegrees: int
    own_curve_supply_plus_10_centidegrees: int
    own_curve_supply_0_centidegrees: int
    own_curve_supply_minus_10_centidegrees: int
    own_curve_supply_minus_20_centidegrees: int
    own_curve_supply_minus_30_centidegrees: int
    curve_point_outdoor_centidegrees: int
    curve_point_offset_centidegrees: int
    def __init__(self, outdoor_centidegrees: _Optional[int] = ..., supply_centidegrees: _Optional[int] = ..., return_centidegrees: _Optional[int] = ..., hot_water_top_centidegrees: _Optional[int] = ..., hot_water_charging_centidegrees: _Optional[int] = ..., calculated_supply_centidegrees: _Optional[int] = ..., producing: _Optional[int] = ..., compressor_state: _Optional[int] = ..., compressor_starts: _Optional[int] = ..., compressor_operating_hours: _Optional[int] = ..., compressor_hot_water_operating_hours: _Optional[int] = ..., degree_minutes: _Optional[int] = ..., alarm_active: _Optional[bool] = ..., alarm_code: _Optional[int] = ..., add_on_heat_watts: _Optional[int] = ..., external_adjustment_active: _Optional[bool] = ..., operating_mode: _Optional[int] = ..., heating_stop_outdoor_centidegrees: _Optional[int] = ..., add_on_stop_outdoor_centidegrees: _Optional[int] = ..., outdoor_filter_hours: _Optional[int] = ..., add_on_max_watts: _Optional[int] = ..., own_curve_in_force: _Optional[bool] = ..., heating_curve: _Optional[int] = ..., heating_curve_offset: _Optional[int] = ..., min_supply_centidegrees: _Optional[int] = ..., own_curve_supply_plus_30_centidegrees: _Optional[int] = ..., own_curve_supply_plus_20_centidegrees: _Optional[int] = ..., own_curve_supply_plus_10_centidegrees: _Optional[int] = ..., own_curve_supply_0_centidegrees: _Optional[int] = ..., own_curve_supply_minus_10_centidegrees: _Optional[int] = ..., own_curve_supply_minus_20_centidegrees: _Optional[int] = ..., own_curve_supply_minus_30_centidegrees: _Optional[int] = ..., curve_point_outdoor_centidegrees: _Optional[int] = ..., curve_point_offset_centidegrees: _Optional[int] = ...) -> None: ...

class DeviceAttention(_message.Message):
    __slots__ = ("attention_reason",)
    ATTENTION_REASON_FIELD_NUMBER: _ClassVar[int]
    attention_reason: int
    def __init__(self, attention_reason: _Optional[int] = ...) -> None: ...

class RadioLink(_message.Message):
    __slots__ = ("quality", "rssi_dbm", "snr_db")
    QUALITY_FIELD_NUMBER: _ClassVar[int]
    RSSI_DBM_FIELD_NUMBER: _ClassVar[int]
    SNR_DB_FIELD_NUMBER: _ClassVar[int]
    quality: int
    rssi_dbm: int
    snr_db: float
    def __init__(self, quality: _Optional[int] = ..., rssi_dbm: _Optional[int] = ..., snr_db: _Optional[float] = ...) -> None: ...
