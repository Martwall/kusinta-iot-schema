import datetime

from google.protobuf import duration_pb2 as _duration_pb2
from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class AccountLinkStatus(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ACCOUNT_LINK_STATUS_UNSPECIFIED: _ClassVar[AccountLinkStatus]
    ACCOUNT_LINK_STATUS_LINKED: _ClassVar[AccountLinkStatus]
    ACCOUNT_LINK_STATUS_NEEDS_RELINK: _ClassVar[AccountLinkStatus]

class LinkedService(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    LINKED_SERVICE_UNSPECIFIED: _ClassVar[LinkedService]
    LINKED_SERVICE_MYUPLINK: _ClassVar[LinkedService]

class AccountLinkOutcome(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ACCOUNT_LINK_OUTCOME_UNSPECIFIED: _ClassVar[AccountLinkOutcome]
    ACCOUNT_LINK_OUTCOME_LINKED: _ClassVar[AccountLinkOutcome]
    ACCOUNT_LINK_OUTCOME_REJECTED: _ClassVar[AccountLinkOutcome]

class TokenOutcome(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    TOKEN_OUTCOME_UNSPECIFIED: _ClassVar[TokenOutcome]
    TOKEN_OUTCOME_OK: _ClassVar[TokenOutcome]
    TOKEN_OUTCOME_REJECTED: _ClassVar[TokenOutcome]
    TOKEN_OUTCOME_UNAVAILABLE: _ClassVar[TokenOutcome]
ACCOUNT_LINK_STATUS_UNSPECIFIED: AccountLinkStatus
ACCOUNT_LINK_STATUS_LINKED: AccountLinkStatus
ACCOUNT_LINK_STATUS_NEEDS_RELINK: AccountLinkStatus
LINKED_SERVICE_UNSPECIFIED: LinkedService
LINKED_SERVICE_MYUPLINK: LinkedService
ACCOUNT_LINK_OUTCOME_UNSPECIFIED: AccountLinkOutcome
ACCOUNT_LINK_OUTCOME_LINKED: AccountLinkOutcome
ACCOUNT_LINK_OUTCOME_REJECTED: AccountLinkOutcome
TOKEN_OUTCOME_UNSPECIFIED: TokenOutcome
TOKEN_OUTCOME_OK: TokenOutcome
TOKEN_OUTCOME_REJECTED: TokenOutcome
TOKEN_OUTCOME_UNAVAILABLE: TokenOutcome

class AccountLink(_message.Message):
    __slots__ = ("service", "status", "linked_since")
    SERVICE_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    LINKED_SINCE_FIELD_NUMBER: _ClassVar[int]
    service: LinkedService
    status: AccountLinkStatus
    linked_since: _timestamp_pb2.Timestamp
    def __init__(self, service: _Optional[_Union[LinkedService, str]] = ..., status: _Optional[_Union[AccountLinkStatus, str]] = ..., linked_since: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class AccountLinks(_message.Message):
    __slots__ = ("links",)
    LINKS_FIELD_NUMBER: _ClassVar[int]
    links: _containers.RepeatedCompositeFieldContainer[AccountLink]
    def __init__(self, links: _Optional[_Iterable[_Union[AccountLink, _Mapping]]] = ...) -> None: ...

class AccountLinkNonce(_message.Message):
    __slots__ = ("nonce", "expires_at")
    NONCE_FIELD_NUMBER: _ClassVar[int]
    EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    nonce: str
    expires_at: _timestamp_pb2.Timestamp
    def __init__(self, nonce: _Optional[str] = ..., expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class AccountLinkNonceClaims(_message.Message):
    __slots__ = ("iss", "aud", "sub", "iat", "exp", "jti", "svc")
    ISS_FIELD_NUMBER: _ClassVar[int]
    AUD_FIELD_NUMBER: _ClassVar[int]
    SUB_FIELD_NUMBER: _ClassVar[int]
    IAT_FIELD_NUMBER: _ClassVar[int]
    EXP_FIELD_NUMBER: _ClassVar[int]
    JTI_FIELD_NUMBER: _ClassVar[int]
    SVC_FIELD_NUMBER: _ClassVar[int]
    iss: str
    aud: str
    sub: str
    iat: _timestamp_pb2.Timestamp
    exp: _timestamp_pb2.Timestamp
    jti: str
    svc: str
    def __init__(self, iss: _Optional[str] = ..., aud: _Optional[str] = ..., sub: _Optional[str] = ..., iat: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., exp: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., jti: _Optional[str] = ..., svc: _Optional[str] = ...) -> None: ...

class AccessGrant(_message.Message):
    __slots__ = ("access_token", "expires_at", "scope")
    ACCESS_TOKEN_FIELD_NUMBER: _ClassVar[int]
    EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    SCOPE_FIELD_NUMBER: _ClassVar[int]
    access_token: str
    expires_at: _timestamp_pb2.Timestamp
    scope: str
    def __init__(self, access_token: _Optional[str] = ..., expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., scope: _Optional[str] = ...) -> None: ...

class TokenGrant(_message.Message):
    __slots__ = ("access", "refresh_token")
    ACCESS_FIELD_NUMBER: _ClassVar[int]
    REFRESH_TOKEN_FIELD_NUMBER: _ClassVar[int]
    access: AccessGrant
    refresh_token: str
    def __init__(self, access: _Optional[_Union[AccessGrant, _Mapping]] = ..., refresh_token: _Optional[str] = ...) -> None: ...

class AccountLinked(_message.Message):
    __slots__ = ("request_id", "nonce", "grant")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    NONCE_FIELD_NUMBER: _ClassVar[int]
    GRANT_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    nonce: str
    grant: TokenGrant
    def __init__(self, request_id: _Optional[str] = ..., nonce: _Optional[str] = ..., grant: _Optional[_Union[TokenGrant, _Mapping]] = ...) -> None: ...

class AccountLinkCancelled(_message.Message):
    __slots__ = ("request_id",)
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    def __init__(self, request_id: _Optional[str] = ...) -> None: ...

class AccountLinkResult(_message.Message):
    __slots__ = ("request_id", "outcome")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    OUTCOME_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    outcome: AccountLinkOutcome
    def __init__(self, request_id: _Optional[str] = ..., outcome: _Optional[_Union[AccountLinkOutcome, str]] = ...) -> None: ...

class RefreshToken(_message.Message):
    __slots__ = ("request_id", "service", "refresh_token")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    SERVICE_FIELD_NUMBER: _ClassVar[int]
    REFRESH_TOKEN_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    service: LinkedService
    refresh_token: str
    def __init__(self, request_id: _Optional[str] = ..., service: _Optional[_Union[LinkedService, str]] = ..., refresh_token: _Optional[str] = ...) -> None: ...

class TokenRefreshed(_message.Message):
    __slots__ = ("request_id", "outcome", "grant", "retry_after")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    OUTCOME_FIELD_NUMBER: _ClassVar[int]
    GRANT_FIELD_NUMBER: _ClassVar[int]
    RETRY_AFTER_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    outcome: TokenOutcome
    grant: TokenGrant
    retry_after: _duration_pb2.Duration
    def __init__(self, request_id: _Optional[str] = ..., outcome: _Optional[_Union[TokenOutcome, str]] = ..., grant: _Optional[_Union[TokenGrant, _Mapping]] = ..., retry_after: _Optional[_Union[datetime.timedelta, _duration_pb2.Duration, _Mapping]] = ...) -> None: ...

class RevokeToken(_message.Message):
    __slots__ = ("request_id", "service", "refresh_token")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    SERVICE_FIELD_NUMBER: _ClassVar[int]
    REFRESH_TOKEN_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    service: LinkedService
    refresh_token: str
    def __init__(self, request_id: _Optional[str] = ..., service: _Optional[_Union[LinkedService, str]] = ..., refresh_token: _Optional[str] = ...) -> None: ...

class TokenRevoked(_message.Message):
    __slots__ = ("request_id", "outcome", "retry_after")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    OUTCOME_FIELD_NUMBER: _ClassVar[int]
    RETRY_AFTER_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    outcome: TokenOutcome
    retry_after: _duration_pb2.Duration
    def __init__(self, request_id: _Optional[str] = ..., outcome: _Optional[_Union[TokenOutcome, str]] = ..., retry_after: _Optional[_Union[datetime.timedelta, _duration_pb2.Duration, _Mapping]] = ...) -> None: ...
