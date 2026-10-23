// This is a generated file - do not edit.
//
// Generated from kusinta/iot/commissioning/v1/commissioning.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Who answers a fact, or ran or concluded a test.
class Party extends $pb.ProtobufEnum {
  static const Party PARTY_UNSPECIFIED =
      Party._(0, _omitEnumNames ? '' : 'PARTY_UNSPECIFIED');

  /// The property owner or the gateway's administrators.
  static const Party PARTY_OWNER_ORGANISATION =
      Party._(1, _omitEnumNames ? '' : 'PARTY_OWNER_ORGANISATION');

  /// A household admin of the home (access.v1.MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN).
  static const Party PARTY_HOUSEHOLD =
      Party._(2, _omitEnumNames ? '' : 'PARTY_HOUSEHOLD');

  /// An installer under a commissioning grant (CommissioningGrant).
  static const Party PARTY_INSTALLER =
      Party._(3, _omitEnumNames ? '' : 'PARTY_INSTALLER');

  /// The gateway, from a device, a connector or a measurement of its own.
  static const Party PARTY_AUTOMATIC =
      Party._(4, _omitEnumNames ? '' : 'PARTY_AUTOMATIC');

  static const $core.List<Party> values = <Party>[
    PARTY_UNSPECIFIED,
    PARTY_OWNER_ORGANISATION,
    PARTY_HOUSEHOLD,
    PARTY_INSTALLER,
    PARTY_AUTOMATIC,
  ];

  static final $core.List<Party?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Party? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Party._(super.value, super.name);
}

/// How much a fact is needed.
class Necessity extends $pb.ProtobufEnum {
  static const Necessity NECESSITY_UNSPECIFIED =
      Necessity._(0, _omitEnumNames ? '' : 'NECESSITY_UNSPECIFIED');

  /// Before the home is set up (HomeSetup).
  static const Necessity NECESSITY_REQUIRED =
      Necessity._(1, _omitEnumNames ? '' : 'NECESSITY_REQUIRED');

  /// Before its feature works (CommissioningFact.feature).
  static const Necessity NECESSITY_FOR_FEATURE =
      Necessity._(2, _omitEnumNames ? '' : 'NECESSITY_FOR_FEATURE');
  static const Necessity NECESSITY_OPTIONAL =
      Necessity._(3, _omitEnumNames ? '' : 'NECESSITY_OPTIONAL');

  static const $core.List<Necessity> values = <Necessity>[
    NECESSITY_UNSPECIFIED,
    NECESSITY_REQUIRED,
    NECESSITY_FOR_FEATURE,
    NECESSITY_OPTIONAL,
  ];

  static final $core.List<Necessity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Necessity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Necessity._(super.value, super.name);
}

/// How an answer was confirmed. A household answers STATED, PHOTO or DRAWING; INSPECTED and
/// MEASURED are an installer's or the gateway's; DERIVED is the gateway's alone. A key may
/// require more (see the file comment); less is refused.
class Evidence extends $pb.ProtobufEnum {
  static const Evidence EVIDENCE_UNSPECIFIED =
      Evidence._(0, _omitEnumNames ? '' : 'EVIDENCE_UNSPECIFIED');
  static const Evidence EVIDENCE_STATED =
      Evidence._(1, _omitEnumNames ? '' : 'EVIDENCE_STATED');
  static const Evidence EVIDENCE_PHOTO =
      Evidence._(2, _omitEnumNames ? '' : 'EVIDENCE_PHOTO');
  static const Evidence EVIDENCE_DRAWING =
      Evidence._(3, _omitEnumNames ? '' : 'EVIDENCE_DRAWING');
  static const Evidence EVIDENCE_INSPECTED =
      Evidence._(4, _omitEnumNames ? '' : 'EVIDENCE_INSPECTED');
  static const Evidence EVIDENCE_MEASURED =
      Evidence._(5, _omitEnumNames ? '' : 'EVIDENCE_MEASURED');

  /// From other facts, the address or a connector's declaration.
  static const Evidence EVIDENCE_DERIVED =
      Evidence._(6, _omitEnumNames ? '' : 'EVIDENCE_DERIVED');

  static const $core.List<Evidence> values = <Evidence>[
    EVIDENCE_UNSPECIFIED,
    EVIDENCE_STATED,
    EVIDENCE_PHOTO,
    EVIDENCE_DRAWING,
    EVIDENCE_INSPECTED,
    EVIDENCE_MEASURED,
    EVIDENCE_DERIVED,
  ];

  static final $core.List<Evidence?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static Evidence? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Evidence._(super.value, super.name);
}

/// What a fact is about, for a client that does not know its key. Closed: a client words a
/// topic it does not know as a detail about the space or record, from its answerer.
class FactTopic extends $pb.ProtobufEnum {
  static const FactTopic FACT_TOPIC_UNSPECIFIED =
      FactTopic._(0, _omitEnumNames ? '' : 'FACT_TOPIC_UNSPECIFIED');

  /// The building: type, house types, drawings, gateway site, service agreements, payer.
  static const FactTopic FACT_TOPIC_BUILDING =
      FactTopic._(1, _omitEnumNames ? '' : 'FACT_TOPIC_BUILDING');

  /// Rooms, walls added or removed, how each room is heated, its thermostats.
  static const FactTopic FACT_TOPIC_ROOMS =
      FactTopic._(2, _omitEnumNames ? '' : 'FACT_TOPIC_ROOMS');

  /// The heat source: heat pump, its inputs, vendor account, blocks.
  static const FactTopic FACT_TOPIC_HEAT_SOURCE =
      FactTopic._(3, _omitEnumNames ? '' : 'FACT_TOPIC_HEAT_SOURCE');

  /// Floor heating: circuits, pump, mixing, supply cap, zones, actuators, probes.
  static const FactTopic FACT_TOPIC_FLOOR_HEATING =
      FactTopic._(4, _omitEnumNames ? '' : 'FACT_TOPIC_FLOOR_HEATING');

  /// Electric comfort loads: bathroom floors, towel heaters, their thermostats.
  static const FactTopic FACT_TOPIC_COMFORT_LOADS =
      FactTopic._(5, _omitEnumNames ? '' : 'FACT_TOPIC_COMFORT_LOADS');

  /// Electricity: grid subscription, operator, fuse size, meter and its port.
  static const FactTopic FACT_TOPIC_ELECTRICITY =
      FactTopic._(6, _omitEnumNames ? '' : 'FACT_TOPIC_ELECTRICITY');

  /// District heating: utility and tariff.
  static const FactTopic FACT_TOPIC_DISTRICT_HEATING =
      FactTopic._(7, _omitEnumNames ? '' : 'FACT_TOPIC_DISTRICT_HEATING');

  /// Radio coverage and the gateways that carry it.
  static const FactTopic FACT_TOPIC_CONNECTIVITY =
      FactTopic._(8, _omitEnumNames ? '' : 'FACT_TOPIC_CONNECTIVITY');

  /// Comfort wishes and schedules. Residents only, never under a commissioning grant.
  static const FactTopic FACT_TOPIC_COMFORT =
      FactTopic._(9, _omitEnumNames ? '' : 'FACT_TOPIC_COMFORT');

  static const $core.List<FactTopic> values = <FactTopic>[
    FACT_TOPIC_UNSPECIFIED,
    FACT_TOPIC_BUILDING,
    FACT_TOPIC_ROOMS,
    FACT_TOPIC_HEAT_SOURCE,
    FACT_TOPIC_FLOOR_HEATING,
    FACT_TOPIC_COMFORT_LOADS,
    FACT_TOPIC_ELECTRICITY,
    FACT_TOPIC_DISTRICT_HEATING,
    FACT_TOPIC_CONNECTIVITY,
    FACT_TOPIC_COMFORT,
  ];

  static final $core.List<FactTopic?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static FactTopic? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FactTopic._(super.value, super.name);
}

/// The heating features a home's commissioning unlocks.
class Feature extends $pb.ProtobufEnum {
  static const Feature FEATURE_UNSPECIFIED =
      Feature._(0, _omitEnumNames ? '' : 'FEATURE_UNSPECIFIED');
  static const Feature FEATURE_FLOOR_ZONES =
      Feature._(1, _omitEnumNames ? '' : 'FEATURE_FLOOR_ZONES');

  /// Steering the heat source (heating.v1.HeatingPlant.control).
  static const Feature FEATURE_PLANT =
      Feature._(2, _omitEnumNames ? '' : 'FEATURE_PLANT');
  static const Feature FEATURE_COMFORT_LOADS =
      Feature._(3, _omitEnumNames ? '' : 'FEATURE_COMFORT_LOADS');

  /// Planning by electricity price and the home's grid tariff.
  static const Feature FEATURE_COST =
      Feature._(4, _omitEnumNames ? '' : 'FEATURE_COST');

  /// Holding the home's load under a power peak, live.
  static const Feature FEATURE_PEAK_GUARD =
      Feature._(5, _omitEnumNames ? '' : 'FEATURE_PEAK_GUARD');

  /// Planning by forecast, from the room models.
  static const Feature FEATURE_PLANNING =
      Feature._(6, _omitEnumNames ? '' : 'FEATURE_PLANNING');

  static const $core.List<Feature> values = <Feature>[
    FEATURE_UNSPECIFIED,
    FEATURE_FLOOR_ZONES,
    FEATURE_PLANT,
    FEATURE_COMFORT_LOADS,
    FEATURE_COST,
    FEATURE_PEAK_GUARD,
    FEATURE_PLANNING,
  ];

  static final $core.List<Feature?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static Feature? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Feature._(super.value, super.name);
}

class FeatureState extends $pb.ProtobufEnum {
  /// A state this schema does not know: read as NEEDS.
  static const FeatureState FEATURE_STATE_UNSPECIFIED =
      FeatureState._(0, _omitEnumNames ? '' : 'FEATURE_STATE_UNSPECIFIED');
  static const FeatureState FEATURE_STATE_WORKS =
      FeatureState._(1, _omitEnumNames ? '' : 'FEATURE_STATE_WORKS');

  /// Something it needs is missing (FeatureStatus.needs), and nothing blocks it.
  static const FeatureState FEATURE_STATE_NEEDS =
      FeatureState._(2, _omitEnumNames ? '' : 'FEATURE_STATE_NEEDS');

  /// FeatureStatus.blocks says why. Takes precedence over NEEDS.
  static const FeatureState FEATURE_STATE_BLOCKED_FOR_SAFETY = FeatureState._(
      3, _omitEnumNames ? '' : 'FEATURE_STATE_BLOCKED_FOR_SAFETY');

  static const $core.List<FeatureState> values = <FeatureState>[
    FEATURE_STATE_UNSPECIFIED,
    FEATURE_STATE_WORKS,
    FEATURE_STATE_NEEDS,
    FEATURE_STATE_BLOCKED_FOR_SAFETY,
  ];

  static final $core.List<FeatureState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FeatureState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FeatureState._(super.value, super.name);
}

class BlockReason extends $pb.ProtobufEnum {
  static const BlockReason BLOCK_REASON_UNSPECIFIED =
      BlockReason._(0, _omitEnumNames ? '' : 'BLOCK_REASON_UNSPECIFIED');

  /// Its latest test failed, and has not passed since.
  static const BlockReason BLOCK_REASON_TEST_FAILED =
      BlockReason._(1, _omitEnumNames ? '' : 'BLOCK_REASON_TEST_FAILED');

  /// Its producer no longer states the output's write as leased with a lapse value at rest
  /// (heating.v1).
  static const BlockReason BLOCK_REASON_OUTPUT_NOT_LEASED =
      BlockReason._(2, _omitEnumNames ? '' : 'BLOCK_REASON_OUTPUT_NOT_LEASED');

  /// Its producer now states a power-on value that would leave the contact away from rest,
  /// though a pass predates it. A test that finds this fails instead
  /// (TEST_FAILURE_POWER_ON_NOT_AT_REST), and blocks as TEST_FAILED.
  static const BlockReason BLOCK_REASON_POWER_ON_NOT_AT_REST = BlockReason._(
      3, _omitEnumNames ? '' : 'BLOCK_REASON_POWER_ON_NOT_AT_REST');
  static const BlockReason BLOCK_REASON_DEVICE_GONE =
      BlockReason._(4, _omitEnumNames ? '' : 'BLOCK_REASON_DEVICE_GONE');

  /// A floor zone whose control room is deleted or outside its plant's space.
  static const BlockReason BLOCK_REASON_CONTROL_ROOM_GONE =
      BlockReason._(5, _omitEnumNames ? '' : 'BLOCK_REASON_CONTROL_ROOM_GONE');

  /// The output's shortest lease (device.v1.LeasedWrite.min_lease_seconds) is longer than
  /// the longest it may be held: "plant.max_block_minutes" for a blocking input, or the
  /// OUTPUT_LEASE test's 5 minutes.
  static const BlockReason BLOCK_REASON_LEASE_TOO_LONG =
      BlockReason._(6, _omitEnumNames ? '' : 'BLOCK_REASON_LEASE_TOO_LONG');

  static const $core.List<BlockReason> values = <BlockReason>[
    BLOCK_REASON_UNSPECIFIED,
    BLOCK_REASON_TEST_FAILED,
    BLOCK_REASON_OUTPUT_NOT_LEASED,
    BLOCK_REASON_POWER_ON_NOT_AT_REST,
    BLOCK_REASON_DEVICE_GONE,
    BLOCK_REASON_CONTROL_ROOM_GONE,
    BLOCK_REASON_LEASE_TOO_LONG,
  ];

  static final $core.List<BlockReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static BlockReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlockReason._(super.value, super.name);
}

class TestKind extends $pb.ProtobufEnum {
  static const TestKind TEST_KIND_UNSPECIFIED =
      TestKind._(0, _omitEnumNames ? '' : 'TEST_KIND_UNSPECIFIED');

  /// On one bound output (heating.v1). The gateway checks that the output's power-on value,
  /// where its producer states one, leaves the contact at rest; writes the value that takes
  /// it away from rest under a lease of L = the greater of the producer's min_lease_seconds
  /// and 60 seconds, and sees the reported contact leave rest; renews the lease before it
  /// ends and sees the contact hold past the first lease's end; then lets it lapse and sees
  /// the contact return to rest. ends_at is the start plus 2 × L plus 5 minutes for the
  /// reports. Runs only on an output whose producer states its reads REAL_TIME and whose
  /// lease bounds admit an L of at most 5 minutes, so it ends within 15 minutes; any other
  /// is refused before it starts (RunCommissioningTest). Judged by the gateway.
  static const TestKind TEST_KIND_OUTPUT_LEASE =
      TestKind._(1, _omitEnumNames ? '' : 'TEST_KIND_OUTPUT_LEASE');

  /// On one floor zone with a current OUTPUT_LEASE pass. The gateway switches the zone and
  /// sees its control room's temperature and the circuit's return probe answer. Judged by
  /// the gateway. Takes hours; the zone is kept within its rooms' comfort while it runs.
  static const TestKind TEST_KIND_ZONE_EFFECT =
      TestKind._(2, _omitEnumNames ? '' : 'TEST_KIND_ZONE_EFFECT');

  /// On one floor circuit whose every zone holds a current OUTPUT_LEASE pass. The gateway
  /// holds every zone off for at most 15 minutes while the installer watches the pump, and
  /// the installer concludes it (ConcludeCommissioningTest). Passed or failed, it sets
  /// "floor.pump_tolerates_all_zones_off" as MEASURED, with the installer's provenance.
  static const TestKind TEST_KIND_PUMP_ALL_ZONES_OFF =
      TestKind._(3, _omitEnumNames ? '' : 'TEST_KIND_PUMP_ALL_ZONES_OFF');

  static const $core.List<TestKind> values = <TestKind>[
    TEST_KIND_UNSPECIFIED,
    TEST_KIND_OUTPUT_LEASE,
    TEST_KIND_ZONE_EFFECT,
    TEST_KIND_PUMP_ALL_ZONES_OFF,
  ];

  static final $core.List<TestKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TestKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TestKind._(super.value, super.name);
}

class TestState extends $pb.ProtobufEnum {
  static const TestState TEST_STATE_UNSPECIFIED =
      TestState._(0, _omitEnumNames ? '' : 'TEST_STATE_UNSPECIFIED');
  static const TestState TEST_STATE_RUNNING =
      TestState._(1, _omitEnumNames ? '' : 'TEST_STATE_RUNNING');
  static const TestState TEST_STATE_PASSED =
      TestState._(2, _omitEnumNames ? '' : 'TEST_STATE_PASSED');
  static const TestState TEST_STATE_FAILED =
      TestState._(3, _omitEnumNames ? '' : 'TEST_STATE_FAILED');

  /// Stopped by a caller, or ended at ends_at without a verdict. Proves nothing.
  static const TestState TEST_STATE_ABORTED =
      TestState._(4, _omitEnumNames ? '' : 'TEST_STATE_ABORTED');

  static const $core.List<TestState> values = <TestState>[
    TEST_STATE_UNSPECIFIED,
    TEST_STATE_RUNNING,
    TEST_STATE_PASSED,
    TEST_STATE_FAILED,
    TEST_STATE_ABORTED,
  ];

  static final $core.List<TestState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static TestState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TestState._(super.value, super.name);
}

class TestFailure extends $pb.ProtobufEnum {
  static const TestFailure TEST_FAILURE_UNSPECIFIED =
      TestFailure._(0, _omitEnumNames ? '' : 'TEST_FAILURE_UNSPECIFIED');

  /// OUTPUT_LEASE.
  static const TestFailure TEST_FAILURE_POWER_ON_NOT_AT_REST = TestFailure._(
      1, _omitEnumNames ? '' : 'TEST_FAILURE_POWER_ON_NOT_AT_REST');
  static const TestFailure TEST_FAILURE_NO_STATE_CHANGE =
      TestFailure._(2, _omitEnumNames ? '' : 'TEST_FAILURE_NO_STATE_CHANGE');
  static const TestFailure TEST_FAILURE_LEASE_NOT_RENEWED =
      TestFailure._(3, _omitEnumNames ? '' : 'TEST_FAILURE_LEASE_NOT_RENEWED');
  static const TestFailure TEST_FAILURE_DID_NOT_RETURN_TO_REST = TestFailure._(
      4, _omitEnumNames ? '' : 'TEST_FAILURE_DID_NOT_RETURN_TO_REST');

  /// The device answered nothing within the test.
  static const TestFailure TEST_FAILURE_DEVICE_UNREACHABLE =
      TestFailure._(5, _omitEnumNames ? '' : 'TEST_FAILURE_DEVICE_UNREACHABLE');

  /// ZONE_EFFECT: the control room and the return did not answer the zone.
  static const TestFailure TEST_FAILURE_NO_EFFECT =
      TestFailure._(6, _omitEnumNames ? '' : 'TEST_FAILURE_NO_EFFECT');

  /// PUMP_ALL_ZONES_OFF: the installer's verdict.
  static const TestFailure TEST_FAILURE_OBSERVED =
      TestFailure._(7, _omitEnumNames ? '' : 'TEST_FAILURE_OBSERVED');

  static const $core.List<TestFailure> values = <TestFailure>[
    TEST_FAILURE_UNSPECIFIED,
    TEST_FAILURE_POWER_ON_NOT_AT_REST,
    TEST_FAILURE_NO_STATE_CHANGE,
    TEST_FAILURE_LEASE_NOT_RENEWED,
    TEST_FAILURE_DID_NOT_RETURN_TO_REST,
    TEST_FAILURE_DEVICE_UNREACHABLE,
    TEST_FAILURE_NO_EFFECT,
    TEST_FAILURE_OBSERVED,
  ];

  static final $core.List<TestFailure?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static TestFailure? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TestFailure._(super.value, super.name);
}

/// Where a commissioning grant stands (see the file comment, GRANTS). An ended grant has no
/// state: it is listed no more.
class CommissioningGrantState extends $pb.ProtobufEnum {
  /// A state this schema does not know: read as REQUESTED, which covers nothing.
  static const CommissioningGrantState COMMISSIONING_GRANT_STATE_UNSPECIFIED =
      CommissioningGrantState._(
          0, _omitEnumNames ? '' : 'COMMISSIONING_GRANT_STATE_UNSPECIFIED');

  /// Asked for by the installer and not yet answered. Covers nothing. Lapses unanswered at
  /// expires_at.
  static const CommissioningGrantState COMMISSIONING_GRANT_STATE_REQUESTED =
      CommissioningGrantState._(
          1, _omitEnumNames ? '' : 'COMMISSIONING_GRANT_STATE_REQUESTED');

  /// Granted. Active from starts_at until ends_at; before starts_at it covers nothing yet.
  static const CommissioningGrantState COMMISSIONING_GRANT_STATE_GRANTED =
      CommissioningGrantState._(
          2, _omitEnumNames ? '' : 'COMMISSIONING_GRANT_STATE_GRANTED');

  static const $core.List<CommissioningGrantState> values =
      <CommissioningGrantState>[
    COMMISSIONING_GRANT_STATE_UNSPECIFIED,
    COMMISSIONING_GRANT_STATE_REQUESTED,
    COMMISSIONING_GRANT_STATE_GRANTED,
  ];

  static final $core.List<CommissioningGrantState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CommissioningGrantState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CommissioningGrantState._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
