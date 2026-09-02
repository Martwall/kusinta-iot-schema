from kusinta.iot.vendor.v1 import vendor_options_pb2 as _vendor_options_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class HomematicDeviceIdentity(_message.Message):
    __slots__ = ("address", "type")
    ADDRESS_FIELD_NUMBER: _ClassVar[int]
    TYPE_FIELD_NUMBER: _ClassVar[int]
    address: str
    type: str
    def __init__(self, address: _Optional[str] = ..., type: _Optional[str] = ...) -> None: ...

class HmThermostatProps(_message.Message):
    __slots__ = ("boost_mode", "boost_time_remaining", "control_mode", "frost_protection", "party_mode", "window_state", "valve_state", "set_point_mode", "active_profile", "actual_temperature_status", "valve_adaption")
    BOOST_MODE_FIELD_NUMBER: _ClassVar[int]
    BOOST_TIME_REMAINING_FIELD_NUMBER: _ClassVar[int]
    CONTROL_MODE_FIELD_NUMBER: _ClassVar[int]
    FROST_PROTECTION_FIELD_NUMBER: _ClassVar[int]
    PARTY_MODE_FIELD_NUMBER: _ClassVar[int]
    WINDOW_STATE_FIELD_NUMBER: _ClassVar[int]
    VALVE_STATE_FIELD_NUMBER: _ClassVar[int]
    SET_POINT_MODE_FIELD_NUMBER: _ClassVar[int]
    ACTIVE_PROFILE_FIELD_NUMBER: _ClassVar[int]
    ACTUAL_TEMPERATURE_STATUS_FIELD_NUMBER: _ClassVar[int]
    VALVE_ADAPTION_FIELD_NUMBER: _ClassVar[int]
    boost_mode: bool
    boost_time_remaining: int
    control_mode: int
    frost_protection: bool
    party_mode: bool
    window_state: int
    valve_state: int
    set_point_mode: int
    active_profile: int
    actual_temperature_status: int
    valve_adaption: bool
    def __init__(self, boost_mode: _Optional[bool] = ..., boost_time_remaining: _Optional[int] = ..., control_mode: _Optional[int] = ..., frost_protection: _Optional[bool] = ..., party_mode: _Optional[bool] = ..., window_state: _Optional[int] = ..., valve_state: _Optional[int] = ..., set_point_mode: _Optional[int] = ..., active_profile: _Optional[int] = ..., actual_temperature_status: _Optional[int] = ..., valve_adaption: _Optional[bool] = ...) -> None: ...

class HmMaintenanceProps(_message.Message):
    __slots__ = ("error_code", "sabotage", "rssi_device", "rssi_peer", "operating_voltage_status", "unreach", "config_pending", "duty_cycle")
    ERROR_CODE_FIELD_NUMBER: _ClassVar[int]
    SABOTAGE_FIELD_NUMBER: _ClassVar[int]
    RSSI_DEVICE_FIELD_NUMBER: _ClassVar[int]
    RSSI_PEER_FIELD_NUMBER: _ClassVar[int]
    OPERATING_VOLTAGE_STATUS_FIELD_NUMBER: _ClassVar[int]
    UNREACH_FIELD_NUMBER: _ClassVar[int]
    CONFIG_PENDING_FIELD_NUMBER: _ClassVar[int]
    DUTY_CYCLE_FIELD_NUMBER: _ClassVar[int]
    error_code: int
    sabotage: bool
    rssi_device: int
    rssi_peer: int
    operating_voltage_status: int
    unreach: bool
    config_pending: bool
    duty_cycle: bool
    def __init__(self, error_code: _Optional[int] = ..., sabotage: _Optional[bool] = ..., rssi_device: _Optional[int] = ..., rssi_peer: _Optional[int] = ..., operating_voltage_status: _Optional[int] = ..., unreach: _Optional[bool] = ..., config_pending: _Optional[bool] = ..., duty_cycle: _Optional[bool] = ...) -> None: ...
