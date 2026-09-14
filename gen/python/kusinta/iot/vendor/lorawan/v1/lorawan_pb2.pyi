from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class LorawanProvisioning(_message.Message):
    __slots__ = ("dev_eui", "app_key", "join_eui")
    DEV_EUI_FIELD_NUMBER: _ClassVar[int]
    APP_KEY_FIELD_NUMBER: _ClassVar[int]
    JOIN_EUI_FIELD_NUMBER: _ClassVar[int]
    dev_eui: str
    app_key: str
    join_eui: str
    def __init__(self, dev_eui: _Optional[str] = ..., app_key: _Optional[str] = ..., join_eui: _Optional[str] = ...) -> None: ...
