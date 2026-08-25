import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from kusinta.iot.device.v1 import cluster_state_pb2 as _cluster_state_pb2
from kusinta.iot.device.v1 import matter_options_pb2 as _matter_options_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.webrtc.v1 import setpoint_mode_pb2 as _setpoint_mode_pb2
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class CommandErrorCode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    COMMAND_ERROR_CODE_UNSPECIFIED: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_NOT_ENTITLED: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_INVALID_COMMAND: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_UNREACHABLE: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_TIMEOUT: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_REJECTED_BY_DEVICE: _ClassVar[CommandErrorCode]
    COMMAND_ERROR_CODE_INTERNAL: _ClassVar[CommandErrorCode]
COMMAND_ERROR_CODE_UNSPECIFIED: CommandErrorCode
COMMAND_ERROR_CODE_NOT_ENTITLED: CommandErrorCode
COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED: CommandErrorCode
COMMAND_ERROR_CODE_INVALID_COMMAND: CommandErrorCode
COMMAND_ERROR_CODE_UNREACHABLE: CommandErrorCode
COMMAND_ERROR_CODE_TIMEOUT: CommandErrorCode
COMMAND_ERROR_CODE_REJECTED_BY_DEVICE: CommandErrorCode
COMMAND_ERROR_CODE_INTERNAL: CommandErrorCode

class ThermostatSetpointParams(_message.Message):
    __slots__ = ("mode", "amount")
    MODE_FIELD_NUMBER: _ClassVar[int]
    AMOUNT_FIELD_NUMBER: _ClassVar[int]
    mode: _setpoint_mode_pb2.SetpointAdjustMode
    amount: int
    def __init__(self, mode: _Optional[_Union[_setpoint_mode_pb2.SetpointAdjustMode, str]] = ..., amount: _Optional[int] = ...) -> None: ...

class LevelControlParams(_message.Message):
    __slots__ = ("level", "transition_time")
    LEVEL_FIELD_NUMBER: _ClassVar[int]
    TRANSITION_TIME_FIELD_NUMBER: _ClassVar[int]
    level: int
    transition_time: int
    def __init__(self, level: _Optional[int] = ..., transition_time: _Optional[int] = ...) -> None: ...

class OnOffParams(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class WindowCoveringLiftParams(_message.Message):
    __slots__ = ("lift_percent100ths",)
    LIFT_PERCENT100THS_FIELD_NUMBER: _ClassVar[int]
    lift_percent100ths: int
    def __init__(self, lift_percent100ths: _Optional[int] = ...) -> None: ...

class DoorLockParams(_message.Message):
    __slots__ = ("pin_code",)
    PIN_CODE_FIELD_NUMBER: _ClassVar[int]
    pin_code: str
    def __init__(self, pin_code: _Optional[str] = ...) -> None: ...

class DeviceCommand(_message.Message):
    __slots__ = ("request_id", "device_id", "command_name", "cluster_id", "matter_command_id", "endpoint_id", "thermostat_setpoint", "level_control", "on_off", "window_covering_lift", "door_lock", "raw_tlv")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    COMMAND_NAME_FIELD_NUMBER: _ClassVar[int]
    CLUSTER_ID_FIELD_NUMBER: _ClassVar[int]
    MATTER_COMMAND_ID_FIELD_NUMBER: _ClassVar[int]
    ENDPOINT_ID_FIELD_NUMBER: _ClassVar[int]
    THERMOSTAT_SETPOINT_FIELD_NUMBER: _ClassVar[int]
    LEVEL_CONTROL_FIELD_NUMBER: _ClassVar[int]
    ON_OFF_FIELD_NUMBER: _ClassVar[int]
    WINDOW_COVERING_LIFT_FIELD_NUMBER: _ClassVar[int]
    DOOR_LOCK_FIELD_NUMBER: _ClassVar[int]
    RAW_TLV_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    device_id: _identity_pb2.DeviceId
    command_name: str
    cluster_id: int
    matter_command_id: int
    endpoint_id: int
    thermostat_setpoint: ThermostatSetpointParams
    level_control: LevelControlParams
    on_off: OnOffParams
    window_covering_lift: WindowCoveringLiftParams
    door_lock: DoorLockParams
    raw_tlv: bytes
    def __init__(self, request_id: _Optional[str] = ..., device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., command_name: _Optional[str] = ..., cluster_id: _Optional[int] = ..., matter_command_id: _Optional[int] = ..., endpoint_id: _Optional[int] = ..., thermostat_setpoint: _Optional[_Union[ThermostatSetpointParams, _Mapping]] = ..., level_control: _Optional[_Union[LevelControlParams, _Mapping]] = ..., on_off: _Optional[_Union[OnOffParams, _Mapping]] = ..., window_covering_lift: _Optional[_Union[WindowCoveringLiftParams, _Mapping]] = ..., door_lock: _Optional[_Union[DoorLockParams, _Mapping]] = ..., raw_tlv: _Optional[bytes] = ...) -> None: ...

class CommandError(_message.Message):
    __slots__ = ("message", "code")
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    CODE_FIELD_NUMBER: _ClassVar[int]
    message: str
    code: CommandErrorCode
    def __init__(self, message: _Optional[str] = ..., code: _Optional[_Union[CommandErrorCode, str]] = ...) -> None: ...

class CommandResult(_message.Message):
    __slots__ = ("request_id", "success", "error", "completed_at", "settles_by")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    COMPLETED_AT_FIELD_NUMBER: _ClassVar[int]
    SETTLES_BY_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    success: bool
    error: CommandError
    completed_at: _timestamp_pb2.Timestamp
    settles_by: _timestamp_pb2.Timestamp
    def __init__(self, request_id: _Optional[str] = ..., success: _Optional[bool] = ..., error: _Optional[_Union[CommandError, _Mapping]] = ..., completed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., settles_by: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class AttributeWriteRequest(_message.Message):
    __slots__ = ("request_id", "device_id", "target", "value")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    TARGET_FIELD_NUMBER: _ClassVar[int]
    VALUE_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    device_id: _identity_pb2.DeviceId
    target: _acl_pb2.AttributeRef
    value: _cluster_state_pb2.AttributeValue
    def __init__(self, request_id: _Optional[str] = ..., device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., target: _Optional[_Union[_acl_pb2.AttributeRef, _Mapping]] = ..., value: _Optional[_Union[_cluster_state_pb2.AttributeValue, _Mapping]] = ...) -> None: ...
