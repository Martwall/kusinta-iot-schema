import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ProblemKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PROBLEM_KIND_UNSPECIFIED: _ClassVar[ProblemKind]
    PROBLEM_KIND_DEVICE_OFFLINE: _ClassVar[ProblemKind]
    PROBLEM_KIND_BATTERY_LOW: _ClassVar[ProblemKind]
    PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED: _ClassVar[ProblemKind]
    PROBLEM_KIND_DEVICE_ERROR: _ClassVar[ProblemKind]
    PROBLEM_KIND_DEVICE_TAMPER: _ClassVar[ProblemKind]
    PROBLEM_KIND_CONNECTOR_OFFLINE: _ClassVar[ProblemKind]
    PROBLEM_KIND_CONNECTOR_ERROR: _ClassVar[ProblemKind]
    PROBLEM_KIND_UNFILED_DEVICES: _ClassVar[ProblemKind]
    PROBLEM_KIND_WINDOW_OPEN: _ClassVar[ProblemKind]

class ClearReason(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    CLEAR_REASON_UNSPECIFIED: _ClassVar[ClearReason]
    CLEAR_REASON_RECOVERED: _ClassVar[ClearReason]
    CLEAR_REASON_FILED: _ClassVar[ClearReason]
    CLEAR_REASON_DEVICE_REMOVED: _ClassVar[ClearReason]
    CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE: _ClassVar[ClearReason]
    CLEAR_REASON_NO_LONGER_REPORTED: _ClassVar[ClearReason]
    CLEAR_REASON_MOVED: _ClassVar[ClearReason]

class AckStatus(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    ACK_STATUS_UNSPECIFIED: _ClassVar[AckStatus]
    ACK_STATUS_APPLIED: _ClassVar[AckStatus]
    ACK_STATUS_DUPLICATE: _ClassVar[AckStatus]
    ACK_STATUS_REJECTED: _ClassVar[AckStatus]
    ACK_STATUS_HELD: _ClassVar[AckStatus]
PROBLEM_KIND_UNSPECIFIED: ProblemKind
PROBLEM_KIND_DEVICE_OFFLINE: ProblemKind
PROBLEM_KIND_BATTERY_LOW: ProblemKind
PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED: ProblemKind
PROBLEM_KIND_DEVICE_ERROR: ProblemKind
PROBLEM_KIND_DEVICE_TAMPER: ProblemKind
PROBLEM_KIND_CONNECTOR_OFFLINE: ProblemKind
PROBLEM_KIND_CONNECTOR_ERROR: ProblemKind
PROBLEM_KIND_UNFILED_DEVICES: ProblemKind
PROBLEM_KIND_WINDOW_OPEN: ProblemKind
CLEAR_REASON_UNSPECIFIED: ClearReason
CLEAR_REASON_RECOVERED: ClearReason
CLEAR_REASON_FILED: ClearReason
CLEAR_REASON_DEVICE_REMOVED: ClearReason
CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE: ClearReason
CLEAR_REASON_NO_LONGER_REPORTED: ClearReason
CLEAR_REASON_MOVED: ClearReason
ACK_STATUS_UNSPECIFIED: AckStatus
ACK_STATUS_APPLIED: AckStatus
ACK_STATUS_DUPLICATE: AckStatus
ACK_STATUS_REJECTED: AckStatus
ACK_STATUS_HELD: AckStatus

class SnapshotPart(_message.Message):
    __slots__ = ("snapshot_id", "part", "last")
    SNAPSHOT_ID_FIELD_NUMBER: _ClassVar[int]
    PART_FIELD_NUMBER: _ClassVar[int]
    LAST_FIELD_NUMBER: _ClassVar[int]
    snapshot_id: str
    part: int
    last: bool
    def __init__(self, snapshot_id: _Optional[str] = ..., part: _Optional[int] = ..., last: _Optional[bool] = ...) -> None: ...

class ProblemSubject(_message.Message):
    __slots__ = ("device_id", "connector_id", "room_id", "gateway")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    connector_id: _identity_pb2.ConnectorId
    room_id: _identity_pb2.SpaceId
    gateway: bool
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ..., room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., gateway: _Optional[bool] = ...) -> None: ...

class Problem(_message.Message):
    __slots__ = ("kind", "subject", "space_id", "opened_at", "battery_percent", "device_count")
    KIND_FIELD_NUMBER: _ClassVar[int]
    SUBJECT_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    OPENED_AT_FIELD_NUMBER: _ClassVar[int]
    BATTERY_PERCENT_FIELD_NUMBER: _ClassVar[int]
    DEVICE_COUNT_FIELD_NUMBER: _ClassVar[int]
    kind: ProblemKind
    subject: ProblemSubject
    space_id: _identity_pb2.SpaceId
    opened_at: _timestamp_pb2.Timestamp
    battery_percent: int
    device_count: int
    def __init__(self, kind: _Optional[_Union[ProblemKind, str]] = ..., subject: _Optional[_Union[ProblemSubject, _Mapping]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., opened_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., battery_percent: _Optional[int] = ..., device_count: _Optional[int] = ...) -> None: ...

class ProblemCleared(_message.Message):
    __slots__ = ("cleared_at", "reason")
    CLEARED_AT_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    cleared_at: _timestamp_pb2.Timestamp
    reason: ClearReason
    def __init__(self, cleared_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., reason: _Optional[_Union[ClearReason, str]] = ...) -> None: ...

class ProblemTransition(_message.Message):
    __slots__ = ("problem_id", "seq", "open", "cleared")
    PROBLEM_ID_FIELD_NUMBER: _ClassVar[int]
    SEQ_FIELD_NUMBER: _ClassVar[int]
    OPEN_FIELD_NUMBER: _ClassVar[int]
    CLEARED_FIELD_NUMBER: _ClassVar[int]
    problem_id: str
    seq: int
    open: Problem
    cleared: ProblemCleared
    def __init__(self, problem_id: _Optional[str] = ..., seq: _Optional[int] = ..., open: _Optional[_Union[Problem, _Mapping]] = ..., cleared: _Optional[_Union[ProblemCleared, _Mapping]] = ...) -> None: ...

class ReportProblemsRequest(_message.Message):
    __slots__ = ("stream_id", "previous_stream_ids", "seq", "transitions", "snapshot")
    STREAM_ID_FIELD_NUMBER: _ClassVar[int]
    PREVIOUS_STREAM_IDS_FIELD_NUMBER: _ClassVar[int]
    SEQ_FIELD_NUMBER: _ClassVar[int]
    TRANSITIONS_FIELD_NUMBER: _ClassVar[int]
    SNAPSHOT_FIELD_NUMBER: _ClassVar[int]
    stream_id: str
    previous_stream_ids: _containers.RepeatedScalarFieldContainer[str]
    seq: int
    transitions: _containers.RepeatedCompositeFieldContainer[ProblemTransition]
    snapshot: SnapshotPart
    def __init__(self, stream_id: _Optional[str] = ..., previous_stream_ids: _Optional[_Iterable[str]] = ..., seq: _Optional[int] = ..., transitions: _Optional[_Iterable[_Union[ProblemTransition, _Mapping]]] = ..., snapshot: _Optional[_Union[SnapshotPart, _Mapping]] = ...) -> None: ...

class TransitionAck(_message.Message):
    __slots__ = ("problem_id", "seq", "status")
    PROBLEM_ID_FIELD_NUMBER: _ClassVar[int]
    SEQ_FIELD_NUMBER: _ClassVar[int]
    STATUS_FIELD_NUMBER: _ClassVar[int]
    problem_id: str
    seq: int
    status: AckStatus
    def __init__(self, problem_id: _Optional[str] = ..., seq: _Optional[int] = ..., status: _Optional[_Union[AckStatus, str]] = ...) -> None: ...

class ReportProblemsResponse(_message.Message):
    __slots__ = ("acks", "applied_seq", "resync_required")
    ACKS_FIELD_NUMBER: _ClassVar[int]
    APPLIED_SEQ_FIELD_NUMBER: _ClassVar[int]
    RESYNC_REQUIRED_FIELD_NUMBER: _ClassVar[int]
    acks: _containers.RepeatedCompositeFieldContainer[TransitionAck]
    applied_seq: int
    resync_required: bool
    def __init__(self, acks: _Optional[_Iterable[_Union[TransitionAck, _Mapping]]] = ..., applied_seq: _Optional[int] = ..., resync_required: _Optional[bool] = ...) -> None: ...

class ServiceReach(_message.Message):
    __slots__ = ("user_id", "spaces")
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    SPACES_FIELD_NUMBER: _ClassVar[int]
    user_id: _identity_pb2.UserId
    spaces: _containers.RepeatedCompositeFieldContainer[ReachedSpace]
    def __init__(self, user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., spaces: _Optional[_Iterable[_Union[ReachedSpace, _Mapping]]] = ...) -> None: ...

class ReachedSpace(_message.Message):
    __slots__ = ("space_id", "since")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SINCE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    since: _timestamp_pb2.Timestamp
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., since: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ReportServiceReachRequest(_message.Message):
    __slots__ = ("stream_id", "previous_stream_ids", "seq", "reach", "removed_user_ids", "snapshot")
    STREAM_ID_FIELD_NUMBER: _ClassVar[int]
    PREVIOUS_STREAM_IDS_FIELD_NUMBER: _ClassVar[int]
    SEQ_FIELD_NUMBER: _ClassVar[int]
    REACH_FIELD_NUMBER: _ClassVar[int]
    REMOVED_USER_IDS_FIELD_NUMBER: _ClassVar[int]
    SNAPSHOT_FIELD_NUMBER: _ClassVar[int]
    stream_id: str
    previous_stream_ids: _containers.RepeatedScalarFieldContainer[str]
    seq: int
    reach: _containers.RepeatedCompositeFieldContainer[ServiceReach]
    removed_user_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.UserId]
    snapshot: SnapshotPart
    def __init__(self, stream_id: _Optional[str] = ..., previous_stream_ids: _Optional[_Iterable[str]] = ..., seq: _Optional[int] = ..., reach: _Optional[_Iterable[_Union[ServiceReach, _Mapping]]] = ..., removed_user_ids: _Optional[_Iterable[_Union[_identity_pb2.UserId, _Mapping]]] = ..., snapshot: _Optional[_Union[SnapshotPart, _Mapping]] = ...) -> None: ...

class ReportServiceReachResponse(_message.Message):
    __slots__ = ("applied_seq", "resync_required")
    APPLIED_SEQ_FIELD_NUMBER: _ClassVar[int]
    RESYNC_REQUIRED_FIELD_NUMBER: _ClassVar[int]
    applied_seq: int
    resync_required: bool
    def __init__(self, applied_seq: _Optional[int] = ..., resync_required: _Optional[bool] = ...) -> None: ...

class ServedSpace(_message.Message):
    __slots__ = ("space_id", "space_type", "name", "parent_space_id", "floor", "time_zone")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    TIME_ZONE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    space_type: _types_pb2.SpaceType
    name: str
    parent_space_id: _identity_pb2.SpaceId
    floor: int
    time_zone: str
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., floor: _Optional[int] = ..., time_zone: _Optional[str] = ...) -> None: ...

class ReportServedSpacesRequest(_message.Message):
    __slots__ = ("stream_id", "previous_stream_ids", "seq", "spaces", "removed_space_ids", "snapshot")
    STREAM_ID_FIELD_NUMBER: _ClassVar[int]
    PREVIOUS_STREAM_IDS_FIELD_NUMBER: _ClassVar[int]
    SEQ_FIELD_NUMBER: _ClassVar[int]
    SPACES_FIELD_NUMBER: _ClassVar[int]
    REMOVED_SPACE_IDS_FIELD_NUMBER: _ClassVar[int]
    SNAPSHOT_FIELD_NUMBER: _ClassVar[int]
    stream_id: str
    previous_stream_ids: _containers.RepeatedScalarFieldContainer[str]
    seq: int
    spaces: _containers.RepeatedCompositeFieldContainer[ServedSpace]
    removed_space_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.SpaceId]
    snapshot: SnapshotPart
    def __init__(self, stream_id: _Optional[str] = ..., previous_stream_ids: _Optional[_Iterable[str]] = ..., seq: _Optional[int] = ..., spaces: _Optional[_Iterable[_Union[ServedSpace, _Mapping]]] = ..., removed_space_ids: _Optional[_Iterable[_Union[_identity_pb2.SpaceId, _Mapping]]] = ..., snapshot: _Optional[_Union[SnapshotPart, _Mapping]] = ...) -> None: ...

class ReportServedSpacesResponse(_message.Message):
    __slots__ = ("applied_seq", "resync_required")
    APPLIED_SEQ_FIELD_NUMBER: _ClassVar[int]
    RESYNC_REQUIRED_FIELD_NUMBER: _ClassVar[int]
    applied_seq: int
    resync_required: bool
    def __init__(self, applied_seq: _Optional[int] = ..., resync_required: _Optional[bool] = ...) -> None: ...
