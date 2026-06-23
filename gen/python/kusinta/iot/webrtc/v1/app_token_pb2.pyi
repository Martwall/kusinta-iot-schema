import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class AppTokenClaims(_message.Message):
    __slots__ = ("iss", "aud", "sub", "iat", "exp", "role")
    ISS_FIELD_NUMBER: _ClassVar[int]
    AUD_FIELD_NUMBER: _ClassVar[int]
    SUB_FIELD_NUMBER: _ClassVar[int]
    IAT_FIELD_NUMBER: _ClassVar[int]
    EXP_FIELD_NUMBER: _ClassVar[int]
    ROLE_FIELD_NUMBER: _ClassVar[int]
    iss: str
    aud: str
    sub: str
    iat: _timestamp_pb2.Timestamp
    exp: _timestamp_pb2.Timestamp
    role: _roles_pb2.Role
    def __init__(self, iss: _Optional[str] = ..., aud: _Optional[str] = ..., sub: _Optional[str] = ..., iat: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., exp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., role: _Optional[_Union[_roles_pb2.Role, str]] = ...) -> None: ...
