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

class CommissioningState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    COMMISSIONING_STATE_UNSPECIFIED: _ClassVar[CommissioningState]
    COMMISSIONING_STATE_NOT_TESTED: _ClassVar[CommissioningState]
    COMMISSIONING_STATE_PASSED: _ClassVar[CommissioningState]
    COMMISSIONING_STATE_FAILED: _ClassVar[CommissioningState]

class HeatSourceKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HEAT_SOURCE_KIND_UNSPECIFIED: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_DISTRICT_HEATING: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_ELECTRIC_BOILER: _ClassVar[HeatSourceKind]
    HEAT_SOURCE_KIND_FUEL_BOILER: _ClassVar[HeatSourceKind]

class CircuitKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CIRCUIT_KIND_UNSPECIFIED: _ClassVar[CircuitKind]
    CIRCUIT_KIND_RADIATOR: _ClassVar[CircuitKind]
    CIRCUIT_KIND_FLOOR: _ClassVar[CircuitKind]
COMMISSIONING_STATE_UNSPECIFIED: CommissioningState
COMMISSIONING_STATE_NOT_TESTED: CommissioningState
COMMISSIONING_STATE_PASSED: CommissioningState
COMMISSIONING_STATE_FAILED: CommissioningState
HEAT_SOURCE_KIND_UNSPECIFIED: HeatSourceKind
HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_DISTRICT_HEATING: HeatSourceKind
HEAT_SOURCE_KIND_ELECTRIC_BOILER: HeatSourceKind
HEAT_SOURCE_KIND_FUEL_BOILER: HeatSourceKind
CIRCUIT_KIND_UNSPECIFIED: CircuitKind
CIRCUIT_KIND_RADIATOR: CircuitKind
CIRCUIT_KIND_FLOOR: CircuitKind

class ContactBinding(_message.Message):
    __slots__ = ("device_id", "output", "closed_value", "commissioning")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    CLOSED_VALUE_FIELD_NUMBER: _ClassVar[int]
    COMMISSIONING_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    output: _acl_pb2.AttributeRef
    closed_value: _cluster_state_pb2.AttributeValue
    commissioning: CommissioningState
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., output: _Optional[_Union[_acl_pb2.AttributeRef, _Mapping]] = ..., closed_value: _Optional[_Union[_cluster_state_pb2.AttributeValue, _Mapping]] = ..., commissioning: _Optional[_Union[CommissioningState, str]] = ...) -> None: ...

class ReadingBinding(_message.Message):
    __slots__ = ("device_id", "reading")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    READING_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    reading: _acl_pb2.AttributeRef
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., reading: _Optional[_Union[_acl_pb2.AttributeRef, _Mapping]] = ...) -> None: ...

class HeatingPlant(_message.Message):
    __slots__ = ("plant_id", "space_id", "name", "source", "heat_source_device_id", "sg_ready_block", "sg_ready_boost", "add_heat_block", "meter", "circuits", "revision")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    SOURCE_FIELD_NUMBER: _ClassVar[int]
    HEAT_SOURCE_DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    SG_READY_BLOCK_FIELD_NUMBER: _ClassVar[int]
    SG_READY_BOOST_FIELD_NUMBER: _ClassVar[int]
    ADD_HEAT_BLOCK_FIELD_NUMBER: _ClassVar[int]
    METER_FIELD_NUMBER: _ClassVar[int]
    CIRCUITS_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    space_id: _identity_pb2.SpaceId
    name: str
    source: HeatSourceKind
    heat_source_device_id: _identity_pb2.DeviceId
    sg_ready_block: ContactBinding
    sg_ready_boost: ContactBinding
    add_heat_block: ContactBinding
    meter: ReadingBinding
    circuits: _containers.RepeatedCompositeFieldContainer[HeatingCircuit]
    revision: int
    def __init__(self, plant_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., source: _Optional[_Union[HeatSourceKind, str]] = ..., heat_source_device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., sg_ready_block: _Optional[_Union[ContactBinding, _Mapping]] = ..., sg_ready_boost: _Optional[_Union[ContactBinding, _Mapping]] = ..., add_heat_block: _Optional[_Union[ContactBinding, _Mapping]] = ..., meter: _Optional[_Union[ReadingBinding, _Mapping]] = ..., circuits: _Optional[_Iterable[_Union[HeatingCircuit, _Mapping]]] = ..., revision: _Optional[int] = ...) -> None: ...

class HeatingCircuit(_message.Message):
    __slots__ = ("circuit_id", "name", "kind", "mixing_valve", "supply_cap_centidegrees", "supply_probe", "return_probe", "zones")
    CIRCUIT_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    MIXING_VALVE_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_CAP_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_PROBE_FIELD_NUMBER: _ClassVar[int]
    RETURN_PROBE_FIELD_NUMBER: _ClassVar[int]
    ZONES_FIELD_NUMBER: _ClassVar[int]
    circuit_id: str
    name: str
    kind: CircuitKind
    mixing_valve: bool
    supply_cap_centidegrees: int
    supply_probe: ReadingBinding
    return_probe: ReadingBinding
    zones: _containers.RepeatedCompositeFieldContainer[FloorZone]
    def __init__(self, circuit_id: _Optional[str] = ..., name: _Optional[str] = ..., kind: _Optional[_Union[CircuitKind, str]] = ..., mixing_valve: _Optional[bool] = ..., supply_cap_centidegrees: _Optional[int] = ..., supply_probe: _Optional[_Union[ReadingBinding, _Mapping]] = ..., return_probe: _Optional[_Union[ReadingBinding, _Mapping]] = ..., zones: _Optional[_Iterable[_Union[FloorZone, _Mapping]]] = ...) -> None: ...

class FloorZone(_message.Message):
    __slots__ = ("zone_id", "name", "output", "rooms")
    ZONE_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    ROOMS_FIELD_NUMBER: _ClassVar[int]
    zone_id: str
    name: str
    output: ContactBinding
    rooms: _containers.RepeatedCompositeFieldContainer[FloorZoneRoom]
    def __init__(self, zone_id: _Optional[str] = ..., name: _Optional[str] = ..., output: _Optional[_Union[ContactBinding, _Mapping]] = ..., rooms: _Optional[_Iterable[_Union[FloorZoneRoom, _Mapping]]] = ...) -> None: ...

class FloorZoneRoom(_message.Message):
    __slots__ = ("room_id", "area_share_permille", "is_control")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    AREA_SHARE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    IS_CONTROL_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    area_share_permille: int
    is_control: bool
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., area_share_permille: _Optional[int] = ..., is_control: _Optional[bool] = ...) -> None: ...

class ComfortLoad(_message.Message):
    __slots__ = ("comfort_load_id", "room_id", "name", "output", "windows")
    COMFORT_LOAD_ID_FIELD_NUMBER: _ClassVar[int]
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_FIELD_NUMBER: _ClassVar[int]
    comfort_load_id: str
    room_id: _identity_pb2.SpaceId
    name: str
    output: ContactBinding
    windows: _containers.RepeatedCompositeFieldContainer[ComfortWindow]
    def __init__(self, comfort_load_id: _Optional[str] = ..., room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., output: _Optional[_Union[ContactBinding, _Mapping]] = ..., windows: _Optional[_Iterable[_Union[ComfortWindow, _Mapping]]] = ...) -> None: ...

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
    __slots__ = ("plants", "comfort_loads")
    PLANTS_FIELD_NUMBER: _ClassVar[int]
    COMFORT_LOADS_FIELD_NUMBER: _ClassVar[int]
    plants: _containers.RepeatedCompositeFieldContainer[HeatingPlant]
    comfort_loads: _containers.RepeatedCompositeFieldContainer[ComfortLoad]
    def __init__(self, plants: _Optional[_Iterable[_Union[HeatingPlant, _Mapping]]] = ..., comfort_loads: _Optional[_Iterable[_Union[ComfortLoad, _Mapping]]] = ...) -> None: ...
