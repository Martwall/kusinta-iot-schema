import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.climate.v1 import climate_pb2 as _climate_pb2
from kusinta.iot.commissioning.v1 import commissioning_pb2 as _commissioning_pb2
from kusinta.iot.heating.v1 import heating_pb2 as _heating_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class StaffAppointmentKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    STAFF_APPOINTMENT_KIND_UNSPECIFIED: _ClassVar[StaffAppointmentKind]
    STAFF_APPOINTMENT_KIND_INVITE: _ClassVar[StaffAppointmentKind]
    STAFF_APPOINTMENT_KIND_PROMOTION: _ClassVar[StaffAppointmentKind]

class HouseholdHandoverState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED: _ClassVar[HouseholdHandoverState]
    HOUSEHOLD_HANDOVER_STATE_PENDING: _ClassVar[HouseholdHandoverState]
    HOUSEHOLD_HANDOVER_STATE_CANCELLED: _ClassVar[HouseholdHandoverState]
    HOUSEHOLD_HANDOVER_STATE_DONE: _ClassVar[HouseholdHandoverState]
STAFF_APPOINTMENT_KIND_UNSPECIFIED: StaffAppointmentKind
STAFF_APPOINTMENT_KIND_INVITE: StaffAppointmentKind
STAFF_APPOINTMENT_KIND_PROMOTION: StaffAppointmentKind
HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED: HouseholdHandoverState
HOUSEHOLD_HANDOVER_STATE_PENDING: HouseholdHandoverState
HOUSEHOLD_HANDOVER_STATE_CANCELLED: HouseholdHandoverState
HOUSEHOLD_HANDOVER_STATE_DONE: HouseholdHandoverState

class DemoteHouseholdAdmin(_message.Message):
    __slots__ = ("home_id", "user_id")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    user_id: _identity_pb2.UserId
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class StaffAppointment(_message.Message):
    __slots__ = ("appointee", "appointed_by", "appointed_by_name", "at", "kind")
    APPOINTEE_FIELD_NUMBER: _ClassVar[int]
    APPOINTED_BY_FIELD_NUMBER: _ClassVar[int]
    APPOINTED_BY_NAME_FIELD_NUMBER: _ClassVar[int]
    AT_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    appointee: _identity_pb2.UserId
    appointed_by: _identity_pb2.UserId
    appointed_by_name: str
    at: _timestamp_pb2.Timestamp
    kind: StaffAppointmentKind
    def __init__(self, appointee: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., appointed_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., appointed_by_name: _Optional[str] = ..., at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., kind: _Optional[_Union[StaffAppointmentKind, str]] = ...) -> None: ...

class StartHouseholdHandover(_message.Message):
    __slots__ = ("home_id",)
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class ConfirmHouseholdHandover(_message.Message):
    __slots__ = ("handover_id",)
    HANDOVER_ID_FIELD_NUMBER: _ClassVar[int]
    handover_id: str
    def __init__(self, handover_id: _Optional[str] = ...) -> None: ...

class CancelHouseholdHandover(_message.Message):
    __slots__ = ("handover_id",)
    HANDOVER_ID_FIELD_NUMBER: _ClassVar[int]
    handover_id: str
    def __init__(self, handover_id: _Optional[str] = ...) -> None: ...

class ListHouseholdHandovers(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class HouseholdHandover(_message.Message):
    __slots__ = ("handover_id", "home_id", "state", "started_by", "started_by_name", "started_by_staff", "started_at", "staff_confirmable_from", "ended_at", "vacated", "recipient_in_household", "recipient_household_admin", "may_end_on_move_in")
    HANDOVER_ID_FIELD_NUMBER: _ClassVar[int]
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    STATE_FIELD_NUMBER: _ClassVar[int]
    STARTED_BY_FIELD_NUMBER: _ClassVar[int]
    STARTED_BY_NAME_FIELD_NUMBER: _ClassVar[int]
    STARTED_BY_STAFF_FIELD_NUMBER: _ClassVar[int]
    STARTED_AT_FIELD_NUMBER: _ClassVar[int]
    STAFF_CONFIRMABLE_FROM_FIELD_NUMBER: _ClassVar[int]
    ENDED_AT_FIELD_NUMBER: _ClassVar[int]
    VACATED_FIELD_NUMBER: _ClassVar[int]
    RECIPIENT_IN_HOUSEHOLD_FIELD_NUMBER: _ClassVar[int]
    RECIPIENT_HOUSEHOLD_ADMIN_FIELD_NUMBER: _ClassVar[int]
    MAY_END_ON_MOVE_IN_FIELD_NUMBER: _ClassVar[int]
    handover_id: str
    home_id: _identity_pb2.SpaceId
    state: HouseholdHandoverState
    started_by: _identity_pb2.UserId
    started_by_name: str
    started_by_staff: bool
    started_at: _timestamp_pb2.Timestamp
    staff_confirmable_from: _timestamp_pb2.Timestamp
    ended_at: _timestamp_pb2.Timestamp
    vacated: bool
    recipient_in_household: bool
    recipient_household_admin: bool
    may_end_on_move_in: bool
    def __init__(self, handover_id: _Optional[str] = ..., home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., state: _Optional[_Union[HouseholdHandoverState, str]] = ..., started_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., started_by_name: _Optional[str] = ..., started_by_staff: _Optional[bool] = ..., started_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., staff_confirmable_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ended_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., vacated: _Optional[bool] = ..., recipient_in_household: _Optional[bool] = ..., recipient_household_admin: _Optional[bool] = ..., may_end_on_move_in: _Optional[bool] = ...) -> None: ...

class ClearClimateHistory(_message.Message):
    __slots__ = ("home_id",)
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class ClimateHistoryCleared(_message.Message):
    __slots__ = ("home_id", "cleared_at")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    CLEARED_AT_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    cleared_at: _timestamp_pb2.Timestamp
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., cleared_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class SetHomeName(_message.Message):
    __slots__ = ("home_id", "name")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    name: str
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ...) -> None: ...

class HouseholdHandovers(_message.Message):
    __slots__ = ("handovers",)
    HANDOVERS_FIELD_NUMBER: _ClassVar[int]
    handovers: _containers.RepeatedCompositeFieldContainer[HouseholdHandover]
    def __init__(self, handovers: _Optional[_Iterable[_Union[HouseholdHandover, _Mapping]]] = ...) -> None: ...

class ExportHouseholdData(_message.Message):
    __slots__ = ("home_id", "part_token")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    PART_TOKEN_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    part_token: str
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., part_token: _Optional[str] = ...) -> None: ...

class HouseholdExport(_message.Message):
    __slots__ = ("home_id", "room_climates", "room_history", "climate_summary", "commissioning", "heating", "next_part_token")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    ROOM_CLIMATES_FIELD_NUMBER: _ClassVar[int]
    ROOM_HISTORY_FIELD_NUMBER: _ClassVar[int]
    CLIMATE_SUMMARY_FIELD_NUMBER: _ClassVar[int]
    COMMISSIONING_FIELD_NUMBER: _ClassVar[int]
    HEATING_FIELD_NUMBER: _ClassVar[int]
    NEXT_PART_TOKEN_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    room_climates: _climate_pb2.RoomClimateList
    room_history: _climate_pb2.RoomHistory
    climate_summary: _climate_pb2.ApartmentClimateSummary
    commissioning: _commissioning_pb2.CommissioningProfile
    heating: _heating_pb2.HeatingLayout
    next_part_token: str
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., room_climates: _Optional[_Union[_climate_pb2.RoomClimateList, _Mapping]] = ..., room_history: _Optional[_Union[_climate_pb2.RoomHistory, _Mapping]] = ..., climate_summary: _Optional[_Union[_climate_pb2.ApartmentClimateSummary, _Mapping]] = ..., commissioning: _Optional[_Union[_commissioning_pb2.CommissioningProfile, _Mapping]] = ..., heating: _Optional[_Union[_heating_pb2.HeatingLayout, _Mapping]] = ..., next_part_token: _Optional[str] = ...) -> None: ...
