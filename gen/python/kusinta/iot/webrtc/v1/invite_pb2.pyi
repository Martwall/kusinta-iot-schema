import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class InviteAdmission(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    INVITE_ADMISSION_UNSPECIFIED: _ClassVar[InviteAdmission]
    INVITE_ADMISSION_ON_EMAIL_MATCH: _ClassVar[InviteAdmission]
    INVITE_ADMISSION_ON_REDEEM: _ClassVar[InviteAdmission]
    INVITE_ADMISSION_ON_APPROVAL: _ClassVar[InviteAdmission]
INVITE_ADMISSION_UNSPECIFIED: InviteAdmission
INVITE_ADMISSION_ON_EMAIL_MATCH: InviteAdmission
INVITE_ADMISSION_ON_REDEEM: InviteAdmission
INVITE_ADMISSION_ON_APPROVAL: InviteAdmission

class CreateInvite(_message.Message):
    __slots__ = ("space_id", "relation", "email", "access_until")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    RELATION_FIELD_NUMBER: _ClassVar[int]
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    ACCESS_UNTIL_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    relation: _roles_pb2.MembershipRelation
    email: str
    access_until: _timestamp_pb2.Timestamp
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., relation: _Optional[_Union[_roles_pb2.MembershipRelation, str]] = ..., email: _Optional[str] = ..., access_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ResendInvite(_message.Message):
    __slots__ = ("invite_id",)
    INVITE_ID_FIELD_NUMBER: _ClassVar[int]
    invite_id: str
    def __init__(self, invite_id: _Optional[str] = ...) -> None: ...

class RevokeInvite(_message.Message):
    __slots__ = ("invite_id",)
    INVITE_ID_FIELD_NUMBER: _ClassVar[int]
    invite_id: str
    def __init__(self, invite_id: _Optional[str] = ...) -> None: ...

class MarkInviteEmailSent(_message.Message):
    __slots__ = ("invite_id",)
    INVITE_ID_FIELD_NUMBER: _ClassVar[int]
    invite_id: str
    def __init__(self, invite_id: _Optional[str] = ...) -> None: ...

class ListSpaceInvites(_message.Message):
    __slots__ = ("space_id",)
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class ApproveJoinRequest(_message.Message):
    __slots__ = ("request_id",)
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    def __init__(self, request_id: _Optional[str] = ...) -> None: ...

class DenyJoinRequest(_message.Message):
    __slots__ = ("request_id",)
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    def __init__(self, request_id: _Optional[str] = ...) -> None: ...

class Invite(_message.Message):
    __slots__ = ("invite_id", "space_id", "relation", "created_by", "created_at", "token_expires_at", "code_expires_at", "email", "email_sent_at", "access_until", "admission")
    INVITE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    RELATION_FIELD_NUMBER: _ClassVar[int]
    CREATED_BY_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    TOKEN_EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    CODE_EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    EMAIL_SENT_AT_FIELD_NUMBER: _ClassVar[int]
    ACCESS_UNTIL_FIELD_NUMBER: _ClassVar[int]
    ADMISSION_FIELD_NUMBER: _ClassVar[int]
    invite_id: str
    space_id: _identity_pb2.SpaceId
    relation: _roles_pb2.MembershipRelation
    created_by: _identity_pb2.UserId
    created_at: _timestamp_pb2.Timestamp
    token_expires_at: _timestamp_pb2.Timestamp
    code_expires_at: _timestamp_pb2.Timestamp
    email: str
    email_sent_at: _timestamp_pb2.Timestamp
    access_until: _timestamp_pb2.Timestamp
    admission: InviteAdmission
    def __init__(self, invite_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., relation: _Optional[_Union[_roles_pb2.MembershipRelation, str]] = ..., created_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., created_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., token_expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., code_expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., email: _Optional[str] = ..., email_sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., access_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., admission: _Optional[_Union[InviteAdmission, str]] = ...) -> None: ...

class IssuedInvite(_message.Message):
    __slots__ = ("invite", "token", "code")
    INVITE_FIELD_NUMBER: _ClassVar[int]
    TOKEN_FIELD_NUMBER: _ClassVar[int]
    CODE_FIELD_NUMBER: _ClassVar[int]
    invite: Invite
    token: str
    code: str
    def __init__(self, invite: _Optional[_Union[Invite, _Mapping]] = ..., token: _Optional[str] = ..., code: _Optional[str] = ...) -> None: ...

class JoinRequest(_message.Message):
    __slots__ = ("request_id", "space_id", "relation", "user_id", "display_name", "invited_by", "requested_at", "expires_at", "email", "access_until")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    RELATION_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    DISPLAY_NAME_FIELD_NUMBER: _ClassVar[int]
    INVITED_BY_FIELD_NUMBER: _ClassVar[int]
    REQUESTED_AT_FIELD_NUMBER: _ClassVar[int]
    EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    ACCESS_UNTIL_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    space_id: _identity_pb2.SpaceId
    relation: _roles_pb2.MembershipRelation
    user_id: _identity_pb2.UserId
    display_name: str
    invited_by: _identity_pb2.UserId
    requested_at: _timestamp_pb2.Timestamp
    expires_at: _timestamp_pb2.Timestamp
    email: str
    access_until: _timestamp_pb2.Timestamp
    def __init__(self, request_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., relation: _Optional[_Union[_roles_pb2.MembershipRelation, str]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., display_name: _Optional[str] = ..., invited_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., requested_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., email: _Optional[str] = ..., access_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class SpaceInvites(_message.Message):
    __slots__ = ("space_id", "invites", "join_requests")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    INVITES_FIELD_NUMBER: _ClassVar[int]
    JOIN_REQUESTS_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    invites: _containers.RepeatedCompositeFieldContainer[Invite]
    join_requests: _containers.RepeatedCompositeFieldContainer[JoinRequest]
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., invites: _Optional[_Iterable[_Union[Invite, _Mapping]]] = ..., join_requests: _Optional[_Iterable[_Union[JoinRequest, _Mapping]]] = ...) -> None: ...
