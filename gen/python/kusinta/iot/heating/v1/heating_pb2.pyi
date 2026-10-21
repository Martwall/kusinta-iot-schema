from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from kusinta.iot.device.v1 import cluster_state_pb2 as _cluster_state_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class HeatSourceKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HEAT_SOURCE_KIND_UNSPECIFIED: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_DISTRICT_HEATING: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_ELECTRIC_BOILER: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_FUEL_BOILER: _ClassVar[HeatSourceKind]
HEAT_SOURCE_KIND_UNSPECIFIED: HeatSourceKind
HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_DISTRICT_HEATING: HeatSourceKind
HEAT_SOURCE_KIND_ELECTRIC_BOILER: HeatSourceKind
HEAT_SOURCE_KIND_FUEL_BOILER: HeatSourceKind

class DeviceAttribute(_message.Message):
    __slots__ = ("device_id", "attribute")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTE_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    attribute: _acl_pb2.AttributeRef
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., attribute: _Optional[_Union[_acl_pb2.AttributeRef, _Mapping]] = ...) -> None: ...

class ContactBinding(_message.Message):
    __slots__ = ("output", "closed_value")
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    CLOSED_VALUE_FIELD_NUMBER: _ClassVar[int]
    output: DeviceAttribute
    closed_value: _cluster_state_pb2.AttributeValue
    def __init__(self, output: _Optional[_Union[DeviceAttribute, _Mapping]] = ..., closed_value: _Optional[_Union[_cluster_state_pb2.AttributeValue, _Mapping]] = ...) -> None: ...

class HeatingPlant(_message.Message):
    __slots__ = ("plant_id", "space_id", "name", "source", "readings_device_id", "heat_pump", "meter", "revision")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    SOURCE_FIELD_NUMBER: _ClassVar[int]
    READINGS_DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    HEAT_PUMP_FIELD_NUMBER: _ClassVar[int]
    METER_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    space_id: _identity_pb2.SpaceId
    name: str
    source: HeatSourceKind
    readings_device_id: _identity_pb2.DeviceId
    heat_pump: HeatPumpControl
    meter: DeviceAttribute
    revision: int
    def __init__(self, plant_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., source: _Optional[_Union[HeatSourceKind, str]] = ..., readings_device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., heat_pump: _Optional[_Union[HeatPumpControl, _Mapping]] = ..., meter: _Optional[_Union[DeviceAttribute, _Mapping]] = ..., revision: _Optional[int] = ...) -> None: ...

class HeatPumpControl(_message.Message):
    __slots__ = ("sg_ready_block", "sg_ready_boost", "add_on_heater_block")
    SG_READY_BLOCK_FIELD_NUMBER: _ClassVar[int]
    SG_READY_BOOST_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_HEATER_BLOCK_FIELD_NUMBER: _ClassVar[int]
    sg_ready_block: ContactBinding
    sg_ready_boost: ContactBinding
    add_on_heater_block: ContactBinding
    def __init__(self, sg_ready_block: _Optional[_Union[ContactBinding, _Mapping]] = ..., sg_ready_boost: _Optional[_Union[ContactBinding, _Mapping]] = ..., add_on_heater_block: _Optional[_Union[ContactBinding, _Mapping]] = ...) -> None: ...

class HeatingCircuit(_message.Message):
    __slots__ = ("circuit_id", "plant_id", "name", "radiator", "floor", "revision")
    CIRCUIT_ID_FIELD_NUMBER: _ClassVar[int]
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    RADIATOR_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    circuit_id: str
    plant_id: str
    name: str
    radiator: RadiatorCircuit
    floor: FloorCircuit
    revision: int
    def __init__(self, circuit_id: _Optional[str] = ..., plant_id: _Optional[str] = ..., name: _Optional[str] = ..., radiator: _Optional[_Union[RadiatorCircuit, _Mapping]] = ..., floor: _Optional[_Union[FloorCircuit, _Mapping]] = ..., revision: _Optional[int] = ...) -> None: ...

class RadiatorCircuit(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class FloorCircuit(_message.Message):
    __slots__ = ("mixing_valve", "supply_cap_centidegrees", "supply_probe", "return_probe")
    MIXING_VALVE_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_CAP_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_PROBE_FIELD_NUMBER: _ClassVar[int]
    RETURN_PROBE_FIELD_NUMBER: _ClassVar[int]
    mixing_valve: bool
    supply_cap_centidegrees: int
    supply_probe: DeviceAttribute
    return_probe: DeviceAttribute
    def __init__(self, mixing_valve: _Optional[bool] = ..., supply_cap_centidegrees: _Optional[int] = ..., supply_probe: _Optional[_Union[DeviceAttribute, _Mapping]] = ..., return_probe: _Optional[_Union[DeviceAttribute, _Mapping]] = ...) -> None: ...

class FloorZone(_message.Message):
    __slots__ = ("zone_id", "circuit_id", "name", "output", "rooms", "control_room_id", "revision")
    ZONE_ID_FIELD_NUMBER: _ClassVar[int]
    CIRCUIT_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    ROOMS_FIELD_NUMBER: _ClassVar[int]
    CONTROL_ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    zone_id: str
    circuit_id: str
    name: str
    output: ContactBinding
    rooms: _containers.RepeatedCompositeFieldContainer[FloorZoneRoom]
    control_room_id: _identity_pb2.SpaceId
    revision: int
    def __init__(self, zone_id: _Optional[str] = ..., circuit_id: _Optional[str] = ..., name: _Optional[str] = ..., output: _Optional[_Union[ContactBinding, _Mapping]] = ..., rooms: _Optional[_Iterable[_Union[FloorZoneRoom, _Mapping]]] = ..., control_room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., revision: _Optional[int] = ...) -> None: ...

class FloorZoneRoom(_message.Message):
    __slots__ = ("room_id", "area_share_permille")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    AREA_SHARE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    area_share_permille: int
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., area_share_permille: _Optional[int] = ...) -> None: ...

class ComfortLoad(_message.Message):
    __slots__ = ("comfort_load_id", "room_id", "name", "output", "windows", "revision")
    COMFORT_LOAD_ID_FIELD_NUMBER: _ClassVar[int]
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    comfort_load_id: str
    room_id: _identity_pb2.SpaceId
    name: str
    output: ContactBinding
    windows: _containers.RepeatedCompositeFieldContainer[ComfortWindow]
    revision: int
    def __init__(self, comfort_load_id: _Optional[str] = ..., room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., output: _Optional[_Union[ContactBinding, _Mapping]] = ..., windows: _Optional[_Iterable[_Union[ComfortWindow, _Mapping]]] = ..., revision: _Optional[int] = ...) -> None: ...

class ComfortWindow(_message.Message):
    __slots__ = ("weekdays", "start_minute", "end_minute")
    WEEKDAYS_FIELD_NUMBER: _ClassVar[int]
    START_MINUTE_FIELD_NUMBER: _ClassVar[int]
    END_MINUTE_FIELD_NUMBER: _ClassVar[int]
    weekdays: int
    start_minute: int
    end_minute: int
    def __init__(self, weekdays: _Optional[int] = ..., start_minute: _Optional[int] = ..., end_minute: _Optional[int] = ...) -> None: ...

class HeatingLayout(_message.Message):
    __slots__ = ("plants", "circuits", "floor_zones", "comfort_loads")
    PLANTS_FIELD_NUMBER: _ClassVar[int]
    CIRCUITS_FIELD_NUMBER: _ClassVar[int]
    FLOOR_ZONES_FIELD_NUMBER: _ClassVar[int]
    COMFORT_LOADS_FIELD_NUMBER: _ClassVar[int]
    plants: _containers.RepeatedCompositeFieldContainer[HeatingPlant]
    circuits: _containers.RepeatedCompositeFieldContainer[HeatingCircuit]
    floor_zones: _containers.RepeatedCompositeFieldContainer[FloorZone]
    comfort_loads: _containers.RepeatedCompositeFieldContainer[ComfortLoad]
    def __init__(self, plants: _Optional[_Iterable[_Union[HeatingPlant, _Mapping]]] = ..., circuits: _Optional[_Iterable[_Union[HeatingCircuit, _Mapping]]] = ..., floor_zones: _Optional[_Iterable[_Union[FloorZone, _Mapping]]] = ..., comfort_loads: _Optional[_Iterable[_Union[ComfortLoad, _Mapping]]] = ...) -> None: ...

class HeatingRecord(_message.Message):
    __slots__ = ("plant", "circuit", "floor_zone", "comfort_load")
    PLANT_FIELD_NUMBER: _ClassVar[int]
    CIRCUIT_FIELD_NUMBER: _ClassVar[int]
    FLOOR_ZONE_FIELD_NUMBER: _ClassVar[int]
    COMFORT_LOAD_FIELD_NUMBER: _ClassVar[int]
    plant: HeatingPlant
    circuit: HeatingCircuit
    floor_zone: FloorZone
    comfort_load: ComfortLoad
    def __init__(self, plant: _Optional[_Union[HeatingPlant, _Mapping]] = ..., circuit: _Optional[_Union[HeatingCircuit, _Mapping]] = ..., floor_zone: _Optional[_Union[FloorZone, _Mapping]] = ..., comfort_load: _Optional[_Union[ComfortLoad, _Mapping]] = ...) -> None: ...
