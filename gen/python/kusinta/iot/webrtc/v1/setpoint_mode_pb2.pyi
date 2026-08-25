from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from typing import ClassVar as _ClassVar

DESCRIPTOR: _descriptor.FileDescriptor

class SetpointAdjustMode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    SETPOINT_ADJUST_MODE_HEAT: _ClassVar[SetpointAdjustMode]
    SETPOINT_ADJUST_MODE_COOL: _ClassVar[SetpointAdjustMode]
    SETPOINT_ADJUST_MODE_BOTH: _ClassVar[SetpointAdjustMode]
SETPOINT_ADJUST_MODE_HEAT: SetpointAdjustMode
SETPOINT_ADJUST_MODE_COOL: SetpointAdjustMode
SETPOINT_ADJUST_MODE_BOTH: SetpointAdjustMode
