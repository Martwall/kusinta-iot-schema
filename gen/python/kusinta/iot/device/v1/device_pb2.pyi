import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.device.v1 import descriptor_pb2 as _descriptor_pb2
from kusinta.iot.device.v1 import properties_pb2 as _properties_pb2
from kusinta.iot.vendor.homematic.v1 import homematic_pb2 as _homematic_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Device(_message.Message):
    __slots__ = ("descriptor", "thermostat", "temperature_sensor", "humidity_sensor", "occupancy_sensor", "contact_sensor", "window_covering", "door_lock", "on_off_light", "dimmable_light", "color_temp_light", "energy_sensor", "pressure_sensor", "homematic", "last_seen", "last_updated")
    DESCRIPTOR_FIELD_NUMBER: _ClassVar[int]
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
    HOMEMATIC_FIELD_NUMBER: _ClassVar[int]
    LAST_SEEN_FIELD_NUMBER: _ClassVar[int]
    LAST_UPDATED_FIELD_NUMBER: _ClassVar[int]
    descriptor: _descriptor_pb2.DeviceDescriptor
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
    homematic: _homematic_pb2.HomematicVendorExtension
    last_seen: _timestamp_pb2.Timestamp
    last_updated: _timestamp_pb2.Timestamp
    def __init__(self, descriptor: _Optional[_Union[_descriptor_pb2.DeviceDescriptor, _Mapping]] = ..., thermostat: _Optional[_Union[_properties_pb2.ThermostatProperties, _Mapping]] = ..., temperature_sensor: _Optional[_Union[_properties_pb2.TemperatureSensorProperties, _Mapping]] = ..., humidity_sensor: _Optional[_Union[_properties_pb2.HumiditySensorProperties, _Mapping]] = ..., occupancy_sensor: _Optional[_Union[_properties_pb2.OccupancySensorProperties, _Mapping]] = ..., contact_sensor: _Optional[_Union[_properties_pb2.ContactSensorProperties, _Mapping]] = ..., window_covering: _Optional[_Union[_properties_pb2.WindowCoveringProperties, _Mapping]] = ..., door_lock: _Optional[_Union[_properties_pb2.DoorLockProperties, _Mapping]] = ..., on_off_light: _Optional[_Union[_properties_pb2.OnOffLightProperties, _Mapping]] = ..., dimmable_light: _Optional[_Union[_properties_pb2.DimmableLightProperties, _Mapping]] = ..., color_temp_light: _Optional[_Union[_properties_pb2.ColorTemperatureLightProperties, _Mapping]] = ..., energy_sensor: _Optional[_Union[_properties_pb2.EnergySensorProperties, _Mapping]] = ..., pressure_sensor: _Optional[_Union[_properties_pb2.PressureSensorProperties, _Mapping]] = ..., homematic: _Optional[_Union[_homematic_pb2.HomematicVendorExtension, _Mapping]] = ..., last_seen: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., last_updated: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
