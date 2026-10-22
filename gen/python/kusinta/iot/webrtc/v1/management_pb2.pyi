import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from kusinta.iot.access.v1 import roles_pb2 as _roles_pb2
from kusinta.iot.accountlink.v1 import account_link_pb2 as _account_link_pb2
from kusinta.iot.climate.v1 import climate_pb2 as _climate_pb2
from kusinta.iot.commissioning.v1 import commissioning_pb2 as _commissioning_pb2
from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.heating.v1 import heating_pb2 as _heating_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.link.v1 import link_pb2 as _link_pb2
from kusinta.iot.space.v1 import space_pb2 as _space_pb2
from kusinta.iot.vendor.lorawan.v1 import lorawan_pb2 as _lorawan_pb2
from kusinta.iot.webrtc.v1 import household_pb2 as _household_pb2
from kusinta.iot.webrtc.v1 import invite_pb2 as _invite_pb2
from kusinta.iot.webrtc.v1 import members_pb2 as _members_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class CreateSpace(_message.Message):
    __slots__ = ("space_type", "name", "description", "floor", "parent_space_id", "time_zone")
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    TIME_ZONE_FIELD_NUMBER: _ClassVar[int]
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    time_zone: str
    def __init__(self, space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., time_zone: _Optional[str] = ...) -> None: ...

class UpdateSpace(_message.Message):
    __slots__ = ("space_id", "space_type", "name", "description", "floor", "parent_space_id", "detach", "time_zone")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_TYPE_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    DESCRIPTION_FIELD_NUMBER: _ClassVar[int]
    FLOOR_FIELD_NUMBER: _ClassVar[int]
    PARENT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    DETACH_FIELD_NUMBER: _ClassVar[int]
    TIME_ZONE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    space_type: _types_pb2.SpaceType
    name: str
    description: str
    floor: int
    parent_space_id: _identity_pb2.SpaceId
    detach: bool
    time_zone: str
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., space_type: _Optional[_Union[_types_pb2.SpaceType, str]] = ..., name: _Optional[str] = ..., description: _Optional[str] = ..., floor: _Optional[int] = ..., parent_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., detach: _Optional[bool] = ..., time_zone: _Optional[str] = ...) -> None: ...

class DeleteSpace(_message.Message):
    __slots__ = ("space_id", "cascade")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    CASCADE_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    cascade: bool
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., cascade: _Optional[bool] = ...) -> None: ...

class AssignUserToSpace(_message.Message):
    __slots__ = ("space_id", "user_id", "relation")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    RELATION_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    user_id: _identity_pb2.UserId
    relation: _roles_pb2.MembershipRelation
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., relation: _Optional[_Union[_roles_pb2.MembershipRelation, str]] = ...) -> None: ...

class RemoveUserFromSpace(_message.Message):
    __slots__ = ("space_id", "user_id")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    USER_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    user_id: _identity_pb2.UserId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class PlaceDeviceInSpace(_message.Message):
    __slots__ = ("device_id", "space_id")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    space_id: _identity_pb2.SpaceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class RemoveDeviceFromSpace(_message.Message):
    __slots__ = ("device_id", "space_id")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    space_id: _identity_pb2.SpaceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class ClaimDevice(_message.Message):
    __slots__ = ("device_id", "ownership", "initial_space_id", "possession_proof")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    OWNERSHIP_FIELD_NUMBER: _ClassVar[int]
    INITIAL_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    POSSESSION_PROOF_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    ownership: _types_pb2.DeviceOwnershipType
    initial_space_id: _identity_pb2.SpaceId
    possession_proof: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., ownership: _Optional[_Union[_types_pb2.DeviceOwnershipType, str]] = ..., initial_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., possession_proof: _Optional[str] = ...) -> None: ...

class ReleaseDevice(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class ProvisionDevice(_message.Message):
    __slots__ = ("connector_id", "lorawan")
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    LORAWAN_FIELD_NUMBER: _ClassVar[int]
    connector_id: _identity_pb2.ConnectorId
    lorawan: _lorawan_pb2.LorawanProvisioning
    def __init__(self, connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ..., lorawan: _Optional[_Union[_lorawan_pb2.LorawanProvisioning, _Mapping]] = ...) -> None: ...

class ListSpaces(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class SpaceTree(_message.Message):
    __slots__ = ("spaces",)
    SPACES_FIELD_NUMBER: _ClassVar[int]
    spaces: _containers.RepeatedCompositeFieldContainer[_space_pb2.Space]
    def __init__(self, spaces: _Optional[_Iterable[_Union[_space_pb2.Space, _Mapping]]] = ...) -> None: ...

class ManagementAck(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class CreateDeviceLink(_message.Message):
    __slots__ = ("sender", "receiver", "function", "mode", "settings")
    SENDER_FIELD_NUMBER: _ClassVar[int]
    RECEIVER_FIELD_NUMBER: _ClassVar[int]
    FUNCTION_FIELD_NUMBER: _ClassVar[int]
    MODE_FIELD_NUMBER: _ClassVar[int]
    SETTINGS_FIELD_NUMBER: _ClassVar[int]
    sender: _identity_pb2.DeviceId
    receiver: _identity_pb2.DeviceId
    function: _link_pb2.LinkFunction
    mode: _link_pb2.LinkMode
    settings: _link_pb2.LinkSettings
    def __init__(self, sender: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., receiver: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., function: _Optional[_Union[_link_pb2.LinkFunction, str]] = ..., mode: _Optional[_Union[_link_pb2.LinkMode, str]] = ..., settings: _Optional[_Union[_link_pb2.LinkSettings, _Mapping]] = ...) -> None: ...

class RemoveDeviceLink(_message.Message):
    __slots__ = ("link_id",)
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    def __init__(self, link_id: _Optional[str] = ...) -> None: ...

class UpdateDeviceLink(_message.Message):
    __slots__ = ("link_id", "settings")
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    SETTINGS_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    settings: _link_pb2.LinkSettings
    def __init__(self, link_id: _Optional[str] = ..., settings: _Optional[_Union[_link_pb2.LinkSettings, _Mapping]] = ...) -> None: ...

class ListDeviceLinks(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class SetRoomTarget(_message.Message):
    __slots__ = ("room_id", "target_centidegrees")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    TARGET_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    target_centidegrees: int
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., target_centidegrees: _Optional[int] = ...) -> None: ...

class RoomSensors(_message.Message):
    __slots__ = ("sensor_ids",)
    SENSOR_IDS_FIELD_NUMBER: _ClassVar[int]
    sensor_ids: _containers.RepeatedCompositeFieldContainer[_identity_pb2.DeviceId]
    def __init__(self, sensor_ids: _Optional[_Iterable[_Union[_identity_pb2.DeviceId, _Mapping]]] = ...) -> None: ...

class RoomLimits(_message.Message):
    __slots__ = ("min_centidegrees", "max_centidegrees")
    MIN_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    MAX_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    min_centidegrees: int
    max_centidegrees: int
    def __init__(self, min_centidegrees: _Optional[int] = ..., max_centidegrees: _Optional[int] = ...) -> None: ...

class ConfigureRoomClimate(_message.Message):
    __slots__ = ("room_id", "limits", "sensors", "lock_device_controls")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    LIMITS_FIELD_NUMBER: _ClassVar[int]
    SENSORS_FIELD_NUMBER: _ClassVar[int]
    LOCK_DEVICE_CONTROLS_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    limits: RoomLimits
    sensors: RoomSensors
    lock_device_controls: bool
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., limits: _Optional[_Union[RoomLimits, _Mapping]] = ..., sensors: _Optional[_Union[RoomSensors, _Mapping]] = ..., lock_device_controls: _Optional[bool] = ...) -> None: ...

class SetClimateMode(_message.Message):
    __slots__ = ("space_id", "kind", "setback_centidegrees", "starts_at", "ends_at")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    SETBACK_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    STARTS_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    kind: _climate_pb2.ClimateModeKind
    setback_centidegrees: int
    starts_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., kind: _Optional[_Union[_climate_pb2.ClimateModeKind, str]] = ..., setback_centidegrees: _Optional[int] = ..., starts_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ListRoomClimates(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class GetRoomHistory(_message.Message):
    __slots__ = ("room_id", "from_time", "to_time")
    ROOM_ID_FIELD_NUMBER: _ClassVar[int]
    FROM_TIME_FIELD_NUMBER: _ClassVar[int]
    TO_TIME_FIELD_NUMBER: _ClassVar[int]
    room_id: _identity_pb2.SpaceId
    from_time: _timestamp_pb2.Timestamp
    to_time: _timestamp_pb2.Timestamp
    def __init__(self, room_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., from_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., to_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class PrivacyDisclosure(_message.Message):
    __slots__ = ("space_id", "service_parties", "climate_summary_period", "owner_organisation_name", "names_withheld", "staff_appointments")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    SERVICE_PARTIES_FIELD_NUMBER: _ClassVar[int]
    CLIMATE_SUMMARY_PERIOD_FIELD_NUMBER: _ClassVar[int]
    OWNER_ORGANISATION_NAME_FIELD_NUMBER: _ClassVar[int]
    NAMES_WITHHELD_FIELD_NUMBER: _ClassVar[int]
    STAFF_APPOINTMENTS_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    service_parties: _containers.RepeatedCompositeFieldContainer[ServiceParty]
    climate_summary_period: _climate_pb2.ClimateSummaryPeriod
    owner_organisation_name: str
    names_withheld: bool
    staff_appointments: _containers.RepeatedCompositeFieldContainer[_household_pb2.StaffAppointment]
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., service_parties: _Optional[_Iterable[_Union[ServiceParty, _Mapping]]] = ..., climate_summary_period: _Optional[_Union[_climate_pb2.ClimateSummaryPeriod, str]] = ..., owner_organisation_name: _Optional[str] = ..., names_withheld: _Optional[bool] = ..., staff_appointments: _Optional[_Iterable[_Union[_household_pb2.StaffAppointment, _Mapping]]] = ...) -> None: ...

class ServiceParty(_message.Message):
    __slots__ = ("role", "signals", "names")
    ROLE_FIELD_NUMBER: _ClassVar[int]
    SIGNALS_FIELD_NUMBER: _ClassVar[int]
    NAMES_FIELD_NUMBER: _ClassVar[int]
    role: _roles_pb2.Role
    signals: _containers.RepeatedScalarFieldContainer[_acl_pb2.ServiceSignal]
    names: _containers.RepeatedScalarFieldContainer[str]
    def __init__(self, role: _Optional[_Union[_roles_pb2.Role, str]] = ..., signals: _Optional[_Iterable[_Union[_acl_pb2.ServiceSignal, str]]] = ..., names: _Optional[_Iterable[str]] = ...) -> None: ...

class GetPrivacyDisclosure(_message.Message):
    __slots__ = ("space_id",)
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class GetApartmentClimateSummary(_message.Message):
    __slots__ = ("apartment_id", "period", "from_time", "to_time")
    APARTMENT_ID_FIELD_NUMBER: _ClassVar[int]
    PERIOD_FIELD_NUMBER: _ClassVar[int]
    FROM_TIME_FIELD_NUMBER: _ClassVar[int]
    TO_TIME_FIELD_NUMBER: _ClassVar[int]
    apartment_id: _identity_pb2.SpaceId
    period: _climate_pb2.ClimateSummaryPeriod
    from_time: _timestamp_pb2.Timestamp
    to_time: _timestamp_pb2.Timestamp
    def __init__(self, apartment_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., period: _Optional[_Union[_climate_pb2.ClimateSummaryPeriod, str]] = ..., from_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., to_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class ReconnectConnector(_message.Message):
    __slots__ = ("connector_id",)
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    connector_id: _identity_pb2.ConnectorId
    def __init__(self, connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ...) -> None: ...

class ListHeating(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class PutHeatingPlant(_message.Message):
    __slots__ = ("plant",)
    PLANT_FIELD_NUMBER: _ClassVar[int]
    plant: _heating_pb2.HeatingPlant
    def __init__(self, plant: _Optional[_Union[_heating_pb2.HeatingPlant, _Mapping]] = ...) -> None: ...

class PutHeatingCircuit(_message.Message):
    __slots__ = ("circuit",)
    CIRCUIT_FIELD_NUMBER: _ClassVar[int]
    circuit: _heating_pb2.HeatingCircuit
    def __init__(self, circuit: _Optional[_Union[_heating_pb2.HeatingCircuit, _Mapping]] = ...) -> None: ...

class PutFloorZone(_message.Message):
    __slots__ = ("zone",)
    ZONE_FIELD_NUMBER: _ClassVar[int]
    zone: _heating_pb2.FloorZone
    def __init__(self, zone: _Optional[_Union[_heating_pb2.FloorZone, _Mapping]] = ...) -> None: ...

class PutComfortLoad(_message.Message):
    __slots__ = ("comfort_load",)
    COMFORT_LOAD_FIELD_NUMBER: _ClassVar[int]
    comfort_load: _heating_pb2.ComfortLoad
    def __init__(self, comfort_load: _Optional[_Union[_heating_pb2.ComfortLoad, _Mapping]] = ...) -> None: ...

class RemoveHeatingRecord(_message.Message):
    __slots__ = ("id", "revision")
    ID_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    id: str
    revision: int
    def __init__(self, id: _Optional[str] = ..., revision: _Optional[int] = ...) -> None: ...

class SetComfortWindows(_message.Message):
    __slots__ = ("comfort_load_id", "windows", "windows_revision")
    COMFORT_LOAD_ID_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_FIELD_NUMBER: _ClassVar[int]
    WINDOWS_REVISION_FIELD_NUMBER: _ClassVar[int]
    comfort_load_id: str
    windows: _containers.RepeatedCompositeFieldContainer[_heating_pb2.ComfortWindow]
    windows_revision: int
    def __init__(self, comfort_load_id: _Optional[str] = ..., windows: _Optional[_Iterable[_Union[_heating_pb2.ComfortWindow, _Mapping]]] = ..., windows_revision: _Optional[int] = ...) -> None: ...

class RequestAccountLinkNonce(_message.Message):
    __slots__ = ("home_id", "service")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    SERVICE_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    service: _account_link_pb2.LinkedService
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., service: _Optional[_Union[_account_link_pb2.LinkedService, str]] = ...) -> None: ...

class ListAccountLinks(_message.Message):
    __slots__ = ("home_id",)
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class UnlinkAccount(_message.Message):
    __slots__ = ("home_id", "service")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    SERVICE_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    service: _account_link_pb2.LinkedService
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., service: _Optional[_Union[_account_link_pb2.LinkedService, str]] = ...) -> None: ...

class ListCommissioning(_message.Message):
    __slots__ = ("space_id",)
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class PutCommissioningFact(_message.Message):
    __slots__ = ("fact",)
    FACT_FIELD_NUMBER: _ClassVar[int]
    fact: _commissioning_pb2.CommissioningFact
    def __init__(self, fact: _Optional[_Union[_commissioning_pb2.CommissioningFact, _Mapping]] = ...) -> None: ...

class RemoveCommissioningFact(_message.Message):
    __slots__ = ("fact_id", "revision")
    FACT_ID_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    fact_id: str
    revision: int
    def __init__(self, fact_id: _Optional[str] = ..., revision: _Optional[int] = ...) -> None: ...

class PutHouseTemplate(_message.Message):
    __slots__ = ("template",)
    TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    template: _commissioning_pb2.HouseTemplate
    def __init__(self, template: _Optional[_Union[_commissioning_pb2.HouseTemplate, _Mapping]] = ...) -> None: ...

class SetHomeTemplate(_message.Message):
    __slots__ = ("home_id", "template_id")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    TEMPLATE_ID_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    template_id: str
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., template_id: _Optional[str] = ...) -> None: ...

class RunCommissioningTest(_message.Message):
    __slots__ = ("kind", "binding")
    KIND_FIELD_NUMBER: _ClassVar[int]
    BINDING_FIELD_NUMBER: _ClassVar[int]
    kind: _commissioning_pb2.TestKind
    binding: _commissioning_pb2.BindingRef
    def __init__(self, kind: _Optional[_Union[_commissioning_pb2.TestKind, str]] = ..., binding: _Optional[_Union[_commissioning_pb2.BindingRef, _Mapping]] = ...) -> None: ...

class ConcludeCommissioningTest(_message.Message):
    __slots__ = ("test_id", "verdict")
    TEST_ID_FIELD_NUMBER: _ClassVar[int]
    VERDICT_FIELD_NUMBER: _ClassVar[int]
    test_id: str
    verdict: _commissioning_pb2.TestState
    def __init__(self, test_id: _Optional[str] = ..., verdict: _Optional[_Union[_commissioning_pb2.TestState, str]] = ...) -> None: ...

class ListHomeSetups(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class RequestCommissioningGrant(_message.Message):
    __slots__ = ("space_id",)
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class AnswerCommissioningGrant(_message.Message):
    __slots__ = ("grant_id", "accept", "starts_at", "ends_at")
    GRANT_ID_FIELD_NUMBER: _ClassVar[int]
    ACCEPT_FIELD_NUMBER: _ClassVar[int]
    STARTS_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    grant_id: str
    accept: bool
    starts_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    def __init__(self, grant_id: _Optional[str] = ..., accept: _Optional[bool] = ..., starts_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class EndCommissioningGrant(_message.Message):
    __slots__ = ("grant_id",)
    GRANT_ID_FIELD_NUMBER: _ClassVar[int]
    grant_id: str
    def __init__(self, grant_id: _Optional[str] = ...) -> None: ...

class ListCommissioningGrants(_message.Message):
    __slots__ = ("root_space_id",)
    ROOT_SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    root_space_id: _identity_pb2.SpaceId
    def __init__(self, root_space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ...) -> None: ...

class SetAssetOwner(_message.Message):
    __slots__ = ("device_id", "asset_owner")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    ASSET_OWNER_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    asset_owner: _types_pb2.AssetOwner
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., asset_owner: _Optional[_Union[_types_pb2.AssetOwner, _Mapping]] = ...) -> None: ...

class ManagementRequest(_message.Message):
    __slots__ = ("create_space", "update_space", "delete_space", "assign_user_to_space", "remove_user_from_space", "place_device_in_space", "remove_device_from_space", "claim_device", "release_device", "list_spaces", "create_device_link", "remove_device_link", "list_device_links", "update_device_link", "provision_device", "set_room_target", "configure_room_climate", "set_climate_mode", "list_room_climates", "get_room_history", "get_privacy_disclosure", "get_apartment_climate_summary", "reconnect_connector", "create_invite", "resend_invite", "revoke_invite", "mark_invite_email_sent", "list_space_invites", "approve_join_request", "deny_join_request", "list_gateway_members", "set_member_role", "remove_from_gateway", "set_access_until", "set_owner_organisation", "request_promotion", "answer_promotion", "list_promotion_requests", "list_heating", "put_heating_plant", "put_heating_circuit", "put_floor_zone", "put_comfort_load", "remove_heating_record", "set_comfort_windows", "request_account_link_nonce", "list_account_links", "unlink_account", "list_commissioning", "put_commissioning_fact", "remove_commissioning_fact", "put_house_template", "set_home_template", "run_commissioning_test", "conclude_commissioning_test", "list_home_setups", "request_commissioning_grant", "answer_commissioning_grant", "end_commissioning_grant", "list_commissioning_grants", "set_asset_owner", "demote_household_admin", "start_household_handover", "confirm_household_handover", "cancel_household_handover", "list_household_handovers", "export_household_data")
    CREATE_SPACE_FIELD_NUMBER: _ClassVar[int]
    UPDATE_SPACE_FIELD_NUMBER: _ClassVar[int]
    DELETE_SPACE_FIELD_NUMBER: _ClassVar[int]
    ASSIGN_USER_TO_SPACE_FIELD_NUMBER: _ClassVar[int]
    REMOVE_USER_FROM_SPACE_FIELD_NUMBER: _ClassVar[int]
    PLACE_DEVICE_IN_SPACE_FIELD_NUMBER: _ClassVar[int]
    REMOVE_DEVICE_FROM_SPACE_FIELD_NUMBER: _ClassVar[int]
    CLAIM_DEVICE_FIELD_NUMBER: _ClassVar[int]
    RELEASE_DEVICE_FIELD_NUMBER: _ClassVar[int]
    LIST_SPACES_FIELD_NUMBER: _ClassVar[int]
    CREATE_DEVICE_LINK_FIELD_NUMBER: _ClassVar[int]
    REMOVE_DEVICE_LINK_FIELD_NUMBER: _ClassVar[int]
    LIST_DEVICE_LINKS_FIELD_NUMBER: _ClassVar[int]
    UPDATE_DEVICE_LINK_FIELD_NUMBER: _ClassVar[int]
    PROVISION_DEVICE_FIELD_NUMBER: _ClassVar[int]
    SET_ROOM_TARGET_FIELD_NUMBER: _ClassVar[int]
    CONFIGURE_ROOM_CLIMATE_FIELD_NUMBER: _ClassVar[int]
    SET_CLIMATE_MODE_FIELD_NUMBER: _ClassVar[int]
    LIST_ROOM_CLIMATES_FIELD_NUMBER: _ClassVar[int]
    GET_ROOM_HISTORY_FIELD_NUMBER: _ClassVar[int]
    GET_PRIVACY_DISCLOSURE_FIELD_NUMBER: _ClassVar[int]
    GET_APARTMENT_CLIMATE_SUMMARY_FIELD_NUMBER: _ClassVar[int]
    RECONNECT_CONNECTOR_FIELD_NUMBER: _ClassVar[int]
    CREATE_INVITE_FIELD_NUMBER: _ClassVar[int]
    RESEND_INVITE_FIELD_NUMBER: _ClassVar[int]
    REVOKE_INVITE_FIELD_NUMBER: _ClassVar[int]
    MARK_INVITE_EMAIL_SENT_FIELD_NUMBER: _ClassVar[int]
    LIST_SPACE_INVITES_FIELD_NUMBER: _ClassVar[int]
    APPROVE_JOIN_REQUEST_FIELD_NUMBER: _ClassVar[int]
    DENY_JOIN_REQUEST_FIELD_NUMBER: _ClassVar[int]
    LIST_GATEWAY_MEMBERS_FIELD_NUMBER: _ClassVar[int]
    SET_MEMBER_ROLE_FIELD_NUMBER: _ClassVar[int]
    REMOVE_FROM_GATEWAY_FIELD_NUMBER: _ClassVar[int]
    SET_ACCESS_UNTIL_FIELD_NUMBER: _ClassVar[int]
    SET_OWNER_ORGANISATION_FIELD_NUMBER: _ClassVar[int]
    REQUEST_PROMOTION_FIELD_NUMBER: _ClassVar[int]
    ANSWER_PROMOTION_FIELD_NUMBER: _ClassVar[int]
    LIST_PROMOTION_REQUESTS_FIELD_NUMBER: _ClassVar[int]
    LIST_HEATING_FIELD_NUMBER: _ClassVar[int]
    PUT_HEATING_PLANT_FIELD_NUMBER: _ClassVar[int]
    PUT_HEATING_CIRCUIT_FIELD_NUMBER: _ClassVar[int]
    PUT_FLOOR_ZONE_FIELD_NUMBER: _ClassVar[int]
    PUT_COMFORT_LOAD_FIELD_NUMBER: _ClassVar[int]
    REMOVE_HEATING_RECORD_FIELD_NUMBER: _ClassVar[int]
    SET_COMFORT_WINDOWS_FIELD_NUMBER: _ClassVar[int]
    REQUEST_ACCOUNT_LINK_NONCE_FIELD_NUMBER: _ClassVar[int]
    LIST_ACCOUNT_LINKS_FIELD_NUMBER: _ClassVar[int]
    UNLINK_ACCOUNT_FIELD_NUMBER: _ClassVar[int]
    LIST_COMMISSIONING_FIELD_NUMBER: _ClassVar[int]
    PUT_COMMISSIONING_FACT_FIELD_NUMBER: _ClassVar[int]
    REMOVE_COMMISSIONING_FACT_FIELD_NUMBER: _ClassVar[int]
    PUT_HOUSE_TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    SET_HOME_TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    RUN_COMMISSIONING_TEST_FIELD_NUMBER: _ClassVar[int]
    CONCLUDE_COMMISSIONING_TEST_FIELD_NUMBER: _ClassVar[int]
    LIST_HOME_SETUPS_FIELD_NUMBER: _ClassVar[int]
    REQUEST_COMMISSIONING_GRANT_FIELD_NUMBER: _ClassVar[int]
    ANSWER_COMMISSIONING_GRANT_FIELD_NUMBER: _ClassVar[int]
    END_COMMISSIONING_GRANT_FIELD_NUMBER: _ClassVar[int]
    LIST_COMMISSIONING_GRANTS_FIELD_NUMBER: _ClassVar[int]
    SET_ASSET_OWNER_FIELD_NUMBER: _ClassVar[int]
    DEMOTE_HOUSEHOLD_ADMIN_FIELD_NUMBER: _ClassVar[int]
    START_HOUSEHOLD_HANDOVER_FIELD_NUMBER: _ClassVar[int]
    CONFIRM_HOUSEHOLD_HANDOVER_FIELD_NUMBER: _ClassVar[int]
    CANCEL_HOUSEHOLD_HANDOVER_FIELD_NUMBER: _ClassVar[int]
    LIST_HOUSEHOLD_HANDOVERS_FIELD_NUMBER: _ClassVar[int]
    EXPORT_HOUSEHOLD_DATA_FIELD_NUMBER: _ClassVar[int]
    create_space: CreateSpace
    update_space: UpdateSpace
    delete_space: DeleteSpace
    assign_user_to_space: AssignUserToSpace
    remove_user_from_space: RemoveUserFromSpace
    place_device_in_space: PlaceDeviceInSpace
    remove_device_from_space: RemoveDeviceFromSpace
    claim_device: ClaimDevice
    release_device: ReleaseDevice
    list_spaces: ListSpaces
    create_device_link: CreateDeviceLink
    remove_device_link: RemoveDeviceLink
    list_device_links: ListDeviceLinks
    update_device_link: UpdateDeviceLink
    provision_device: ProvisionDevice
    set_room_target: SetRoomTarget
    configure_room_climate: ConfigureRoomClimate
    set_climate_mode: SetClimateMode
    list_room_climates: ListRoomClimates
    get_room_history: GetRoomHistory
    get_privacy_disclosure: GetPrivacyDisclosure
    get_apartment_climate_summary: GetApartmentClimateSummary
    reconnect_connector: ReconnectConnector
    create_invite: _invite_pb2.CreateInvite
    resend_invite: _invite_pb2.ResendInvite
    revoke_invite: _invite_pb2.RevokeInvite
    mark_invite_email_sent: _invite_pb2.MarkInviteEmailSent
    list_space_invites: _invite_pb2.ListSpaceInvites
    approve_join_request: _invite_pb2.ApproveJoinRequest
    deny_join_request: _invite_pb2.DenyJoinRequest
    list_gateway_members: _members_pb2.ListGatewayMembers
    set_member_role: _members_pb2.SetMemberRole
    remove_from_gateway: _members_pb2.RemoveFromGateway
    set_access_until: _members_pb2.SetAccessUntil
    set_owner_organisation: _members_pb2.SetOwnerOrganisation
    request_promotion: _members_pb2.RequestPromotion
    answer_promotion: _members_pb2.AnswerPromotion
    list_promotion_requests: _members_pb2.ListPromotionRequests
    list_heating: ListHeating
    put_heating_plant: PutHeatingPlant
    put_heating_circuit: PutHeatingCircuit
    put_floor_zone: PutFloorZone
    put_comfort_load: PutComfortLoad
    remove_heating_record: RemoveHeatingRecord
    set_comfort_windows: SetComfortWindows
    request_account_link_nonce: RequestAccountLinkNonce
    list_account_links: ListAccountLinks
    unlink_account: UnlinkAccount
    list_commissioning: ListCommissioning
    put_commissioning_fact: PutCommissioningFact
    remove_commissioning_fact: RemoveCommissioningFact
    put_house_template: PutHouseTemplate
    set_home_template: SetHomeTemplate
    run_commissioning_test: RunCommissioningTest
    conclude_commissioning_test: ConcludeCommissioningTest
    list_home_setups: ListHomeSetups
    request_commissioning_grant: RequestCommissioningGrant
    answer_commissioning_grant: AnswerCommissioningGrant
    end_commissioning_grant: EndCommissioningGrant
    list_commissioning_grants: ListCommissioningGrants
    set_asset_owner: SetAssetOwner
    demote_household_admin: _household_pb2.DemoteHouseholdAdmin
    start_household_handover: _household_pb2.StartHouseholdHandover
    confirm_household_handover: _household_pb2.ConfirmHouseholdHandover
    cancel_household_handover: _household_pb2.CancelHouseholdHandover
    list_household_handovers: _household_pb2.ListHouseholdHandovers
    export_household_data: _household_pb2.ExportHouseholdData
    def __init__(self, create_space: _Optional[_Union[CreateSpace, _Mapping]] = ..., update_space: _Optional[_Union[UpdateSpace, _Mapping]] = ..., delete_space: _Optional[_Union[DeleteSpace, _Mapping]] = ..., assign_user_to_space: _Optional[_Union[AssignUserToSpace, _Mapping]] = ..., remove_user_from_space: _Optional[_Union[RemoveUserFromSpace, _Mapping]] = ..., place_device_in_space: _Optional[_Union[PlaceDeviceInSpace, _Mapping]] = ..., remove_device_from_space: _Optional[_Union[RemoveDeviceFromSpace, _Mapping]] = ..., claim_device: _Optional[_Union[ClaimDevice, _Mapping]] = ..., release_device: _Optional[_Union[ReleaseDevice, _Mapping]] = ..., list_spaces: _Optional[_Union[ListSpaces, _Mapping]] = ..., create_device_link: _Optional[_Union[CreateDeviceLink, _Mapping]] = ..., remove_device_link: _Optional[_Union[RemoveDeviceLink, _Mapping]] = ..., list_device_links: _Optional[_Union[ListDeviceLinks, _Mapping]] = ..., update_device_link: _Optional[_Union[UpdateDeviceLink, _Mapping]] = ..., provision_device: _Optional[_Union[ProvisionDevice, _Mapping]] = ..., set_room_target: _Optional[_Union[SetRoomTarget, _Mapping]] = ..., configure_room_climate: _Optional[_Union[ConfigureRoomClimate, _Mapping]] = ..., set_climate_mode: _Optional[_Union[SetClimateMode, _Mapping]] = ..., list_room_climates: _Optional[_Union[ListRoomClimates, _Mapping]] = ..., get_room_history: _Optional[_Union[GetRoomHistory, _Mapping]] = ..., get_privacy_disclosure: _Optional[_Union[GetPrivacyDisclosure, _Mapping]] = ..., get_apartment_climate_summary: _Optional[_Union[GetApartmentClimateSummary, _Mapping]] = ..., reconnect_connector: _Optional[_Union[ReconnectConnector, _Mapping]] = ..., create_invite: _Optional[_Union[_invite_pb2.CreateInvite, _Mapping]] = ..., resend_invite: _Optional[_Union[_invite_pb2.ResendInvite, _Mapping]] = ..., revoke_invite: _Optional[_Union[_invite_pb2.RevokeInvite, _Mapping]] = ..., mark_invite_email_sent: _Optional[_Union[_invite_pb2.MarkInviteEmailSent, _Mapping]] = ..., list_space_invites: _Optional[_Union[_invite_pb2.ListSpaceInvites, _Mapping]] = ..., approve_join_request: _Optional[_Union[_invite_pb2.ApproveJoinRequest, _Mapping]] = ..., deny_join_request: _Optional[_Union[_invite_pb2.DenyJoinRequest, _Mapping]] = ..., list_gateway_members: _Optional[_Union[_members_pb2.ListGatewayMembers, _Mapping]] = ..., set_member_role: _Optional[_Union[_members_pb2.SetMemberRole, _Mapping]] = ..., remove_from_gateway: _Optional[_Union[_members_pb2.RemoveFromGateway, _Mapping]] = ..., set_access_until: _Optional[_Union[_members_pb2.SetAccessUntil, _Mapping]] = ..., set_owner_organisation: _Optional[_Union[_members_pb2.SetOwnerOrganisation, _Mapping]] = ..., request_promotion: _Optional[_Union[_members_pb2.RequestPromotion, _Mapping]] = ..., answer_promotion: _Optional[_Union[_members_pb2.AnswerPromotion, _Mapping]] = ..., list_promotion_requests: _Optional[_Union[_members_pb2.ListPromotionRequests, _Mapping]] = ..., list_heating: _Optional[_Union[ListHeating, _Mapping]] = ..., put_heating_plant: _Optional[_Union[PutHeatingPlant, _Mapping]] = ..., put_heating_circuit: _Optional[_Union[PutHeatingCircuit, _Mapping]] = ..., put_floor_zone: _Optional[_Union[PutFloorZone, _Mapping]] = ..., put_comfort_load: _Optional[_Union[PutComfortLoad, _Mapping]] = ..., remove_heating_record: _Optional[_Union[RemoveHeatingRecord, _Mapping]] = ..., set_comfort_windows: _Optional[_Union[SetComfortWindows, _Mapping]] = ..., request_account_link_nonce: _Optional[_Union[RequestAccountLinkNonce, _Mapping]] = ..., list_account_links: _Optional[_Union[ListAccountLinks, _Mapping]] = ..., unlink_account: _Optional[_Union[UnlinkAccount, _Mapping]] = ..., list_commissioning: _Optional[_Union[ListCommissioning, _Mapping]] = ..., put_commissioning_fact: _Optional[_Union[PutCommissioningFact, _Mapping]] = ..., remove_commissioning_fact: _Optional[_Union[RemoveCommissioningFact, _Mapping]] = ..., put_house_template: _Optional[_Union[PutHouseTemplate, _Mapping]] = ..., set_home_template: _Optional[_Union[SetHomeTemplate, _Mapping]] = ..., run_commissioning_test: _Optional[_Union[RunCommissioningTest, _Mapping]] = ..., conclude_commissioning_test: _Optional[_Union[ConcludeCommissioningTest, _Mapping]] = ..., list_home_setups: _Optional[_Union[ListHomeSetups, _Mapping]] = ..., request_commissioning_grant: _Optional[_Union[RequestCommissioningGrant, _Mapping]] = ..., answer_commissioning_grant: _Optional[_Union[AnswerCommissioningGrant, _Mapping]] = ..., end_commissioning_grant: _Optional[_Union[EndCommissioningGrant, _Mapping]] = ..., list_commissioning_grants: _Optional[_Union[ListCommissioningGrants, _Mapping]] = ..., set_asset_owner: _Optional[_Union[SetAssetOwner, _Mapping]] = ..., demote_household_admin: _Optional[_Union[_household_pb2.DemoteHouseholdAdmin, _Mapping]] = ..., start_household_handover: _Optional[_Union[_household_pb2.StartHouseholdHandover, _Mapping]] = ..., confirm_household_handover: _Optional[_Union[_household_pb2.ConfirmHouseholdHandover, _Mapping]] = ..., cancel_household_handover: _Optional[_Union[_household_pb2.CancelHouseholdHandover, _Mapping]] = ..., list_household_handovers: _Optional[_Union[_household_pb2.ListHouseholdHandovers, _Mapping]] = ..., export_household_data: _Optional[_Union[_household_pb2.ExportHouseholdData, _Mapping]] = ...) -> None: ...
