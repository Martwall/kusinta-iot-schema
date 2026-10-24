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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $0;
import '../../device/v1/cluster_state.pb.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $1;
import 'commissioning.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'commissioning.pbenum.dart';

/// Who answered, how and when. Set by the gateway from the caller, never taken from a put,
/// save evidence.
class Provenance extends $pb.GeneratedMessage {
  factory Provenance({
    Party? party,
    Evidence? evidence,
    $0.Timestamp? at,
    $1.UserId? by,
  }) {
    final result = create();
    if (party != null) result.party = party;
    if (evidence != null) result.evidence = evidence;
    if (at != null) result.at = at;
    if (by != null) result.by = by;
    return result;
  }

  Provenance._();

  factory Provenance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Provenance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Provenance',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..e<Party>(1, _omitFieldNames ? '' : 'party', $pb.PbFieldType.OE,
        defaultOrMaker: Party.PARTY_UNSPECIFIED,
        valueOf: Party.valueOf,
        enumValues: Party.values)
    ..e<Evidence>(2, _omitFieldNames ? '' : 'evidence', $pb.PbFieldType.OE,
        defaultOrMaker: Evidence.EVIDENCE_UNSPECIFIED,
        valueOf: Evidence.valueOf,
        enumValues: Evidence.values)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'at',
        subBuilder: $0.Timestamp.create)
    ..aOM<$1.UserId>(4, _omitFieldNames ? '' : 'by',
        subBuilder: $1.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Provenance clone() => Provenance()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Provenance copyWith(void Function(Provenance) updates) =>
      super.copyWith((message) => updates(message as Provenance)) as Provenance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Provenance create() => Provenance._();
  @$core.override
  Provenance createEmptyInstance() => create();
  static $pb.PbList<Provenance> createRepeated() => $pb.PbList<Provenance>();
  @$core.pragma('dart2js:noInline')
  static Provenance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Provenance>(create);
  static Provenance? _defaultInstance;

  @$pb.TagNumber(1)
  Party get party => $_getN(0);
  @$pb.TagNumber(1)
  set party(Party value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasParty() => $_has(0);
  @$pb.TagNumber(1)
  void clearParty() => $_clearField(1);

  @$pb.TagNumber(2)
  Evidence get evidence => $_getN(1);
  @$pb.TagNumber(2)
  set evidence(Evidence value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEvidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvidence() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get at => $_getN(2);
  @$pb.TagNumber(3)
  set at($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureAt() => $_ensure(2);

  /// Unset for AUTOMATIC, and after a household handover. On a home's facts and tests it is
  /// given to the home's residents, and to an installer only on what that installer put,
  /// started or concluded; to anyone else it is left unset, with party kept.
  @$pb.TagNumber(4)
  $1.UserId get by => $_getN(3);
  @$pb.TagNumber(4)
  set by($1.UserId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearBy() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.UserId ensureBy() => $_ensure(3);
}

/// One heating record (heating.v1), or one binding of it. An output is always named by its
/// proto field name as the heating record puts name it ("output", "sg_ready_block", ...),
/// even a record's only one; an empty field is the record itself, never an output.
class BindingRef extends $pb.GeneratedMessage {
  factory BindingRef({
    $core.String? recordId,
    $core.String? field_2,
  }) {
    final result = create();
    if (recordId != null) result.recordId = recordId;
    if (field_2 != null) result.field_2 = field_2;
    return result;
  }

  BindingRef._();

  factory BindingRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindingRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindingRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recordId')
    ..aOS(2, _omitFieldNames ? '' : 'field')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindingRef clone() => BindingRef()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindingRef copyWith(void Function(BindingRef) updates) =>
      super.copyWith((message) => updates(message as BindingRef)) as BindingRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindingRef create() => BindingRef._();
  @$core.override
  BindingRef createEmptyInstance() => create();
  static $pb.PbList<BindingRef> createRepeated() => $pb.PbList<BindingRef>();
  @$core.pragma('dart2js:noInline')
  static BindingRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindingRef>(create);
  static BindingRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get recordId => $_getSZ(0);
  @$pb.TagNumber(1)
  set recordId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get field_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set field_2($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasField_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearField_2() => $_clearField(2);
}

/// One version of a house template.
class TemplateRef extends $pb.GeneratedMessage {
  factory TemplateRef({
    $core.String? templateId,
    $core.int? version,
  }) {
    final result = create();
    if (templateId != null) result.templateId = templateId;
    if (version != null) result.version = version;
    return result;
  }

  TemplateRef._();

  factory TemplateRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'templateId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateRef clone() => TemplateRef()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateRef copyWith(void Function(TemplateRef) updates) =>
      super.copyWith((message) => updates(message as TemplateRef))
          as TemplateRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateRef create() => TemplateRef._();
  @$core.override
  TemplateRef createEmptyInstance() => create();
  static $pb.PbList<TemplateRef> createRepeated() => $pb.PbList<TemplateRef>();
  @$core.pragma('dart2js:noInline')
  static TemplateRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateRef>(create);
  static TemplateRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get templateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set templateId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplateId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

enum CommissioningFact_Answer { value, unknown, notSet }

class CommissioningFact extends $pb.GeneratedMessage {
  factory CommissioningFact({
    $core.String? factId,
    $1.SpaceId? spaceId,
    $core.String? recordId,
    $core.String? key,
    $2.AttributeValue? value,
    $core.bool? unknown,
    Party? answerer,
    Necessity? necessity,
    Feature? feature,
    Provenance? provenance,
    $fixnum.Int64? revision,
    TemplateRef? deviatesFrom,
    FactTopic? topic,
  }) {
    final result = create();
    if (factId != null) result.factId = factId;
    if (spaceId != null) result.spaceId = spaceId;
    if (recordId != null) result.recordId = recordId;
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    if (unknown != null) result.unknown = unknown;
    if (answerer != null) result.answerer = answerer;
    if (necessity != null) result.necessity = necessity;
    if (feature != null) result.feature = feature;
    if (provenance != null) result.provenance = provenance;
    if (revision != null) result.revision = revision;
    if (deviatesFrom != null) result.deviatesFrom = deviatesFrom;
    if (topic != null) result.topic = topic;
    return result;
  }

  CommissioningFact._();

  factory CommissioningFact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningFact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CommissioningFact_Answer>
      _CommissioningFact_AnswerByTag = {
    5: CommissioningFact_Answer.value,
    6: CommissioningFact_Answer.unknown,
    0: CommissioningFact_Answer.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningFact',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'factId')
    ..aOM<$1.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'recordId')
    ..aOS(4, _omitFieldNames ? '' : 'key')
    ..aOM<$2.AttributeValue>(5, _omitFieldNames ? '' : 'value',
        subBuilder: $2.AttributeValue.create)
    ..aOB(6, _omitFieldNames ? '' : 'unknown')
    ..e<Party>(7, _omitFieldNames ? '' : 'answerer', $pb.PbFieldType.OE,
        defaultOrMaker: Party.PARTY_UNSPECIFIED,
        valueOf: Party.valueOf,
        enumValues: Party.values)
    ..e<Necessity>(8, _omitFieldNames ? '' : 'necessity', $pb.PbFieldType.OE,
        defaultOrMaker: Necessity.NECESSITY_UNSPECIFIED,
        valueOf: Necessity.valueOf,
        enumValues: Necessity.values)
    ..e<Feature>(9, _omitFieldNames ? '' : 'feature', $pb.PbFieldType.OE,
        defaultOrMaker: Feature.FEATURE_UNSPECIFIED,
        valueOf: Feature.valueOf,
        enumValues: Feature.values)
    ..aOM<Provenance>(10, _omitFieldNames ? '' : 'provenance',
        subBuilder: Provenance.create)
    ..a<$fixnum.Int64>(
        13, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<TemplateRef>(15, _omitFieldNames ? '' : 'deviatesFrom',
        subBuilder: TemplateRef.create)
    ..e<FactTopic>(16, _omitFieldNames ? '' : 'topic', $pb.PbFieldType.OE,
        defaultOrMaker: FactTopic.FACT_TOPIC_UNSPECIFIED,
        valueOf: FactTopic.valueOf,
        enumValues: FactTopic.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningFact clone() => CommissioningFact()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningFact copyWith(void Function(CommissioningFact) updates) =>
      super.copyWith((message) => updates(message as CommissioningFact))
          as CommissioningFact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningFact create() => CommissioningFact._();
  @$core.override
  CommissioningFact createEmptyInstance() => create();
  static $pb.PbList<CommissioningFact> createRepeated() =>
      $pb.PbList<CommissioningFact>();
  @$core.pragma('dart2js:noInline')
  static CommissioningFact getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningFact>(create);
  static CommissioningFact? _defaultInstance;

  CommissioningFact_Answer whichAnswer() =>
      _CommissioningFact_AnswerByTag[$_whichOneof(0)]!;
  void clearAnswer() => $_clearField($_whichOneof(0));

  /// Assigned by the gateway, opaque; empty when creating.
  @$pb.TagNumber(1)
  $core.String get factId => $_getSZ(0);
  @$pb.TagNumber(1)
  set factId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFactId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFactId() => $_clearField(1);

  /// The space the fact is about: a building, a home or a room.
  @$pb.TagNumber(2)
  $1.SpaceId get spaceId => $_getN(1);
  @$pb.TagNumber(2)
  set spaceId($1.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.SpaceId ensureSpaceId() => $_ensure(1);

  /// A heating record within that space the fact is about. Empty: the space itself.
  @$pb.TagNumber(3)
  $core.String get recordId => $_getSZ(2);
  @$pb.TagNumber(3)
  set recordId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRecordId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecordId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get key => $_getSZ(3);
  @$pb.TagNumber(4)
  set key($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearKey() => $_clearField(4);

  @$pb.TagNumber(5)
  $2.AttributeValue get value => $_getN(4);
  @$pb.TagNumber(5)
  set value($2.AttributeValue value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.AttributeValue ensureValue() => $_ensure(4);

  /// "Don't know": an answer, which lists the fact as a need for the next party who can
  /// answer it. Only true is sent; false is refused.
  @$pb.TagNumber(6)
  $core.bool get unknown => $_getBF(5);
  @$pb.TagNumber(6)
  set unknown($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUnknown() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnknown() => $_clearField(6);

  /// From the gateway's catalogue.
  @$pb.TagNumber(7)
  Party get answerer => $_getN(6);
  @$pb.TagNumber(7)
  set answerer(Party value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAnswerer() => $_has(6);
  @$pb.TagNumber(7)
  void clearAnswerer() => $_clearField(7);

  @$pb.TagNumber(8)
  Necessity get necessity => $_getN(7);
  @$pb.TagNumber(8)
  set necessity(Necessity value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasNecessity() => $_has(7);
  @$pb.TagNumber(8)
  void clearNecessity() => $_clearField(8);

  /// For FOR_FEATURE.
  @$pb.TagNumber(9)
  Feature get feature => $_getN(8);
  @$pb.TagNumber(9)
  set feature(Feature value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFeature() => $_has(8);
  @$pb.TagNumber(9)
  void clearFeature() => $_clearField(9);

  @$pb.TagNumber(10)
  Provenance get provenance => $_getN(9);
  @$pb.TagNumber(10)
  set provenance(Provenance value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasProvenance() => $_has(9);
  @$pb.TagNumber(10)
  void clearProvenance() => $_clearField(10);
  @$pb.TagNumber(10)
  Provenance ensureProvenance() => $_ensure(9);

  /// Set by the gateway and bumped by every change; a put that replaces a fact, and a
  /// remove, names the revision it acts on.
  @$pb.TagNumber(13)
  $fixnum.Int64 get revision => $_getI64(10);
  @$pb.TagNumber(13)
  set revision($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(13)
  $core.bool hasRevision() => $_has(10);
  @$pb.TagNumber(13)
  void clearRevision() => $_clearField(13);

  /// Set: this answer departs from that version of a template, the home's when it was
  /// recorded.
  @$pb.TagNumber(15)
  TemplateRef get deviatesFrom => $_getN(11);
  @$pb.TagNumber(15)
  set deviatesFrom(TemplateRef value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasDeviatesFrom() => $_has(11);
  @$pb.TagNumber(15)
  void clearDeviatesFrom() => $_clearField(15);
  @$pb.TagNumber(15)
  TemplateRef ensureDeviatesFrom() => $_ensure(11);

  /// From the gateway's catalogue.
  @$pb.TagNumber(16)
  FactTopic get topic => $_getN(12);
  @$pb.TagNumber(16)
  set topic(FactTopic value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTopic() => $_has(12);
  @$pb.TagNumber(16)
  void clearTopic() => $_clearField(16);
}

/// One answer in a house template.
class TemplateFact extends $pb.GeneratedMessage {
  factory TemplateFact({
    $core.String? key,
    $core.String? subjectLabel,
    $2.AttributeValue? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (subjectLabel != null) result.subjectLabel = subjectLabel;
    if (value != null) result.value = value;
    return result;
  }

  TemplateFact._();

  factory TemplateFact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemplateFact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateFact',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'subjectLabel')
    ..aOM<$2.AttributeValue>(3, _omitFieldNames ? '' : 'value',
        subBuilder: $2.AttributeValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateFact clone() => TemplateFact()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemplateFact copyWith(void Function(TemplateFact) updates) =>
      super.copyWith((message) => updates(message as TemplateFact))
          as TemplateFact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemplateFact create() => TemplateFact._();
  @$core.override
  TemplateFact createEmptyInstance() => create();
  static $pb.PbList<TemplateFact> createRepeated() =>
      $pb.PbList<TemplateFact>();
  @$core.pragma('dart2js:noInline')
  static TemplateFact getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateFact>(create);
  static TemplateFact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  /// What it is about, as named on the drawing ("SL 2", "Bathroom"). Empty: the house.
  @$pb.TagNumber(2)
  $core.String get subjectLabel => $_getSZ(1);
  @$pb.TagNumber(2)
  set subjectLabel($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubjectLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectLabel() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.AttributeValue get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($2.AttributeValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.AttributeValue ensureValue() => $_ensure(2);
}

/// One house type of a building, as built. The owner organisation's.
class HouseTemplate extends $pb.GeneratedMessage {
  factory HouseTemplate({
    $core.String? templateId,
    $1.SpaceId? buildingId,
    $core.String? name,
    $core.int? version,
    $core.Iterable<TemplateFact>? facts,
    Provenance? provenance,
  }) {
    final result = create();
    if (templateId != null) result.templateId = templateId;
    if (buildingId != null) result.buildingId = buildingId;
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (facts != null) result.facts.addAll(facts);
    if (provenance != null) result.provenance = provenance;
    return result;
  }

  HouseTemplate._();

  factory HouseTemplate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HouseTemplate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HouseTemplate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'templateId')
    ..aOM<$1.SpaceId>(2, _omitFieldNames ? '' : 'buildingId',
        subBuilder: $1.SpaceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..pc<TemplateFact>(5, _omitFieldNames ? '' : 'facts', $pb.PbFieldType.PM,
        subBuilder: TemplateFact.create)
    ..aOM<Provenance>(6, _omitFieldNames ? '' : 'provenance',
        subBuilder: Provenance.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseTemplate clone() => HouseTemplate()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseTemplate copyWith(void Function(HouseTemplate) updates) =>
      super.copyWith((message) => updates(message as HouseTemplate))
          as HouseTemplate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HouseTemplate create() => HouseTemplate._();
  @$core.override
  HouseTemplate createEmptyInstance() => create();
  static $pb.PbList<HouseTemplate> createRepeated() =>
      $pb.PbList<HouseTemplate>();
  @$core.pragma('dart2js:noInline')
  static HouseTemplate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HouseTemplate>(create);
  static HouseTemplate? _defaultInstance;

  /// Assigned by the gateway, opaque; empty when creating.
  @$pb.TagNumber(1)
  $core.String get templateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set templateId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplateId() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.SpaceId get buildingId => $_getN(1);
  @$pb.TagNumber(2)
  set buildingId($1.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBuildingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildingId() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.SpaceId ensureBuildingId() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// Set by the gateway and bumped by every put; a put that replaces a template names the
  /// version it replaces. A version once given is never given to other content.
  @$pb.TagNumber(4)
  $core.int get version => $_getIZ(3);
  @$pb.TagNumber(4)
  set version($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<TemplateFact> get facts => $_getList(4);

  /// Who put this version, set by the gateway; its evidence is DRAWING. provenance.by is
  /// given to the owner organisation only, and left unset for residents and installers.
  @$pb.TagNumber(6)
  Provenance get provenance => $_getN(5);
  @$pb.TagNumber(6)
  set provenance(Provenance value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasProvenance() => $_has(5);
  @$pb.TagNumber(6)
  void clearProvenance() => $_clearField(6);
  @$pb.TagNumber(6)
  Provenance ensureProvenance() => $_ensure(5);
}

enum Need_What { factKey, test, notSet }

/// A fact or a test a feature needs, and who can provide it.
class Need extends $pb.GeneratedMessage {
  factory Need({
    $core.String? factKey,
    TestKind? test,
    $1.SpaceId? spaceId,
    Party? answerer,
    BindingRef? binding,
    FactTopic? factTopic,
  }) {
    final result = create();
    if (factKey != null) result.factKey = factKey;
    if (test != null) result.test = test;
    if (spaceId != null) result.spaceId = spaceId;
    if (answerer != null) result.answerer = answerer;
    if (binding != null) result.binding = binding;
    if (factTopic != null) result.factTopic = factTopic;
    return result;
  }

  Need._();

  factory Need.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Need.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Need_What> _Need_WhatByTag = {
    1: Need_What.factKey,
    2: Need_What.test,
    0: Need_What.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Need',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'factKey')
    ..e<TestKind>(2, _omitFieldNames ? '' : 'test', $pb.PbFieldType.OE,
        defaultOrMaker: TestKind.TEST_KIND_UNSPECIFIED,
        valueOf: TestKind.valueOf,
        enumValues: TestKind.values)
    ..aOM<$1.SpaceId>(3, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..e<Party>(5, _omitFieldNames ? '' : 'answerer', $pb.PbFieldType.OE,
        defaultOrMaker: Party.PARTY_UNSPECIFIED,
        valueOf: Party.valueOf,
        enumValues: Party.values)
    ..aOM<BindingRef>(7, _omitFieldNames ? '' : 'binding',
        subBuilder: BindingRef.create)
    ..e<FactTopic>(8, _omitFieldNames ? '' : 'factTopic', $pb.PbFieldType.OE,
        defaultOrMaker: FactTopic.FACT_TOPIC_UNSPECIFIED,
        valueOf: FactTopic.valueOf,
        enumValues: FactTopic.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Need clone() => Need()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Need copyWith(void Function(Need) updates) =>
      super.copyWith((message) => updates(message as Need)) as Need;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Need create() => Need._();
  @$core.override
  Need createEmptyInstance() => create();
  static $pb.PbList<Need> createRepeated() => $pb.PbList<Need>();
  @$core.pragma('dart2js:noInline')
  static Need getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Need>(create);
  static Need? _defaultInstance;

  Need_What whichWhat() => _Need_WhatByTag[$_whichOneof(0)]!;
  void clearWhat() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get factKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set factKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFactKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearFactKey() => $_clearField(1);

  @$pb.TagNumber(2)
  TestKind get test => $_getN(1);
  @$pb.TagNumber(2)
  set test(TestKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTest() => $_has(1);
  @$pb.TagNumber(2)
  void clearTest() => $_clearField(2);

  /// What it is needed about. For a fact, CommissioningFact.space_id and record_id, with
  /// binding.field empty; for a test, what it runs on, as CommissioningTest.binding.
  @$pb.TagNumber(3)
  $1.SpaceId get spaceId => $_getN(2);
  @$pb.TagNumber(3)
  set spaceId($1.SpaceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSpaceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceId() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.SpaceId ensureSpaceId() => $_ensure(2);

  @$pb.TagNumber(5)
  Party get answerer => $_getN(3);
  @$pb.TagNumber(5)
  set answerer(Party value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAnswerer() => $_has(3);
  @$pb.TagNumber(5)
  void clearAnswerer() => $_clearField(5);

  @$pb.TagNumber(7)
  BindingRef get binding => $_getN(4);
  @$pb.TagNumber(7)
  set binding(BindingRef value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasBinding() => $_has(4);
  @$pb.TagNumber(7)
  void clearBinding() => $_clearField(7);
  @$pb.TagNumber(7)
  BindingRef ensureBinding() => $_ensure(4);

  /// For a fact, its CommissioningFact.topic.
  @$pb.TagNumber(8)
  FactTopic get factTopic => $_getN(5);
  @$pb.TagNumber(8)
  set factTopic(FactTopic value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFactTopic() => $_has(5);
  @$pb.TagNumber(8)
  void clearFactTopic() => $_clearField(8);
}

class FeatureBlock extends $pb.GeneratedMessage {
  factory FeatureBlock({
    BlockReason? reason,
    $1.DeviceId? deviceId,
    BindingRef? binding,
  }) {
    final result = create();
    if (reason != null) result.reason = reason;
    if (deviceId != null) result.deviceId = deviceId;
    if (binding != null) result.binding = binding;
    return result;
  }

  FeatureBlock._();

  factory FeatureBlock.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeatureBlock.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeatureBlock',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..e<BlockReason>(1, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE,
        defaultOrMaker: BlockReason.BLOCK_REASON_UNSPECIFIED,
        valueOf: BlockReason.valueOf,
        enumValues: BlockReason.values)
    ..aOM<$1.DeviceId>(3, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $1.DeviceId.create)
    ..aOM<BindingRef>(5, _omitFieldNames ? '' : 'binding',
        subBuilder: BindingRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureBlock clone() => FeatureBlock()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureBlock copyWith(void Function(FeatureBlock) updates) =>
      super.copyWith((message) => updates(message as FeatureBlock))
          as FeatureBlock;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureBlock create() => FeatureBlock._();
  @$core.override
  FeatureBlock createEmptyInstance() => create();
  static $pb.PbList<FeatureBlock> createRepeated() =>
      $pb.PbList<FeatureBlock>();
  @$core.pragma('dart2js:noInline')
  static FeatureBlock getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureBlock>(create);
  static FeatureBlock? _defaultInstance;

  @$pb.TagNumber(1)
  BlockReason get reason => $_getN(0);
  @$pb.TagNumber(1)
  set reason(BlockReason value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => $_clearField(1);

  /// The binding, and the device, it is blocked on.
  @$pb.TagNumber(3)
  $1.DeviceId get deviceId => $_getN(1);
  @$pb.TagNumber(3)
  set deviceId($1.DeviceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(3)
  void clearDeviceId() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.DeviceId ensureDeviceId() => $_ensure(1);

  @$pb.TagNumber(5)
  BindingRef get binding => $_getN(2);
  @$pb.TagNumber(5)
  set binding(BindingRef value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBinding() => $_has(2);
  @$pb.TagNumber(5)
  void clearBinding() => $_clearField(5);
  @$pb.TagNumber(5)
  BindingRef ensureBinding() => $_ensure(2);
}

/// One feature of one home. WORKS when every heating record of the feature in the home may
/// be driven and nothing it needs is missing.
class FeatureStatus extends $pb.GeneratedMessage {
  factory FeatureStatus({
    Feature? feature,
    FeatureState? state,
    $core.Iterable<Need>? needs,
    $core.Iterable<FeatureBlock>? blocks,
  }) {
    final result = create();
    if (feature != null) result.feature = feature;
    if (state != null) result.state = state;
    if (needs != null) result.needs.addAll(needs);
    if (blocks != null) result.blocks.addAll(blocks);
    return result;
  }

  FeatureStatus._();

  factory FeatureStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeatureStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeatureStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..e<Feature>(1, _omitFieldNames ? '' : 'feature', $pb.PbFieldType.OE,
        defaultOrMaker: Feature.FEATURE_UNSPECIFIED,
        valueOf: Feature.valueOf,
        enumValues: Feature.values)
    ..e<FeatureState>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: FeatureState.FEATURE_STATE_UNSPECIFIED,
        valueOf: FeatureState.valueOf,
        enumValues: FeatureState.values)
    ..pc<Need>(3, _omitFieldNames ? '' : 'needs', $pb.PbFieldType.PM,
        subBuilder: Need.create)
    ..pc<FeatureBlock>(4, _omitFieldNames ? '' : 'blocks', $pb.PbFieldType.PM,
        subBuilder: FeatureBlock.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureStatus clone() => FeatureStatus()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureStatus copyWith(void Function(FeatureStatus) updates) =>
      super.copyWith((message) => updates(message as FeatureStatus))
          as FeatureStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureStatus create() => FeatureStatus._();
  @$core.override
  FeatureStatus createEmptyInstance() => create();
  static $pb.PbList<FeatureStatus> createRepeated() =>
      $pb.PbList<FeatureStatus>();
  @$core.pragma('dart2js:noInline')
  static FeatureStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureStatus>(create);
  static FeatureStatus? _defaultInstance;

  @$pb.TagNumber(1)
  Feature get feature => $_getN(0);
  @$pb.TagNumber(1)
  set feature(Feature value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFeature() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeature() => $_clearField(1);

  @$pb.TagNumber(2)
  FeatureState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(FeatureState value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Need> get needs => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<FeatureBlock> get blocks => $_getList(3);
}

class CommissioningTest extends $pb.GeneratedMessage {
  factory CommissioningTest({
    $core.String? testId,
    TestKind? kind,
    $1.DeviceId? deviceId,
    TestState? state,
    TestFailure? failure,
    $0.Timestamp? startedAt,
    $0.Timestamp? endsAt,
    $0.Timestamp? finishedAt,
    Provenance? provenance,
    $core.bool? superseded,
    BindingRef? binding,
  }) {
    final result = create();
    if (testId != null) result.testId = testId;
    if (kind != null) result.kind = kind;
    if (deviceId != null) result.deviceId = deviceId;
    if (state != null) result.state = state;
    if (failure != null) result.failure = failure;
    if (startedAt != null) result.startedAt = startedAt;
    if (endsAt != null) result.endsAt = endsAt;
    if (finishedAt != null) result.finishedAt = finishedAt;
    if (provenance != null) result.provenance = provenance;
    if (superseded != null) result.superseded = superseded;
    if (binding != null) result.binding = binding;
    return result;
  }

  CommissioningTest._();

  factory CommissioningTest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningTest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningTest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'testId')
    ..e<TestKind>(2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: TestKind.TEST_KIND_UNSPECIFIED,
        valueOf: TestKind.valueOf,
        enumValues: TestKind.values)
    ..aOM<$1.DeviceId>(5, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $1.DeviceId.create)
    ..e<TestState>(6, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: TestState.TEST_STATE_UNSPECIFIED,
        valueOf: TestState.valueOf,
        enumValues: TestState.values)
    ..e<TestFailure>(7, _omitFieldNames ? '' : 'failure', $pb.PbFieldType.OE,
        defaultOrMaker: TestFailure.TEST_FAILURE_UNSPECIFIED,
        valueOf: TestFailure.valueOf,
        enumValues: TestFailure.values)
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'startedAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'endsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(10, _omitFieldNames ? '' : 'finishedAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<Provenance>(11, _omitFieldNames ? '' : 'provenance',
        subBuilder: Provenance.create)
    ..aOB(12, _omitFieldNames ? '' : 'superseded')
    ..aOM<BindingRef>(13, _omitFieldNames ? '' : 'binding',
        subBuilder: BindingRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningTest clone() => CommissioningTest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningTest copyWith(void Function(CommissioningTest) updates) =>
      super.copyWith((message) => updates(message as CommissioningTest))
          as CommissioningTest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningTest create() => CommissioningTest._();
  @$core.override
  CommissioningTest createEmptyInstance() => create();
  static $pb.PbList<CommissioningTest> createRepeated() =>
      $pb.PbList<CommissioningTest>();
  @$core.pragma('dart2js:noInline')
  static CommissioningTest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningTest>(create);
  static CommissioningTest? _defaultInstance;

  /// Assigned by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get testId => $_getSZ(0);
  @$pb.TagNumber(1)
  set testId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestId() => $_clearField(1);

  @$pb.TagNumber(2)
  TestKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(TestKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  /// The device it ran on. Set by the gateway.
  @$pb.TagNumber(5)
  $1.DeviceId get deviceId => $_getN(2);
  @$pb.TagNumber(5)
  set deviceId($1.DeviceId value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(5)
  void clearDeviceId() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.DeviceId ensureDeviceId() => $_ensure(2);

  @$pb.TagNumber(6)
  TestState get state => $_getN(3);
  @$pb.TagNumber(6)
  set state(TestState value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(6)
  void clearState() => $_clearField(6);

  /// FAILED only.
  @$pb.TagNumber(7)
  TestFailure get failure => $_getN(4);
  @$pb.TagNumber(7)
  set failure(TestFailure value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFailure() => $_has(4);
  @$pb.TagNumber(7)
  void clearFailure() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.Timestamp get startedAt => $_getN(5);
  @$pb.TagNumber(8)
  set startedAt($0.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStartedAt() => $_has(5);
  @$pb.TagNumber(8)
  void clearStartedAt() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureStartedAt() => $_ensure(5);

  /// The latest it ends, while it runs.
  @$pb.TagNumber(9)
  $0.Timestamp get endsAt => $_getN(6);
  @$pb.TagNumber(9)
  set endsAt($0.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEndsAt() => $_has(6);
  @$pb.TagNumber(9)
  void clearEndsAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureEndsAt() => $_ensure(6);

  @$pb.TagNumber(10)
  $0.Timestamp get finishedAt => $_getN(7);
  @$pb.TagNumber(10)
  set finishedAt($0.Timestamp value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFinishedAt() => $_has(7);
  @$pb.TagNumber(10)
  void clearFinishedAt() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.Timestamp ensureFinishedAt() => $_ensure(7);

  /// Who started it; for an installer's verdict, who concluded it.
  @$pb.TagNumber(11)
  Provenance get provenance => $_getN(8);
  @$pb.TagNumber(11)
  set provenance(Provenance value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasProvenance() => $_has(8);
  @$pb.TagNumber(11)
  void clearProvenance() => $_clearField(11);
  @$pb.TagNumber(11)
  Provenance ensureProvenance() => $_ensure(8);

  /// A pass that no longer holds; see the file comment.
  @$pb.TagNumber(12)
  $core.bool get superseded => $_getBF(9);
  @$pb.TagNumber(12)
  set superseded($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(12)
  $core.bool hasSuperseded() => $_has(9);
  @$pb.TagNumber(12)
  void clearSuperseded() => $_clearField(12);

  /// What it runs on: for OUTPUT_LEASE one binding; for ZONE_EFFECT and PUMP_ALL_ZONES_OFF
  /// the record, field empty.
  @$pb.TagNumber(13)
  BindingRef get binding => $_getN(10);
  @$pb.TagNumber(13)
  set binding(BindingRef value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasBinding() => $_has(10);
  @$pb.TagNumber(13)
  void clearBinding() => $_clearField(13);
  @$pb.TagNumber(13)
  BindingRef ensureBinding() => $_ensure(10);
}

/// A space's commissioning, in reply to ListCommissioning.
class CommissioningProfile extends $pb.GeneratedMessage {
  factory CommissioningProfile({
    $1.SpaceId? spaceId,
    $core.Iterable<CommissioningFact>? facts,
    $core.Iterable<CommissioningTest>? tests,
    $core.Iterable<FeatureStatus>? features,
    HouseTemplate? template,
    $core.bool? needsWithheld,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (facts != null) result.facts.addAll(facts);
    if (tests != null) result.tests.addAll(tests);
    if (features != null) result.features.addAll(features);
    if (template != null) result.template = template;
    if (needsWithheld != null) result.needsWithheld = needsWithheld;
    return result;
  }

  CommissioningProfile._();

  factory CommissioningProfile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningProfile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningProfile',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..pc<CommissioningFact>(
        2, _omitFieldNames ? '' : 'facts', $pb.PbFieldType.PM,
        subBuilder: CommissioningFact.create)
    ..pc<CommissioningTest>(
        3, _omitFieldNames ? '' : 'tests', $pb.PbFieldType.PM,
        subBuilder: CommissioningTest.create)
    ..pc<FeatureStatus>(
        4, _omitFieldNames ? '' : 'features', $pb.PbFieldType.PM,
        subBuilder: FeatureStatus.create)
    ..aOM<HouseTemplate>(6, _omitFieldNames ? '' : 'template',
        subBuilder: HouseTemplate.create)
    ..aOB(7, _omitFieldNames ? '' : 'needsWithheld')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningProfile clone() =>
      CommissioningProfile()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningProfile copyWith(void Function(CommissioningProfile) updates) =>
      super.copyWith((message) => updates(message as CommissioningProfile))
          as CommissioningProfile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningProfile create() => CommissioningProfile._();
  @$core.override
  CommissioningProfile createEmptyInstance() => create();
  static $pb.PbList<CommissioningProfile> createRepeated() =>
      $pb.PbList<CommissioningProfile>();
  @$core.pragma('dart2js:noInline')
  static CommissioningProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningProfile>(create);
  static CommissioningProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureSpaceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<CommissioningFact> get facts => $_getList(1);

  /// The latest test of each kind on each binding.
  @$pb.TagNumber(3)
  $pb.PbList<CommissioningTest> get tests => $_getList(2);

  /// For a home, one per feature.
  @$pb.TagNumber(4)
  $pb.PbList<FeatureStatus> get features => $_getList(3);

  /// The home's template, at its latest version. Unset: it follows none.
  @$pb.TagNumber(6)
  HouseTemplate get template => $_getN(4);
  @$pb.TagNumber(6)
  set template(HouseTemplate value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTemplate() => $_has(4);
  @$pb.TagNumber(6)
  void clearTemplate() => $_clearField(6);
  @$pb.TagNumber(6)
  HouseTemplate ensureTemplate() => $_ensure(4);

  /// Set when FeatureStatus.needs are left out for this caller, so that none listed is not
  /// read as nothing missing.
  @$pb.TagNumber(7)
  $core.bool get needsWithheld => $_getBF(5);
  @$pb.TagNumber(7)
  set needsWithheld($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(7)
  $core.bool hasNeedsWithheld() => $_has(5);
  @$pb.TagNumber(7)
  void clearNeedsWithheld() => $_clearField(7);
}

/// Whether a home is set up: every REQUIRED fact answered with a value at least once, and
/// every output bound in it passed OUTPUT_LEASE at least once on the device it is bound to.
/// "Don't know" is not an answer here. What the household does afterwards counts neither
/// way: a REQUIRED fact once answered still counts when it is removed or changed to "don't
/// know", as a pass superseded by a change of a floor zone's rooms or control room still
/// does, so that set_up tells the owner organisation neither of a household's edits nor of
/// a renovation. Binding a new output, or a new device, is what it can show. All the owner
/// organisation learns of a home's commissioning.
///
/// The REQUIRED keys are those this file marks REQUIRED (HOUSEHOLD QUESTIONS) and no other, so
/// that set_up means the same on every gateway. A home with no room is not set up. Once a
/// home has been set up, its facts count neither way, whatever changes since — a room
/// created, an answer removed, a key a later release of this schema marks REQUIRED: only an
/// output bound since without a pass on the device it is bound to makes it not set up. A
/// household handover does not reset it: the home stays set up for the next household, so
/// that set_up tells the owner organisation nothing of who moved in or out.
class HomeSetup extends $pb.GeneratedMessage {
  factory HomeSetup({
    $1.SpaceId? homeId,
    $core.bool? setUp,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (setUp != null) result.setUp = setUp;
    return result;
  }

  HomeSetup._();

  factory HomeSetup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HomeSetup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HomeSetup',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $1.SpaceId.create)
    ..aOB(2, _omitFieldNames ? '' : 'setUp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomeSetup clone() => HomeSetup()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomeSetup copyWith(void Function(HomeSetup) updates) =>
      super.copyWith((message) => updates(message as HomeSetup)) as HomeSetup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HomeSetup create() => HomeSetup._();
  @$core.override
  HomeSetup createEmptyInstance() => create();
  static $pb.PbList<HomeSetup> createRepeated() => $pb.PbList<HomeSetup>();
  @$core.pragma('dart2js:noInline')
  static HomeSetup getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomeSetup>(create);
  static HomeSetup? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureHomeId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get setUp => $_getBF(1);
  @$pb.TagNumber(2)
  set setUp($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSetUp() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetUp() => $_clearField(2);
}

/// In reply to ListHomeSetups.
class HomeSetups extends $pb.GeneratedMessage {
  factory HomeSetups({
    $core.Iterable<HomeSetup>? homes,
  }) {
    final result = create();
    if (homes != null) result.homes.addAll(homes);
    return result;
  }

  HomeSetups._();

  factory HomeSetups.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HomeSetups.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HomeSetups',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..pc<HomeSetup>(1, _omitFieldNames ? '' : 'homes', $pb.PbFieldType.PM,
        subBuilder: HomeSetup.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomeSetups clone() => HomeSetups()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomeSetups copyWith(void Function(HomeSetups) updates) =>
      super.copyWith((message) => updates(message as HomeSetups)) as HomeSetups;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HomeSetups create() => HomeSetups._();
  @$core.override
  HomeSetups createEmptyInstance() => create();
  static $pb.PbList<HomeSetups> createRepeated() => $pb.PbList<HomeSetups>();
  @$core.pragma('dart2js:noInline')
  static HomeSetups getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HomeSetups>(create);
  static HomeSetups? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<HomeSetup> get homes => $_getList(0);
}

enum CommissioningRecord_Record { fact, test, template, notSet }

/// One commissioning record as stored, in reply to a put, a test's start or its conclusion.
class CommissioningRecord extends $pb.GeneratedMessage {
  factory CommissioningRecord({
    CommissioningFact? fact,
    CommissioningTest? test,
    HouseTemplate? template,
  }) {
    final result = create();
    if (fact != null) result.fact = fact;
    if (test != null) result.test = test;
    if (template != null) result.template = template;
    return result;
  }

  CommissioningRecord._();

  factory CommissioningRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CommissioningRecord_Record>
      _CommissioningRecord_RecordByTag = {
    1: CommissioningRecord_Record.fact,
    2: CommissioningRecord_Record.test,
    3: CommissioningRecord_Record.template,
    0: CommissioningRecord_Record.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningRecord',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CommissioningFact>(1, _omitFieldNames ? '' : 'fact',
        subBuilder: CommissioningFact.create)
    ..aOM<CommissioningTest>(2, _omitFieldNames ? '' : 'test',
        subBuilder: CommissioningTest.create)
    ..aOM<HouseTemplate>(3, _omitFieldNames ? '' : 'template',
        subBuilder: HouseTemplate.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningRecord clone() => CommissioningRecord()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningRecord copyWith(void Function(CommissioningRecord) updates) =>
      super.copyWith((message) => updates(message as CommissioningRecord))
          as CommissioningRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningRecord create() => CommissioningRecord._();
  @$core.override
  CommissioningRecord createEmptyInstance() => create();
  static $pb.PbList<CommissioningRecord> createRepeated() =>
      $pb.PbList<CommissioningRecord>();
  @$core.pragma('dart2js:noInline')
  static CommissioningRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningRecord>(create);
  static CommissioningRecord? _defaultInstance;

  CommissioningRecord_Record whichRecord() =>
      _CommissioningRecord_RecordByTag[$_whichOneof(0)]!;
  void clearRecord() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CommissioningFact get fact => $_getN(0);
  @$pb.TagNumber(1)
  set fact(CommissioningFact value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFact() => $_has(0);
  @$pb.TagNumber(1)
  void clearFact() => $_clearField(1);
  @$pb.TagNumber(1)
  CommissioningFact ensureFact() => $_ensure(0);

  @$pb.TagNumber(2)
  CommissioningTest get test => $_getN(1);
  @$pb.TagNumber(2)
  set test(CommissioningTest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTest() => $_has(1);
  @$pb.TagNumber(2)
  void clearTest() => $_clearField(2);
  @$pb.TagNumber(2)
  CommissioningTest ensureTest() => $_ensure(1);

  @$pb.TagNumber(3)
  HouseTemplate get template => $_getN(2);
  @$pb.TagNumber(3)
  set template(HouseTemplate value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTemplate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplate() => $_clearField(3);
  @$pb.TagNumber(3)
  HouseTemplate ensureTemplate() => $_ensure(2);
}

/// One installer's grant to commission one space (see the file comment, GRANTS).
class CommissioningGrant extends $pb.GeneratedMessage {
  factory CommissioningGrant({
    $core.String? grantId,
    $1.SpaceId? spaceId,
    $1.UserId? installer,
    $core.String? installerName,
    CommissioningGrantState? state,
    $0.Timestamp? requestedAt,
    $0.Timestamp? expiresAt,
    $0.Timestamp? startsAt,
    $0.Timestamp? endsAt,
    $1.UserId? grantedBy,
    $0.Timestamp? grantedAt,
  }) {
    final result = create();
    if (grantId != null) result.grantId = grantId;
    if (spaceId != null) result.spaceId = spaceId;
    if (installer != null) result.installer = installer;
    if (installerName != null) result.installerName = installerName;
    if (state != null) result.state = state;
    if (requestedAt != null) result.requestedAt = requestedAt;
    if (expiresAt != null) result.expiresAt = expiresAt;
    if (startsAt != null) result.startsAt = startsAt;
    if (endsAt != null) result.endsAt = endsAt;
    if (grantedBy != null) result.grantedBy = grantedBy;
    if (grantedAt != null) result.grantedAt = grantedAt;
    return result;
  }

  CommissioningGrant._();

  factory CommissioningGrant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningGrant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningGrant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'grantId')
    ..aOM<$1.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..aOM<$1.UserId>(3, _omitFieldNames ? '' : 'installer',
        subBuilder: $1.UserId.create)
    ..aOS(4, _omitFieldNames ? '' : 'installerName')
    ..e<CommissioningGrantState>(
        5, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker:
            CommissioningGrantState.COMMISSIONING_GRANT_STATE_UNSPECIFIED,
        valueOf: CommissioningGrantState.valueOf,
        enumValues: CommissioningGrantState.values)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'requestedAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'startsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'endsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$1.UserId>(10, _omitFieldNames ? '' : 'grantedBy',
        subBuilder: $1.UserId.create)
    ..aOM<$0.Timestamp>(11, _omitFieldNames ? '' : 'grantedAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningGrant clone() => CommissioningGrant()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningGrant copyWith(void Function(CommissioningGrant) updates) =>
      super.copyWith((message) => updates(message as CommissioningGrant))
          as CommissioningGrant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningGrant create() => CommissioningGrant._();
  @$core.override
  CommissioningGrant createEmptyInstance() => create();
  static $pb.PbList<CommissioningGrant> createRepeated() =>
      $pb.PbList<CommissioningGrant>();
  @$core.pragma('dart2js:noInline')
  static CommissioningGrant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningGrant>(create);
  static CommissioningGrant? _defaultInstance;

  /// Minted by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get grantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set grantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGrantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrantId() => $_clearField(1);

  /// A home's apartment, or a space outside homes.
  @$pb.TagNumber(2)
  $1.SpaceId get spaceId => $_getN(1);
  @$pb.TagNumber(2)
  set spaceId($1.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.SpaceId ensureSpaceId() => $_ensure(1);

  /// The installer who asked for it, and the name they gave their account
  /// (webrtc.v1.AppTokenClaims.name) as the gateway last learnt it, so the household knows
  /// whom it lets in; empty when none is learnt. Self-chosen, as webrtc.v1.MemberDetail.name
  /// is.
  @$pb.TagNumber(3)
  $1.UserId get installer => $_getN(2);
  @$pb.TagNumber(3)
  set installer($1.UserId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInstaller() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstaller() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.UserId ensureInstaller() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get installerName => $_getSZ(3);
  @$pb.TagNumber(4)
  set installerName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasInstallerName() => $_has(3);
  @$pb.TagNumber(4)
  void clearInstallerName() => $_clearField(4);

  @$pb.TagNumber(5)
  CommissioningGrantState get state => $_getN(4);
  @$pb.TagNumber(5)
  set state(CommissioningGrantState value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(5)
  void clearState() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.Timestamp get requestedAt => $_getN(5);
  @$pb.TagNumber(6)
  set requestedAt($0.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRequestedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequestedAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureRequestedAt() => $_ensure(5);

  /// When a request lapses unanswered: 7 days after requested_at, as
  /// webrtc.v1.PromotionRequest.expires_at. REQUESTED only.
  @$pb.TagNumber(7)
  $0.Timestamp get expiresAt => $_getN(6);
  @$pb.TagNumber(7)
  set expiresAt($0.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExpiresAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpiresAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureExpiresAt() => $_ensure(6);

  /// When it is active, as granted, within the bounds webrtc.v1.AnswerCommissioningGrant sets.
  /// GRANTED only.
  @$pb.TagNumber(8)
  $0.Timestamp get startsAt => $_getN(7);
  @$pb.TagNumber(8)
  set startsAt($0.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStartsAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartsAt() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureStartsAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.Timestamp get endsAt => $_getN(8);
  @$pb.TagNumber(9)
  set endsAt($0.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEndsAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearEndsAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureEndsAt() => $_ensure(8);

  /// Who granted it, and when. GRANTED only. granted_by is given to the home's residents, and
  /// for a space outside homes or an empty home to the property owner and the gateway's
  /// administrators; to the installer it is unset, since a resident's user id would tell them
  /// who lives in the home.
  @$pb.TagNumber(10)
  $1.UserId get grantedBy => $_getN(9);
  @$pb.TagNumber(10)
  set grantedBy($1.UserId value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasGrantedBy() => $_has(9);
  @$pb.TagNumber(10)
  void clearGrantedBy() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.UserId ensureGrantedBy() => $_ensure(9);

  @$pb.TagNumber(11)
  $0.Timestamp get grantedAt => $_getN(10);
  @$pb.TagNumber(11)
  set grantedAt($0.Timestamp value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasGrantedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearGrantedAt() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.Timestamp ensureGrantedAt() => $_ensure(10);
}

/// The grants on one space that have not ended, as listed to one caller: the answer to
/// webrtc.v1.ListCommissioningGrants, and pushed whole as webrtc.v1.GatewayMessage
/// .commissioning_grants to every session that may list them whenever one is requested,
/// answered or ended before its time — to the installer, their own grants alone. Nothing is
/// pushed when a grant starts, ends or lapses at the time it states: a client reads those from
/// starts_at, ends_at and expires_at.
class CommissioningGrants extends $pb.GeneratedMessage {
  factory CommissioningGrants({
    $1.SpaceId? spaceId,
    $core.Iterable<CommissioningGrant>? grants,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (grants != null) result.grants.addAll(grants);
    return result;
  }

  CommissioningGrants._();

  factory CommissioningGrants.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningGrants.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningGrants',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..pc<CommissioningGrant>(
        2, _omitFieldNames ? '' : 'grants', $pb.PbFieldType.PM,
        subBuilder: CommissioningGrant.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningGrants clone() => CommissioningGrants()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningGrants copyWith(void Function(CommissioningGrants) updates) =>
      super.copyWith((message) => updates(message as CommissioningGrants))
          as CommissioningGrants;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningGrants create() => CommissioningGrants._();
  @$core.override
  CommissioningGrants createEmptyInstance() => create();
  static $pb.PbList<CommissioningGrants> createRepeated() =>
      $pb.PbList<CommissioningGrants>();
  @$core.pragma('dart2js:noInline')
  static CommissioningGrants getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningGrants>(create);
  static CommissioningGrants? _defaultInstance;

  /// The space the grants are on, on a push; unset on a listing.
  @$pb.TagNumber(1)
  $1.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureSpaceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<CommissioningGrant> get grants => $_getList(1);
}

/// A commissioning grant on a home that was granted, as its residents are told it afterwards
/// (webrtc.v1.PrivacyDisclosure.commissioning_grants): who held commissioning access to their
/// home, and when. The installer by the name they gave their account as the gateway last learnt
/// it, never by user id; empty when none is learnt, and emptied once their account is deleted or
/// removed from the gateway, when the record stays without it.
class CommissioningGrantRecord extends $pb.GeneratedMessage {
  factory CommissioningGrantRecord({
    $core.String? installerName,
    $0.Timestamp? grantedAt,
    $0.Timestamp? startsAt,
    $0.Timestamp? endedAt,
  }) {
    final result = create();
    if (installerName != null) result.installerName = installerName;
    if (grantedAt != null) result.grantedAt = grantedAt;
    if (startsAt != null) result.startsAt = startsAt;
    if (endedAt != null) result.endedAt = endedAt;
    return result;
  }

  CommissioningGrantRecord._();

  factory CommissioningGrantRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommissioningGrantRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommissioningGrantRecord',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.commissioning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'installerName')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'grantedAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'startsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'endedAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningGrantRecord clone() =>
      CommissioningGrantRecord()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommissioningGrantRecord copyWith(
          void Function(CommissioningGrantRecord) updates) =>
      super.copyWith((message) => updates(message as CommissioningGrantRecord))
          as CommissioningGrantRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommissioningGrantRecord create() => CommissioningGrantRecord._();
  @$core.override
  CommissioningGrantRecord createEmptyInstance() => create();
  static $pb.PbList<CommissioningGrantRecord> createRepeated() =>
      $pb.PbList<CommissioningGrantRecord>();
  @$core.pragma('dart2js:noInline')
  static CommissioningGrantRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommissioningGrantRecord>(create);
  static CommissioningGrantRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get installerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set installerName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInstallerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstallerName() => $_clearField(1);

  /// When it was granted, and the time it covered: from its start until it ended. ended_at is
  /// unset while it is active.
  @$pb.TagNumber(2)
  $0.Timestamp get grantedAt => $_getN(1);
  @$pb.TagNumber(2)
  set grantedAt($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGrantedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearGrantedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureGrantedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Timestamp get startsAt => $_getN(2);
  @$pb.TagNumber(3)
  set startsAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStartsAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartsAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureStartsAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Timestamp get endedAt => $_getN(3);
  @$pb.TagNumber(4)
  set endedAt($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasEndedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureEndedAt() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
