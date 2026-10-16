import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ListGatewayMembers(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class SetMemberRole(_message.Message):
    __slots__ = ("user_id", "role", "held")
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    ROLE_FIELD_NUMBER: _ClassVar[int]
    HELD_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    role: _roles_pb2.Role
    held: bool
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., role: _Optional[_Union[_roles_pb2.Role, str]] = ..., held: _Optional[bool] = ...) -> None: ...

class RequestPromotion(_message.Message):
    __slots__ = ("user_id", "role")
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    ROLE_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    role: _roles_pb2.Role
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., role: _Optional[_Union[_roles_pb2.Role, str]] = ...) -> None: ...

class AnswerPromotion(_message.Message):
    __slots__ = ("request_id", "accept")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    ACCEPT_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    accept: bool
    def __init__(self, request_id: _Optional[str] = ..., accept: _Optional[bool] = ...) -> None: ...

class ListPromotionRequests(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class PromotionRequest(_message.Message):
    __slots__ = ("request_id", "user_id", "role", "requested_by", "requested_by_name", "requested_at", "expires_at")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    ROLE_FIELD_NUMBER: _ClassVar[int]
    REQUESTED_BY_FIELD_NUMBER: _ClassVar[int]
    REQUESTED_BY_NAME_FIELD_NUMBER: _ClassVar[int]
    REQUESTED_AT_FIELD_NUMBER: _ClassVar[int]
    EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    user_id: _identity_pb2.UserId
    role: _roles_pb2.Role
    requested_by: _identity_pb2.UserId
    requested_by_name: str
    requested_at: _timestamp_pb2.Timestamp
    expires_at: _timestamp_pb2.Timestamp
    def __init__(self, request_id: _Optional[str] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., role: _Optional[_Union[_roles_pb2.Role, str]] = ..., requested_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., requested_by_name: _Optional[str] = ..., requested_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class PromotionRequests(_message.Message):
    __slots__ = ("requests",)
    REQUESTS_FIELD_NUMBER: _ClassVar[int]
    requests: _containers.RepeatedCompositeFieldContainer[PromotionRequest]
    def __init__(self, requests: _Optional[_Iterable[_Union[PromotionRequest, _Mapping]]] = ...) -> None: ...

class RemoveFromGateway(_message.Message):
    __slots__ = ("user_id",)
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class SetAccessUntil(_message.Message):
    __slots__ = ("user_id", "access_until")
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    ACCESS_UNTIL_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    access_until: _timestamp_pb2.Timestamp
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., access_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class SetOwnerOrganisation(_message.Message):
    __slots__ = ("organisation",)
    ORGANISATION_FIELD_NUMBER: _ClassVar[int]
    organisation: OwnerOrganisation
    def __init__(self, organisation: _Optional[_Union[OwnerOrganisation, _Mapping]] = ...) -> None: ...

class OwnerOrganisation(_message.Message):
    __slots__ = ("name", "organisation_number")
    NAME_FIELD_NUMBER: _ClassVar[int]
    ORGANISATION_NUMBER_FIELD_NUMBER: _ClassVar[int]
    name: str
    organisation_number: str
    def __init__(self, name: _Optional[str] = ..., organisation_number: _Optional[str] = ...) -> None: ...

class GatewayMembers(_message.Message):
    __slots__ = ("members", "owner_organisation")
    MEMBERS_FIELD_NUMBER: _ClassVar[int]
    OWNER_ORGANISATION_FIELD_NUMBER: _ClassVar[int]
    members: _containers.RepeatedCompositeFieldContainer[MemberDetail]
    owner_organisation: OwnerOrganisation
    def __init__(self, members: _Optional[_Iterable[_Union[MemberDetail, _Mapping]]] = ..., owner_organisation: _Optional[_Union[OwnerOrganisation, _Mapping]] = ...) -> None: ...

class MemberDetail(_message.Message):
    __slots__ = ("user_id", "name", "roles", "memberships", "access_until", "registering_admin", "email", "vouched_admin")
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    ROLES_FIELD_NUMBER: _ClassVar[int]
    MEMBERSHIPS_FIELD_NUMBER: _ClassVar[int]
    ACCESS_UNTIL_FIELD_NUMBER: _ClassVar[int]
    REGISTERING_ADMIN_FIELD_NUMBER: _ClassVar[int]
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    VOUCHED_ADMIN_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    name: str
    roles: _containers.RepeatedScalarFieldContainer[_roles_pb2.Role]
    memberships: _containers.RepeatedCompositeFieldContainer[MemberSpace]
    access_until: _timestamp_pb2.Timestamp
    registering_admin: bool
    email: str
    vouched_admin: bool
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., name: _Optional[str] = ..., roles: _Optional[_Iterable[_Union[_roles_pb2.Role, str]]] = ..., memberships: _Optional[_Iterable[_Union[MemberSpace, _Mapping]]] = ..., access_until: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., registering_admin: _Optional[bool] = ..., email: _Optional[str] = ..., vouched_admin: _Optional[bool] = ...) -> None: ...

class MemberSpace(_message.Message):
    __slots__ = ("space_id", "relation", "since")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    RELATION_FIELD_NUMBER: _ClassVar[int]
    SINCE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    relation: _roles_pb2.MembershipRelation
    since: _timestamp_pb2.Timestamp
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., relation: _Optional[_Union[_roles_pb2.MembershipRelation, str]] = ..., since: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
