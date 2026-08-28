from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class PairingError(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PAIRING_ERROR_UNSPECIFIED: _ClassVar[PairingError]
    PAIRING_ERROR_NOT_ENTITLED: _ClassVar[PairingError]
    PAIRING_ERROR_ALREADY_IN_PROGRESS: _ClassVar[PairingError]
    PAIRING_ERROR_CONNECTOR_UNAVAILABLE: _ClassVar[PairingError]
    PAIRING_ERROR_NO_DEVICE_APPEARED: _ClassVar[PairingError]
    PAIRING_ERROR_DEVICE_UNUSABLE: _ClassVar[PairingError]
    PAIRING_ERROR_WRONG_DEVICE: _ClassVar[PairingError]
    PAIRING_ERROR_INTERNAL: _ClassVar[PairingError]
PAIRING_ERROR_UNSPECIFIED: PairingError
PAIRING_ERROR_NOT_ENTITLED: PairingError
PAIRING_ERROR_ALREADY_IN_PROGRESS: PairingError
PAIRING_ERROR_CONNECTOR_UNAVAILABLE: PairingError
PAIRING_ERROR_NO_DEVICE_APPEARED: PairingError
PAIRING_ERROR_DEVICE_UNUSABLE: PairingError
PAIRING_ERROR_WRONG_DEVICE: PairingError
PAIRING_ERROR_INTERNAL: PairingError

class PairingErrorDetail(_message.Message):
    __slots__ = ("code", "message")
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    code: PairingError
    message: str
    def __init__(self, code: _Optional[_Union[PairingError, str]] = ..., message: _Optional[str] = ...) -> None: ...

class PairingWindow(_message.Message):
    __slots__ = ("duration_seconds", "device_hint", "max_devices")
    DURATION_SECONDS_FIELD_NUMBER: _ClassVar[int]
    DEVICE_HINT_FIELD_NUMBER: _ClassVar[int]
    MAX_DEVICES_FIELD_NUMBER: _ClassVar[int]
    duration_seconds: int
    device_hint: str
    max_devices: int
    def __init__(self, duration_seconds: _Optional[int] = ..., device_hint: _Optional[str] = ..., max_devices: _Optional[int] = ...) -> None: ...
