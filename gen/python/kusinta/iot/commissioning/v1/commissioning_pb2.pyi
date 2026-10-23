import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.device.v1 import cluster_state_pb2 as _cluster_state_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Party(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PARTY_UNSPECIFIED: _ClassVar[Party]
    PARTY_OWNER_ORGANISATION: _ClassVar[Party]
    PARTY_HOUSEHOLD: _ClassVar[Party]
    PARTY_INSTALLER: _ClassVar[Party]
    PARTY_AUTOMATIC: _ClassVar[Party]

class Necessity(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    NECESSITY_UNSPECIFIED: _ClassVar[Necessity]
    NECESSITY_REQUIRED: _ClassVar[Necessity]
    NECESSITY_FOR_FEATURE: _ClassVar[Necessity]
    NECESSITY_OPTIONAL: _ClassVar[Necessity]

class Evidence(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    EVIDENCE_UNSPECIFIED: _ClassVar[Evidence]
    EVIDENCE_STATED: _ClassVar[Evidence]
    EVIDENCE_PHOTO: _ClassVar[Evidence]
    EVIDENCE_DRAWING: _ClassVar[Evidence]
    EVIDENCE_INSPECTED: _ClassVar[Evidence]
    EVIDENCE_MEASURED: _ClassVar[Evidence]
    EVIDENCE_DERIVED: _ClassVar[Evidence]

class FactTopic(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    FACT_TOPIC_UNSPECIFIED: _ClassVar[FactTopic]
    FACT_TOPIC_BUILDING: _ClassVar[FactTopic]
    FACT_TOPIC_ROOMS: _ClassVar[FactTopic]
    FACT_TOPIC_HEAT_SOURCE: _ClassVar[FactTopic]
    FACT_TOPIC_FLOOR_HEATING: _ClassVar[FactTopic]
    FACT_TOPIC_COMFORT_LOADS: _ClassVar[FactTopic]
    FACT_TOPIC_ELECTRICITY: _ClassVar[FactTopic]
    FACT_TOPIC_DISTRICT_HEATING: _ClassVar[FactTopic]
    FACT_TOPIC_CONNECTIVITY: _ClassVar[FactTopic]
    FACT_TOPIC_COMFORT: _ClassVar[FactTopic]

class Feature(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    FEATURE_UNSPECIFIED: _ClassVar[Feature]
    FEATURE_FLOOR_ZONES: _ClassVar[Feature]
    FEATURE_PLANT: _ClassVar[Feature]
    FEATURE_COMFORT_LOADS: _ClassVar[Feature]
    FEATURE_COST: _ClassVar[Feature]
    FEATURE_PEAK_GUARD: _ClassVar[Feature]
    FEATURE_PLANNING: _ClassVar[Feature]

class FeatureState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    FEATURE_STATE_UNSPECIFIED: _ClassVar[FeatureState]
    FEATURE_STATE_WORKS: _ClassVar[FeatureState]
    FEATURE_STATE_NEEDS: _ClassVar[FeatureState]
    FEATURE_STATE_BLOCKED_FOR_SAFETY: _ClassVar[FeatureState]

class BlockReason(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    BLOCK_REASON_UNSPECIFIED: _ClassVar[BlockReason]
    BLOCK_REASON_TEST_FAILED: _ClassVar[BlockReason]
    BLOCK_REASON_OUTPUT_NOT_LEASED: _ClassVar[BlockReason]
    BLOCK_REASON_POWER_ON_NOT_AT_REST: _ClassVar[BlockReason]
    BLOCK_REASON_DEVICE_GONE: _ClassVar[BlockReason]
    BLOCK_REASON_CONTROL_ROOM_GONE: _ClassVar[BlockReason]
    BLOCK_REASON_LEASE_TOO_LONG: _ClassVar[BlockReason]

class TestKind(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    TEST_KIND_UNSPECIFIED: _ClassVar[TestKind]
    TEST_KIND_OUTPUT_LEASE: _ClassVar[TestKind]
    TEST_KIND_ZONE_EFFECT: _ClassVar[TestKind]
    TEST_KIND_PUMP_ALL_ZONES_OFF: _ClassVar[TestKind]

class TestState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    TEST_STATE_UNSPECIFIED: _ClassVar[TestState]
    TEST_STATE_RUNNING: _ClassVar[TestState]
    TEST_STATE_PASSED: _ClassVar[TestState]
    TEST_STATE_FAILED: _ClassVar[TestState]
    TEST_STATE_ABORTED: _ClassVar[TestState]

class TestFailure(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    TEST_FAILURE_UNSPECIFIED: _ClassVar[TestFailure]
    TEST_FAILURE_POWER_ON_NOT_AT_REST: _ClassVar[TestFailure]
    TEST_FAILURE_NO_STATE_CHANGE: _ClassVar[TestFailure]
    TEST_FAILURE_LEASE_NOT_RENEWED: _ClassVar[TestFailure]
    TEST_FAILURE_DID_NOT_RETURN_TO_REST: _ClassVar[TestFailure]
    TEST_FAILURE_DEVICE_UNREACHABLE: _ClassVar[TestFailure]
    TEST_FAILURE_NO_EFFECT: _ClassVar[TestFailure]
    TEST_FAILURE_OBSERVED: _ClassVar[TestFailure]

class CommissioningGrantState(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    COMMISSIONING_GRANT_STATE_UNSPECIFIED: _ClassVar[CommissioningGrantState]
    COMMISSIONING_GRANT_STATE_REQUESTED: _ClassVar[CommissioningGrantState]
    COMMISSIONING_GRANT_STATE_GRANTED: _ClassVar[CommissioningGrantState]
PARTY_UNSPECIFIED: Party
PARTY_OWNER_ORGANISATION: Party
PARTY_HOUSEHOLD: Party
PARTY_INSTALLER: Party
PARTY_AUTOMATIC: Party
NECESSITY_UNSPECIFIED: Necessity
NECESSITY_REQUIRED: Necessity
NECESSITY_FOR_FEATURE: Necessity
NECESSITY_OPTIONAL: Necessity
EVIDENCE_UNSPECIFIED: Evidence
EVIDENCE_STATED: Evidence
EVIDENCE_PHOTO: Evidence
EVIDENCE_DRAWING: Evidence
EVIDENCE_INSPECTED: Evidence
EVIDENCE_MEASURED: Evidence
EVIDENCE_DERIVED: Evidence
FACT_TOPIC_UNSPECIFIED: FactTopic
FACT_TOPIC_BUILDING: FactTopic
FACT_TOPIC_ROOMS: FactTopic
FACT_TOPIC_HEAT_SOURCE: FactTopic
FACT_TOPIC_FLOOR_HEATING: FactTopic
FACT_TOPIC_COMFORT_LOADS: FactTopic
FACT_TOPIC_ELECTRICITY: FactTopic
FACT_TOPIC_DISTRICT_HEATING: FactTopic
FACT_TOPIC_CONNECTIVITY: FactTopic
FACT_TOPIC_COMFORT: FactTopic
FEATURE_UNSPECIFIED: Feature
FEATURE_FLOOR_ZONES: Feature
FEATURE_PLANT: Feature
FEATURE_COMFORT_LOADS: Feature
FEATURE_COST: Feature
FEATURE_PEAK_GUARD: Feature
FEATURE_PLANNING: Feature
FEATURE_STATE_UNSPECIFIED: FeatureState
FEATURE_STATE_WORKS: FeatureState
FEATURE_STATE_NEEDS: FeatureState
FEATURE_STATE_BLOCKED_FOR_SAFETY: FeatureState
BLOCK_REASON_UNSPECIFIED: BlockReason
BLOCK_REASON_TEST_FAILED: BlockReason
BLOCK_REASON_OUTPUT_NOT_LEASED: BlockReason
BLOCK_REASON_POWER_ON_NOT_AT_REST: BlockReason
BLOCK_REASON_DEVICE_GONE: BlockReason
BLOCK_REASON_CONTROL_ROOM_GONE: BlockReason
BLOCK_REASON_LEASE_TOO_LONG: BlockReason
TEST_KIND_UNSPECIFIED: TestKind
TEST_KIND_OUTPUT_LEASE: TestKind
TEST_KIND_ZONE_EFFECT: TestKind
TEST_KIND_PUMP_ALL_ZONES_OFF: TestKind
TEST_STATE_UNSPECIFIED: TestState
TEST_STATE_RUNNING: TestState
TEST_STATE_PASSED: TestState
TEST_STATE_FAILED: TestState
TEST_STATE_ABORTED: TestState
TEST_FAILURE_UNSPECIFIED: TestFailure
TEST_FAILURE_POWER_ON_NOT_AT_REST: TestFailure
TEST_FAILURE_NO_STATE_CHANGE: TestFailure
TEST_FAILURE_LEASE_NOT_RENEWED: TestFailure
TEST_FAILURE_DID_NOT_RETURN_TO_REST: TestFailure
TEST_FAILURE_DEVICE_UNREACHABLE: TestFailure
TEST_FAILURE_NO_EFFECT: TestFailure
TEST_FAILURE_OBSERVED: TestFailure
COMMISSIONING_GRANT_STATE_UNSPECIFIED: CommissioningGrantState
COMMISSIONING_GRANT_STATE_REQUESTED: CommissioningGrantState
COMMISSIONING_GRANT_STATE_GRANTED: CommissioningGrantState

class Provenance(_message.Message):
    __slots__ = ("party", "evidence", "at", "by")
    PARTY_FIELD_NUMBER: _ClassVar[int]
    EVIDENCE_FIELD_NUMBER: _ClassVar[int]
    AT_FIELD_NUMBER: _ClassVar[int]
    BY_FIELD_NUMBER: _ClassVar[int]
    party: Party
    evidence: Evidence
    at: _timestamp_pb2.Timestamp
    by: _identity_pb2.UserId
    def __init__(self, party: _Optional[_Union[Party, str]] = ..., evidence: _Optional[_Union[Evidence, str]] = ..., at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ...) -> None: ...

class BindingRef(_message.Message):
    __slots__ = ("record_id", "field")
    RECORD_ID_FIELD_NUMBER: _ClassVar[int]
    FIELD_FIELD_NUMBER: _ClassVar[int]
    record_id: str
    field: str
    def __init__(self, record_id: _Optional[str] = ..., field: _Optional[str] = ...) -> None: ...

class TemplateRef(_message.Message):
    __slots__ = ("template_id", "version")
    TEMPLATE_ID_FIELD_NUMBER: _ClassVar[int]
    VERSION_FIELD_NUMBER: _ClassVar[int]
    template_id: str
    version: int
    def __init__(self, template_id: _Optional[str] = ..., version: _Optional[int] = ...) -> None: ...

class CommissioningFact(_message.Message):
    __slots__ = ("fact_id", "space_id", "record_id", "key", "value", "unknown", "answerer", "necessity", "feature", "provenance", "revision", "deviates_from", "topic")
    FACT_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    RECORD_ID_FIELD_NUMBER: _ClassVar[int]
    KEY_FIELD_NUMBER: _ClassVar[int]
    VALUE_FIELD_NUMBER: _ClassVar[int]
    UNKNOWN_FIELD_NUMBER: _ClassVar[int]
    ANSWERER_FIELD_NUMBER: _ClassVar[int]
    NECESSITY_FIELD_NUMBER: _ClassVar[int]
    FEATURE_FIELD_NUMBER: _ClassVar[int]
    PROVENANCE_FIELD_NUMBER: _ClassVar[int]
    REVISION_FIELD_NUMBER: _ClassVar[int]
    DEVIATES_FROM_FIELD_NUMBER: _ClassVar[int]
    TOPIC_FIELD_NUMBER: _ClassVar[int]
    fact_id: str
    space_id: _identity_pb2.SpaceId
    record_id: str
    key: str
    value: _cluster_state_pb2.AttributeValue
    unknown: bool
    answerer: Party
    necessity: Necessity
    feature: Feature
    provenance: Provenance
    revision: int
    deviates_from: TemplateRef
    topic: FactTopic
    def __init__(self, fact_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., record_id: _Optional[str] = ..., key: _Optional[str] = ..., value: _Optional[_Union[_cluster_state_pb2.AttributeValue, _Mapping]] = ..., unknown: _Optional[bool] = ..., answerer: _Optional[_Union[Party, str]] = ..., necessity: _Optional[_Union[Necessity, str]] = ..., feature: _Optional[_Union[Feature, str]] = ..., provenance: _Optional[_Union[Provenance, _Mapping]] = ..., revision: _Optional[int] = ..., deviates_from: _Optional[_Union[TemplateRef, _Mapping]] = ..., topic: _Optional[_Union[FactTopic, str]] = ...) -> None: ...

class TemplateFact(_message.Message):
    __slots__ = ("key", "subject_label", "value")
    KEY_FIELD_NUMBER: _ClassVar[int]
    SUBJECT_LABEL_FIELD_NUMBER: _ClassVar[int]
    VALUE_FIELD_NUMBER: _ClassVar[int]
    key: str
    subject_label: str
    value: _cluster_state_pb2.AttributeValue
    def __init__(self, key: _Optional[str] = ..., subject_label: _Optional[str] = ..., value: _Optional[_Union[_cluster_state_pb2.AttributeValue, _Mapping]] = ...) -> None: ...

class HouseTemplate(_message.Message):
    __slots__ = ("template_id", "building_id", "name", "version", "facts", "provenance")
    TEMPLATE_ID_FIELD_NUMBER: _ClassVar[int]
    BUILDING_ID_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    VERSION_FIELD_NUMBER: _ClassVar[int]
    FACTS_FIELD_NUMBER: _ClassVar[int]
    PROVENANCE_FIELD_NUMBER: _ClassVar[int]
    template_id: str
    building_id: _identity_pb2.SpaceId
    name: str
    version: int
    facts: _containers.RepeatedCompositeFieldContainer[TemplateFact]
    provenance: Provenance
    def __init__(self, template_id: _Optional[str] = ..., building_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., name: _Optional[str] = ..., version: _Optional[int] = ..., facts: _Optional[_Iterable[_Union[TemplateFact, _Mapping]]] = ..., provenance: _Optional[_Union[Provenance, _Mapping]] = ...) -> None: ...

class Need(_message.Message):
    __slots__ = ("fact_key", "test", "space_id", "answerer", "binding", "fact_topic")
    FACT_KEY_FIELD_NUMBER: _ClassVar[int]
    TEST_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    ANSWERER_FIELD_NUMBER: _ClassVar[int]
    BINDING_FIELD_NUMBER: _ClassVar[int]
    FACT_TOPIC_FIELD_NUMBER: _ClassVar[int]
    fact_key: str
    test: TestKind
    space_id: _identity_pb2.SpaceId
    answerer: Party
    binding: BindingRef
    fact_topic: FactTopic
    def __init__(self, fact_key: _Optional[str] = ..., test: _Optional[_Union[TestKind, str]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., answerer: _Optional[_Union[Party, str]] = ..., binding: _Optional[_Union[BindingRef, _Mapping]] = ..., fact_topic: _Optional[_Union[FactTopic, str]] = ...) -> None: ...

class FeatureBlock(_message.Message):
    __slots__ = ("reason", "device_id", "binding")
    REASON_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    BINDING_FIELD_NUMBER: _ClassVar[int]
    reason: BlockReason
    device_id: _identity_pb2.DeviceId
    binding: BindingRef
    def __init__(self, reason: _Optional[_Union[BlockReason, str]] = ..., device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., binding: _Optional[_Union[BindingRef, _Mapping]] = ...) -> None: ...

class FeatureStatus(_message.Message):
    __slots__ = ("feature", "state", "needs", "blocks")
    FEATURE_FIELD_NUMBER: _ClassVar[int]
    STATE_FIELD_NUMBER: _ClassVar[int]
    NEEDS_FIELD_NUMBER: _ClassVar[int]
    BLOCKS_FIELD_NUMBER: _ClassVar[int]
    feature: Feature
    state: FeatureState
    needs: _containers.RepeatedCompositeFieldContainer[Need]
    blocks: _containers.RepeatedCompositeFieldContainer[FeatureBlock]
    def __init__(self, feature: _Optional[_Union[Feature, str]] = ..., state: _Optional[_Union[FeatureState, str]] = ..., needs: _Optional[_Iterable[_Union[Need, _Mapping]]] = ..., blocks: _Optional[_Iterable[_Union[FeatureBlock, _Mapping]]] = ...) -> None: ...

class CommissioningTest(_message.Message):
    __slots__ = ("test_id", "kind", "binding", "device_id", "state", "failure", "started_at", "ends_at", "finished_at", "provenance", "superseded")
    TEST_ID_FIELD_NUMBER: _ClassVar[int]
    KIND_FIELD_NUMBER: _ClassVar[int]
    BINDING_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    STATE_FIELD_NUMBER: _ClassVar[int]
    FAILURE_FIELD_NUMBER: _ClassVar[int]
    STARTED_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    FINISHED_AT_FIELD_NUMBER: _ClassVar[int]
    PROVENANCE_FIELD_NUMBER: _ClassVar[int]
    SUPERSEDED_FIELD_NUMBER: _ClassVar[int]
    test_id: str
    kind: TestKind
    binding: BindingRef
    device_id: _identity_pb2.DeviceId
    state: TestState
    failure: TestFailure
    started_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    finished_at: _timestamp_pb2.Timestamp
    provenance: Provenance
    superseded: bool
    def __init__(self, test_id: _Optional[str] = ..., kind: _Optional[_Union[TestKind, str]] = ..., binding: _Optional[_Union[BindingRef, _Mapping]] = ..., device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., state: _Optional[_Union[TestState, str]] = ..., failure: _Optional[_Union[TestFailure, str]] = ..., started_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., finished_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., provenance: _Optional[_Union[Provenance, _Mapping]] = ..., superseded: _Optional[bool] = ...) -> None: ...

class CommissioningProfile(_message.Message):
    __slots__ = ("space_id", "facts", "tests", "features", "template", "needs_withheld")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    FACTS_FIELD_NUMBER: _ClassVar[int]
    TESTS_FIELD_NUMBER: _ClassVar[int]
    FEATURES_FIELD_NUMBER: _ClassVar[int]
    TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    NEEDS_WITHHELD_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    facts: _containers.RepeatedCompositeFieldContainer[CommissioningFact]
    tests: _containers.RepeatedCompositeFieldContainer[CommissioningTest]
    features: _containers.RepeatedCompositeFieldContainer[FeatureStatus]
    template: HouseTemplate
    needs_withheld: bool
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., facts: _Optional[_Iterable[_Union[CommissioningFact, _Mapping]]] = ..., tests: _Optional[_Iterable[_Union[CommissioningTest, _Mapping]]] = ..., features: _Optional[_Iterable[_Union[FeatureStatus, _Mapping]]] = ..., template: _Optional[_Union[HouseTemplate, _Mapping]] = ..., needs_withheld: _Optional[bool] = ...) -> None: ...

class HomeSetup(_message.Message):
    __slots__ = ("home_id", "set_up")
    HOME_ID_FIELD_NUMBER: _ClassVar[int]
    SET_UP_FIELD_NUMBER: _ClassVar[int]
    home_id: _identity_pb2.SpaceId
    set_up: bool
    def __init__(self, home_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., set_up: _Optional[bool] = ...) -> None: ...

class HomeSetups(_message.Message):
    __slots__ = ("homes",)
    HOMES_FIELD_NUMBER: _ClassVar[int]
    homes: _containers.RepeatedCompositeFieldContainer[HomeSetup]
    def __init__(self, homes: _Optional[_Iterable[_Union[HomeSetup, _Mapping]]] = ...) -> None: ...

class CommissioningRecord(_message.Message):
    __slots__ = ("fact", "test", "template")
    FACT_FIELD_NUMBER: _ClassVar[int]
    TEST_FIELD_NUMBER: _ClassVar[int]
    TEMPLATE_FIELD_NUMBER: _ClassVar[int]
    fact: CommissioningFact
    test: CommissioningTest
    template: HouseTemplate
    def __init__(self, fact: _Optional[_Union[CommissioningFact, _Mapping]] = ..., test: _Optional[_Union[CommissioningTest, _Mapping]] = ..., template: _Optional[_Union[HouseTemplate, _Mapping]] = ...) -> None: ...

class CommissioningGrant(_message.Message):
    __slots__ = ("grant_id", "space_id", "installer", "installer_name", "state", "requested_at", "expires_at", "starts_at", "ends_at", "granted_by", "granted_at")
    GRANT_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    INSTALLER_FIELD_NUMBER: _ClassVar[int]
    INSTALLER_NAME_FIELD_NUMBER: _ClassVar[int]
    STATE_FIELD_NUMBER: _ClassVar[int]
    REQUESTED_AT_FIELD_NUMBER: _ClassVar[int]
    EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    STARTS_AT_FIELD_NUMBER: _ClassVar[int]
    ENDS_AT_FIELD_NUMBER: _ClassVar[int]
    GRANTED_BY_FIELD_NUMBER: _ClassVar[int]
    GRANTED_AT_FIELD_NUMBER: _ClassVar[int]
    grant_id: str
    space_id: _identity_pb2.SpaceId
    installer: _identity_pb2.UserId
    installer_name: str
    state: CommissioningGrantState
    requested_at: _timestamp_pb2.Timestamp
    expires_at: _timestamp_pb2.Timestamp
    starts_at: _timestamp_pb2.Timestamp
    ends_at: _timestamp_pb2.Timestamp
    granted_by: _identity_pb2.UserId
    granted_at: _timestamp_pb2.Timestamp
    def __init__(self, grant_id: _Optional[str] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., installer: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., installer_name: _Optional[str] = ..., state: _Optional[_Union[CommissioningGrantState, str]] = ..., requested_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., starts_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., ends_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., granted_by: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., granted_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class CommissioningGrants(_message.Message):
    __slots__ = ("space_id", "grants")
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    GRANTS_FIELD_NUMBER: _ClassVar[int]
    space_id: _identity_pb2.SpaceId
    grants: _containers.RepeatedCompositeFieldContainer[CommissioningGrant]
    def __init__(self, space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., grants: _Optional[_Iterable[_Union[CommissioningGrant, _Mapping]]] = ...) -> None: ...
