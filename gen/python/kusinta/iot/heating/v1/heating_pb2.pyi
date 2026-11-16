import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
from kusinta.iot.climate.v1 import climate_pb2 as _climate_pb2
from kusinta.iot.device.v1 import cluster_state_pb2 as _cluster_state_pb2
from kusinta.iot.device.v1 import device_pb2 as _device_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.planning.v1 import planning_pb2 as _planning_pb2
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

class CircuitMixing(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CIRCUIT_MIXING_UNSPECIFIED: _ClassVar[CircuitMixing]
    CIRCUIT_MIXING_MIXED: _ClassVar[CircuitMixing]
    CIRCUIT_MIXING_UNMIXED: _ClassVar[CircuitMixing]

class PriceRule(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PRICE_RULE_UNSPECIFIED: _ClassVar[PriceRule]
    PRICE_RULE_ADD_ON_HEATER_BLOCK: _ClassVar[PriceRule]
    PRICE_RULE_FLOOR_PRE_HEAT: _ClassVar[PriceRule]
    PRICE_RULE_HOT_WATER: _ClassVar[PriceRule]

class PriceRuleMode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PRICE_RULE_MODE_UNSPECIFIED: _ClassVar[PriceRuleMode]
    PRICE_RULE_MODE_OFF: _ClassVar[PriceRuleMode]
    PRICE_RULE_MODE_SHADOW: _ClassVar[PriceRuleMode]
    PRICE_RULE_MODE_LIVE: _ClassVar[PriceRuleMode]

class HeatBlockEnd(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HEAT_BLOCK_END_UNSPECIFIED: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_PLANNED: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_ROOM_BELOW_BAND: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_HOT_WATER_LOW: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_RELEASED: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_RULE_SWITCHED: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_INTERRUPTED: _ClassVar[HeatBlockEnd]
    HEAT_BLOCK_END_UNSTATED: _ClassVar[HeatBlockEnd]

class ShadowPriceBasis(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    SHADOW_PRICE_BASIS_UNSPECIFIED: _ClassVar[ShadowPriceBasis]
    SHADOW_PRICE_BASIS_SPOT: _ClassVar[ShadowPriceBasis]
    SHADOW_PRICE_BASIS_PAYER: _ClassVar[ShadowPriceBasis]

class EnergyPriceAdderSource(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED: _ClassVar[EnergyPriceAdderSource]
    ENERGY_PRICE_ADDER_SOURCE_DEFAULT: _ClassVar[EnergyPriceAdderSource]
    ENERGY_PRICE_ADDER_SOURCE_STATED: _ClassVar[EnergyPriceAdderSource]

class HeatCurveLimitReason(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HEAT_CURVE_LIMIT_REASON_UNSPECIFIED: _ClassVar[HeatCurveLimitReason]
    HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE: _ClassVar[HeatCurveLimitReason]
    HEAT_CURVE_LIMIT_REASON_DEMAND: _ClassVar[HeatCurveLimitReason]
HEAT_SOURCE_KIND_UNSPECIFIED: HeatSourceKind
HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP: HeatSourceKind
HEAT_SOURCE_KIND_DISTRICT_HEATING: HeatSourceKind
HEAT_SOURCE_KIND_ELECTRIC_BOILER: HeatSourceKind
HEAT_SOURCE_KIND_FUEL_BOILER: HeatSourceKind
CIRCUIT_MIXING_UNSPECIFIED: CircuitMixing
CIRCUIT_MIXING_MIXED: CircuitMixing
CIRCUIT_MIXING_UNMIXED: CircuitMixing
PRICE_RULE_UNSPECIFIED: PriceRule
PRICE_RULE_ADD_ON_HEATER_BLOCK: PriceRule
PRICE_RULE_FLOOR_PRE_HEAT: PriceRule
PRICE_RULE_HOT_WATER: PriceRule
PRICE_RULE_MODE_UNSPECIFIED: PriceRuleMode
PRICE_RULE_MODE_OFF: PriceRuleMode
PRICE_RULE_MODE_SHADOW: PriceRuleMode
PRICE_RULE_MODE_LIVE: PriceRuleMode
HEAT_BLOCK_END_UNSPECIFIED: HeatBlockEnd
HEAT_BLOCK_END_PLANNED: HeatBlockEnd
HEAT_BLOCK_END_ROOM_BELOW_BAND: HeatBlockEnd
HEAT_BLOCK_END_HOT_WATER_LOW: HeatBlockEnd
HEAT_BLOCK_END_RELEASED: HeatBlockEnd
HEAT_BLOCK_END_RULE_SWITCHED: HeatBlockEnd
HEAT_BLOCK_END_INTERRUPTED: HeatBlockEnd
HEAT_BLOCK_END_UNSTATED: HeatBlockEnd
SHADOW_PRICE_BASIS_UNSPECIFIED: ShadowPriceBasis
SHADOW_PRICE_BASIS_SPOT: ShadowPriceBasis
SHADOW_PRICE_BASIS_PAYER: ShadowPriceBasis
ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED: EnergyPriceAdderSource
ENERGY_PRICE_ADDER_SOURCE_DEFAULT: EnergyPriceAdderSource
ENERGY_PRICE_ADDER_SOURCE_STATED: EnergyPriceAdderSource
HEAT_CURVE_LIMIT_REASON_UNSPECIFIED: HeatCurveLimitReason
HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE: HeatCurveLimitReason
HEAT_CURVE_LIMIT_REASON_DEMAND: HeatCurveLimitReason

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
    __slots__ = ("plant_id", "space_id", "name", "source", "readings_device_id", "heat_pump", "meter", "revision", "price_rules", "price_rules_revision")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    SOURCE_FIELD_NUMBER: _ClassVar[int]
    READINGS_DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    HEAT_PUMP_FIELD_NUMBER: _ClassVar[int]
    METER_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    PRICE_RULES_FIELD_NUMBER: _ClassVar[int]
    PRICE_RULES_REVISION_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    space_id: _identity_pb2.SpaceId
    name: str
    source: HeatSourceKind
    readings_device_id: _identity_pb2.DeviceId
    heat_pump: HeatPumpControl
    meter: DeviceAttribute
    revision: int
    price_rules: _containers.RepeatedCompositeFieldContainer[PriceRuleChange]
    price_rules_revision: int
    def __init__(self, plant_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., source: _Optional[_Union[HeatSourceKind, str]] = ..., readings_device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., heat_pump: _Optional[_Union[HeatPumpControl, _Mapping]] = ..., meter: _Optional[_Union[DeviceAttribute, _Mapping]] = ..., revision: _Optional[int] = ..., price_rules: _Optional[_Iterable[_Union[PriceRuleChange, _Mapping]]] = ..., price_rules_revision: _Optional[int] = ...) -> None: ...

class HeatPumpControl(_message.Message):
    __slots__ = ("sg_ready_block", "sg_ready_boost", "add_on_heater_block", "hot_water_block", "curve_adjustment")
    SG_READY_BLOCK_FIELD_NUMBER: _ClassVar[int]
    SG_READY_BOOST_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_HEATER_BLOCK_FIELD_NUMBER: _ClassVar[int]
    HOT_WATER_BLOCK_FIELD_NUMBER: _ClassVar[int]
    CURVE_ADJUSTMENT_FIELD_NUMBER: _ClassVar[int]
    sg_ready_block: ContactBinding
    sg_ready_boost: ContactBinding
    add_on_heater_block: ContactBinding
    hot_water_block: ContactBinding
    curve_adjustment: ContactBinding
    def __init__(self, sg_ready_block: _Optional[_Union[ContactBinding, _Mapping]] = ..., sg_ready_boost: _Optional[_Union[ContactBinding, _Mapping]] = ..., add_on_heater_block: _Optional[_Union[ContactBinding, _Mapping]] = ..., hot_water_block: _Optional[_Union[ContactBinding, _Mapping]] = ..., curve_adjustment: _Optional[_Union[ContactBinding, _Mapping]] = ...) -> None: ...

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
    __slots__ = ("mixing", "supply_probe")
    MIXING_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_PROBE_FIELD_NUMBER: _ClassVar[int]
    mixing: CircuitMixing
    supply_probe: DeviceAttribute
    def __init__(self, mixing: _Optional[_Union[CircuitMixing, str]] = ..., supply_probe: _Optional[_Union[DeviceAttribute, _Mapping]] = ...) -> None: ...

class FloorCircuit(_message.Message):
    __slots__ = ("mixing_valve", "mixing", "supply_cap_centidegrees", "supply_probe", "return_probe")
    MIXING_VALVE_FIELD_NUMBER: _ClassVar[int]
    MIXING_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_CAP_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_PROBE_FIELD_NUMBER: _ClassVar[int]
    RETURN_PROBE_FIELD_NUMBER: _ClassVar[int]
    mixing_valve: bool
    mixing: CircuitMixing
    supply_cap_centidegrees: int
    supply_probe: DeviceAttribute
    return_probe: DeviceAttribute
    def __init__(self, mixing_valve: _Optional[bool] = ..., mixing: _Optional[_Union[CircuitMixing, str]] = ..., supply_cap_centidegrees: _Optional[int] = ..., supply_probe: _Optional[_Union[DeviceAttribute, _Mapping]] = ..., return_probe: _Optional[_Union[DeviceAttribute, _Mapping]] = ...) -> None: ...

class FloorZone(_message.Message):
    __slots__ = ("zone_id", "circuit_id", "name", "output", "rooms", "control_room_id", "revision", "uncontrolled_since", "uncontrolled_by")
    ZONE_ID_FIELD_NUMBER: _ClassVar[int]
    CIRCUIT_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    ROOMS_FIELD_NUMBER: _ClassVar[int]
    CONTROL_ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    UNCONTROLLED_SINCE_FIELD_NUMBER: _ClassVar[int]
    UNCONTROLLED_BY_FIELD_NUMBER: _ClassVar[int]
    zone_id: str
    circuit_id: str
    name: str
    output: ContactBinding
    rooms: _containers.RepeatedCompositeFieldContainer[FloorZoneRoom]
    control_room_id: _identity_pb2.SpaceId
    revision: int
    uncontrolled_since: _timestamp_pb2.Timestamp
    uncontrolled_by: _identity_pb2.UserId
    def __init__(self, zone_id: _Optional[str] = ..., circuit_id: _Optional[str] = ..., name: _Optional[str] = ..., output: _Optional[_Union[ContactBinding, _Mapping]] = ..., rooms: _Optional[_Iterable[_Union[FloorZoneRoom, _Mapping]]] = ..., control_room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., revision: _Optional[int] = ..., uncontrolled_since: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., uncontrolled_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class FloorZoneRoom(_message.Message):
    __slots__ = ("room_id", "area_share_permille")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    AREA_SHARE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    area_share_permille: int
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., area_share_permille: _Optional[int] = ...) -> None: ...

class ComfortLoad(_message.Message):
    __slots__ = ("comfort_load_id", "room_id", "name", "output", "windows", "revision", "windows_revision", "windows_withheld")
    COMFORT_LOAD_ID_FIELD_NUMBER: _ClassVar[int]
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OUTPUT_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_REVISION_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_WITHHELD_FIELD_NUMBER: _ClassVar[int]
    comfort_load_id: str
    room_id: _identity_pb2.SpaceId
    name: str
    output: ContactBinding
    windows: _containers.RepeatedCompositeFieldContainer[ComfortWindow]
    revision: int
    windows_revision: int
    windows_withheld: bool
    def __init__(self, comfort_load_id: _Optional[str] = ..., room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., output: _Optional[_Union[ContactBinding, _Mapping]] = ..., windows: _Optional[_Iterable[_Union[ComfortWindow, _Mapping]]] = ..., revision: _Optional[int] = ..., windows_revision: _Optional[int] = ..., windows_withheld: _Optional[bool] = ...) -> None: ...

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

class PriceRuleChange(_message.Message):
    __slots__ = ("rule", "mode", "previous_mode", "at", "set_by_role", "set_by")
    RULE_FIELD_NUMBER: _ClassVar[int]
    MODE_FIELD_NUMBER: _ClassVar[int]
    PREVIOUS_MODE_FIELD_NUMBER: _ClassVar[int]
    AT_FIELD_NUMBER: _ClassVar[int]
    SET_BY_ROLE_FIELD_NUMBER: _ClassVar[int]
    SET_BY_FIELD_NUMBER: _ClassVar[int]
    rule: PriceRule
    mode: PriceRuleMode
    previous_mode: PriceRuleMode
    at: _timestamp_pb2.Timestamp
    set_by_role: _roles_pb2.Role
    set_by: _identity_pb2.UserId
    def __init__(self, rule: _Optional[_Union[PriceRule, str]] = ..., mode: _Optional[_Union[PriceRuleMode, str]] = ..., previous_mode: _Optional[_Union[PriceRuleMode, str]] = ..., at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., set_by_role: _Optional[_Union[_roles_pb2.Role, str]] = ..., set_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class HeatBlock(_message.Message):
    __slots__ = ("block_id", "rule", "mode", "reason", "started_at", "planned_end_at", "ended_at", "end")
    BLOCK_ID_FIELD_NUMBER: _ClassVar[int]
    RULE_FIELD_NUMBER: _ClassVar[int]
    MODE_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    STARTED_AT_FIELD_NUMBER: _ClassVar[int]
    PLANNED_END_AT_FIELD_NUMBER: _ClassVar[int]
    ENDED_AT_FIELD_NUMBER: _ClassVar[int]
    END_FIELD_NUMBER: _ClassVar[int]
    block_id: str
    rule: PriceRule
    mode: PriceRuleMode
    reason: _climate_pb2.ClimateExplanationKind
    started_at: _timestamp_pb2.Timestamp
    planned_end_at: _timestamp_pb2.Timestamp
    ended_at: _timestamp_pb2.Timestamp
    end: HeatBlockEnd
    def __init__(self, block_id: _Optional[str] = ..., rule: _Optional[_Union[PriceRule, str]] = ..., mode: _Optional[_Union[PriceRuleMode, str]] = ..., reason: _Optional[_Union[_climate_pb2.ClimateExplanationKind, str]] = ..., started_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., planned_end_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ended_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., end: _Optional[_Union[HeatBlockEnd, str]] = ...) -> None: ...

class HeatBlockRelease(_message.Message):
    __slots__ = ("at", "hold_until", "ended_block_ids", "set_by_role", "set_by")
    AT_FIELD_NUMBER: _ClassVar[int]
    HOLD_UNTIL_FIELD_NUMBER: _ClassVar[int]
    ENDED_BLOCK_IDS_FIELD_NUMBER: _ClassVar[int]
    SET_BY_ROLE_FIELD_NUMBER: _ClassVar[int]
    SET_BY_FIELD_NUMBER: _ClassVar[int]
    at: _timestamp_pb2.Timestamp
    hold_until: _timestamp_pb2.Timestamp
    ended_block_ids: _containers.RepeatedScalarFieldContainer[str]
    set_by_role: _roles_pb2.Role
    set_by: _identity_pb2.UserId
    def __init__(self, at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., hold_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ended_block_ids: _Optional[_Iterable[str]] = ..., set_by_role: _Optional[_Union[_roles_pb2.Role, str]] = ..., set_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class HeatBlockStatus(_message.Message):
    __slots__ = ("plant_id", "space_id", "plant_name", "current", "hold", "price_rules")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    PLANT_NAME_FIELD_NUMBER: _ClassVar[int]
    CURRENT_FIELD_NUMBER: _ClassVar[int]
    HOLD_FIELD_NUMBER: _ClassVar[int]
    PRICE_RULES_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    space_id: _identity_pb2.SpaceId
    plant_name: str
    current: _containers.RepeatedCompositeFieldContainer[HeatBlock]
    hold: HeatBlockRelease
    price_rules: _containers.RepeatedCompositeFieldContainer[PriceRuleChange]
    def __init__(self, plant_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., plant_name: _Optional[str] = ..., current: _Optional[_Iterable[_Union[HeatBlock, _Mapping]]] = ..., hold: _Optional[_Union[HeatBlockRelease, _Mapping]] = ..., price_rules: _Optional[_Iterable[_Union[PriceRuleChange, _Mapping]]] = ...) -> None: ...

class HeatBlockStatuses(_message.Message):
    __slots__ = ("statuses",)
    STATUSES_FIELD_NUMBER: _ClassVar[int]
    statuses: _containers.RepeatedCompositeFieldContainer[HeatBlockStatus]
    def __init__(self, statuses: _Optional[_Iterable[_Union[HeatBlockStatus, _Mapping]]] = ...) -> None: ...

class HeatBlockHistory(_message.Message):
    __slots__ = ("plant_id", "kept_from", "blocks", "releases", "rule_changes")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    KEPT_FROM_FIELD_NUMBER: _ClassVar[int]
    BLOCKS_FIELD_NUMBER: _ClassVar[int]
    RELEASES_FIELD_NUMBER: _ClassVar[int]
    RULE_CHANGES_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    kept_from: _timestamp_pb2.Timestamp
    blocks: _containers.RepeatedCompositeFieldContainer[HeatBlock]
    releases: _containers.RepeatedCompositeFieldContainer[HeatBlockRelease]
    rule_changes: _containers.RepeatedCompositeFieldContainer[PriceRuleChange]
    def __init__(self, plant_id: _Optional[str] = ..., kept_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., blocks: _Optional[_Iterable[_Union[HeatBlock, _Mapping]]] = ..., releases: _Optional[_Iterable[_Union[HeatBlockRelease, _Mapping]]] = ..., rule_changes: _Optional[_Iterable[_Union[PriceRuleChange, _Mapping]]] = ...) -> None: ...

class ShadowDay(_message.Message):
    __slots__ = ("date", "net_saving_micro_eur", "recovery_cost_micro_eur", "blocked_quarters", "breach_quarters", "overheat_quarters", "no_price_quarters", "cautious_net_saving_micro_eur", "saving_share_permille", "cautious_saving_share_permille", "counts_only", "share_weight", "price_basis", "adder_source", "rate_published_on")
    DATE_FIELD_NUMBER: _ClassVar[int]
    NET_SAVING_MICRO_EUR_FIELD_NUMBER: _ClassVar[int]
    RECOVERY_COST_MICRO_EUR_FIELD_NUMBER: _ClassVar[int]
    BLOCKED_QUARTERS_FIELD_NUMBER: _ClassVar[int]
    BREACH_QUARTERS_FIELD_NUMBER: _ClassVar[int]
    OVERHEAT_QUARTERS_FIELD_NUMBER: _ClassVar[int]
    NO_PRICE_QUARTERS_FIELD_NUMBER: _ClassVar[int]
    CAUTIOUS_NET_SAVING_MICRO_EUR_FIELD_NUMBER: _ClassVar[int]
    SAVING_SHARE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    CAUTIOUS_SAVING_SHARE_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    COUNTS_ONLY_FIELD_NUMBER: _ClassVar[int]
    SHARE_WEIGHT_FIELD_NUMBER: _ClassVar[int]
    PRICE_BASIS_FIELD_NUMBER: _ClassVar[int]
    ADDER_SOURCE_FIELD_NUMBER: _ClassVar[int]
    RATE_PUBLISHED_ON_FIELD_NUMBER: _ClassVar[int]
    date: str
    net_saving_micro_eur: int
    recovery_cost_micro_eur: int
    blocked_quarters: int
    breach_quarters: int
    overheat_quarters: int
    no_price_quarters: int
    cautious_net_saving_micro_eur: int
    saving_share_permille: int
    cautious_saving_share_permille: int
    counts_only: bool
    share_weight: int
    price_basis: ShadowPriceBasis
    adder_source: EnergyPriceAdderSource
    rate_published_on: str
    def __init__(self, date: _Optional[str] = ..., net_saving_micro_eur: _Optional[int] = ..., recovery_cost_micro_eur: _Optional[int] = ..., blocked_quarters: _Optional[int] = ..., breach_quarters: _Optional[int] = ..., overheat_quarters: _Optional[int] = ..., no_price_quarters: _Optional[int] = ..., cautious_net_saving_micro_eur: _Optional[int] = ..., saving_share_permille: _Optional[int] = ..., cautious_saving_share_permille: _Optional[int] = ..., counts_only: _Optional[bool] = ..., share_weight: _Optional[int] = ..., price_basis: _Optional[_Union[ShadowPriceBasis, str]] = ..., adder_source: _Optional[_Union[EnergyPriceAdderSource, str]] = ..., rate_published_on: _Optional[str] = ...) -> None: ...

class ShadowBandSeries(_message.Message):
    __slots__ = ("plant_id", "rule", "below_target_centidegrees", "above_target_centidegrees", "days")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    RULE_FIELD_NUMBER: _ClassVar[int]
    BELOW_TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    ABOVE_TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    DAYS_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    rule: PriceRule
    below_target_centidegrees: int
    above_target_centidegrees: int
    days: _containers.RepeatedCompositeFieldContainer[ShadowDay]
    def __init__(self, plant_id: _Optional[str] = ..., rule: _Optional[_Union[PriceRule, str]] = ..., below_target_centidegrees: _Optional[int] = ..., above_target_centidegrees: _Optional[int] = ..., days: _Optional[_Iterable[_Union[ShadowDay, _Mapping]]] = ...) -> None: ...

class ShadowSummary(_message.Message):
    __slots__ = ("home_id", "kept_from", "series", "exchange_rates", "price_terms")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    KEPT_FROM_FIELD_NUMBER: _ClassVar[int]
    SERIES_FIELD_NUMBER: _ClassVar[int]
    EXCHANGE_RATES_FIELD_NUMBER: _ClassVar[int]
    PRICE_TERMS_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    kept_from: str
    series: _containers.RepeatedCompositeFieldContainer[ShadowBandSeries]
    exchange_rates: _containers.RepeatedCompositeFieldContainer[_planning_pb2.ExchangeRate]
    price_terms: _containers.RepeatedCompositeFieldContainer[EnergyPriceTerms]
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., kept_from: _Optional[str] = ..., series: _Optional[_Iterable[_Union[ShadowBandSeries, _Mapping]]] = ..., exchange_rates: _Optional[_Iterable[_Union[_planning_pb2.ExchangeRate, _Mapping]]] = ..., price_terms: _Optional[_Iterable[_Union[EnergyPriceTerms, _Mapping]]] = ...) -> None: ...

class EnergyPriceTerms(_message.Message):
    __slots__ = ("valid_from", "vat_permille", "currency", "energy_tax_micro_per_kwh", "adder_max_micro_per_kwh")
    VALID_FROM_FIELD_NUMBER: _ClassVar[int]
    VAT_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    CURRENCY_FIELD_NUMBER: _ClassVar[int]
    ENERGY_TAX_MICRO_PER_KWH_FIELD_NUMBER: _ClassVar[int]
    ADDER_MAX_MICRO_PER_KWH_FIELD_NUMBER: _ClassVar[int]
    valid_from: str
    vat_permille: int
    currency: str
    energy_tax_micro_per_kwh: int
    adder_max_micro_per_kwh: int
    def __init__(self, valid_from: _Optional[str] = ..., vat_permille: _Optional[int] = ..., currency: _Optional[str] = ..., energy_tax_micro_per_kwh: _Optional[int] = ..., adder_max_micro_per_kwh: _Optional[int] = ...) -> None: ...

class EnergyPricePayer(_message.Message):
    __slots__ = ("home_id", "plant_id")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    plant_id: str
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., plant_id: _Optional[str] = ...) -> None: ...

class EnergyPriceAdder(_message.Message):
    __slots__ = ("payer", "terms", "micro_per_kwh", "source", "default_micro_per_kwh")
    PAYER_FIELD_NUMBER: _ClassVar[int]
    TERMS_FIELD_NUMBER: _ClassVar[int]
    MICRO_PER_KWH_FIELD_NUMBER: _ClassVar[int]
    SOURCE_FIELD_NUMBER: _ClassVar[int]
    DEFAULT_MICRO_PER_KWH_FIELD_NUMBER: _ClassVar[int]
    payer: EnergyPricePayer
    terms: EnergyPriceTerms
    micro_per_kwh: int
    source: EnergyPriceAdderSource
    default_micro_per_kwh: int
    def __init__(self, payer: _Optional[_Union[EnergyPricePayer, _Mapping]] = ..., terms: _Optional[_Union[EnergyPriceTerms, _Mapping]] = ..., micro_per_kwh: _Optional[int] = ..., source: _Optional[_Union[EnergyPriceAdderSource, str]] = ..., default_micro_per_kwh: _Optional[int] = ...) -> None: ...

class HeatCurveLimit(_message.Message):
    __slots__ = ("reason", "opening_permille", "has_headroom", "room_id", "floor_zone_id", "home_withheld")
    REASON_FIELD_NUMBER: _ClassVar[int]
    OPENING_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    HAS_HEADROOM_FIELD_NUMBER: _ClassVar[int]
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    FLOOR_ZONE_ID_FIELD_NUMBER: _ClassVar[int]
    HOME_WITHHELD_FIELD_NUMBER: _ClassVar[int]
    reason: HeatCurveLimitReason
    opening_permille: int
    has_headroom: bool
    room_id: _identity_pb2.SpaceId
    floor_zone_id: str
    home_withheld: bool
    def __init__(self, reason: _Optional[_Union[HeatCurveLimitReason, str]] = ..., opening_permille: _Optional[int] = ..., has_headroom: _Optional[bool] = ..., room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., floor_zone_id: _Optional[str] = ..., home_withheld: _Optional[bool] = ...) -> None: ...

class HeatCurveBand(_message.Message):
    __slots__ = ("outdoor_from_centidegrees", "outdoor_to_centidegrees", "quarters", "calculated_supply_centidegrees", "supply_centidegrees", "add_on_heat_wh", "add_on_running_permille", "limit")
    OUTDOOR_FROM_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    OUTDOOR_TO_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    QUARTERS_FIELD_NUMBER: _ClassVar[int]
    CALCULATED_SUPPLY_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    SUPPLY_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_HEAT_WH_FIELD_NUMBER: _ClassVar[int]
    ADD_ON_RUNNING_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    LIMIT_FIELD_NUMBER: _ClassVar[int]
    outdoor_from_centidegrees: int
    outdoor_to_centidegrees: int
    quarters: int
    calculated_supply_centidegrees: int
    supply_centidegrees: int
    add_on_heat_wh: int
    add_on_running_permille: int
    limit: HeatCurveLimit
    def __init__(self, outdoor_from_centidegrees: _Optional[int] = ..., outdoor_to_centidegrees: _Optional[int] = ..., quarters: _Optional[int] = ..., calculated_supply_centidegrees: _Optional[int] = ..., supply_centidegrees: _Optional[int] = ..., add_on_heat_wh: _Optional[int] = ..., add_on_running_permille: _Optional[int] = ..., limit: _Optional[_Union[HeatCurveLimit, _Mapping]] = ...) -> None: ...

class HeatCurveView(_message.Message):
    __slots__ = ("plant_id", "plant_name", "window_from", "window_to", "bands", "threshold_permille", "opening_percentile", "curve_settings", "curve_settings_changed_at", "figures_withheld")
    PLANT_ID_FIELD_NUMBER: _ClassVar[int]
    PLANT_NAME_FIELD_NUMBER: _ClassVar[int]
    WINDOW_FROM_FIELD_NUMBER: _ClassVar[int]
    WINDOW_TO_FIELD_NUMBER: _ClassVar[int]
    BANDS_FIELD_NUMBER: _ClassVar[int]
    THRESHOLD_PERMILLE_FIELD_NUMBER: _ClassVar[int]
    OPENING_PERCENTILE_FIELD_NUMBER: _ClassVar[int]
    CURVE_SETTINGS_FIELD_NUMBER: _ClassVar[int]
    CURVE_SETTINGS_CHANGED_AT_FIELD_NUMBER: _ClassVar[int]
    FIGURES_WITHHELD_FIELD_NUMBER: _ClassVar[int]
    plant_id: str
    plant_name: str
    window_from: _timestamp_pb2.Timestamp
    window_to: _timestamp_pb2.Timestamp
    bands: _containers.RepeatedCompositeFieldContainer[HeatCurveBand]
    threshold_permille: int
    opening_percentile: int
    curve_settings: _device_pb2.HeatSourceReadings
    curve_settings_changed_at: _timestamp_pb2.Timestamp
    figures_withheld: bool
    def __init__(self, plant_id: _Optional[str] = ..., plant_name: _Optional[str] = ..., window_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., window_to: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., bands: _Optional[_Iterable[_Union[HeatCurveBand, _Mapping]]] = ..., threshold_permille: _Optional[int] = ..., opening_percentile: _Optional[int] = ..., curve_settings: _Optional[_Union[_device_pb2.HeatSourceReadings, _Mapping]] = ..., curve_settings_changed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., figures_withheld: _Optional[bool] = ...) -> None: ...

class HeatCurveViews(_message.Message):
    __slots__ = ("views",)
    VIEWS_FIELD_NUMBER: _ClassVar[int]
    views: _containers.RepeatedCompositeFieldContainer[HeatCurveView]
    def __init__(self, views: _Optional[_Iterable[_Union[HeatCurveView, _Mapping]]] = ...) -> None: ...
