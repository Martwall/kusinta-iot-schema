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
    __slots__ = ("boost_mode", "boost_time_period", "control_mode", "frost_protection", "current_profile_period", "level", "window_state", "valve_state")
    BOOST_MODE_FIELD_NUMBER: _ClassVar[int]
    BOOST_TIME_PERIOD_FIELD_NUMBER: _ClassVar[int]
    CONTROL_MODE_FIELD_NUMBER: _ClassVar[int]
    FROST_PROTECTION_FIELD_NUMBER: _ClassVar[int]
    CURRENT_PROFILE_PERIOD_FIELD_NUMBER: _ClassVar[int]
    LEVEL_FIELD_NUMBER: _ClassVar[int]
    WINDOW_STATE_FIELD_NUMBER: _ClassVar[int]
    VALVE_STATE_FIELD_NUMBER: _ClassVar[int]
    boost_mode: bool
    boost_time_period: float
    control_mode: int
    frost_protection: bool
    current_profile_period: float
    level: float
    window_state: int
    valve_state: int
    def __init__(self, boost_mode: _Optional[bool] = ..., boost_time_period: _Optional[float] = ..., control_mode: _Optional[int] = ..., frost_protection: _Optional[bool] = ..., current_profile_period: _Optional[float] = ..., level: _Optional[float] = ..., window_state: _Optional[int] = ..., valve_state: _Optional[int] = ...) -> None: ...
