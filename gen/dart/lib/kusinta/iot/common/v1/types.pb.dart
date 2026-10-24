// This is a generated file - do not edit.
//
// Generated from kusinta/iot/common/v1/types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../identity/v1/identity.pb.dart' as $0;
import 'types.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'types.pbenum.dart';

enum AssetOwner_Owner { ownerOrganisation, householdHomeId, notSet }

/// Who owns one of the building's own devices as an asset: who paid for it, for billing and
/// for what becomes of it when a household or the gateway's owner changes. Distinct from
/// DeviceOwnershipType, which says whether a person owns a device outright; a device a person
/// owns has no asset owner.
///
/// VISIBILITY NEVER FOLLOWS IT. What anyone sees of a device, or may do to it, is decided by
/// the space it is filed in and how they stand to that space (access.v1.MembershipRelation),
/// never by its asset owner: a device the organisation owns in someone's home is seen by the
/// organisation's people as service and no more, and a device a household owns gives that
/// household nothing beyond what living in the home gives it. Setting or changing an asset
/// owner changes no one's access.
///
/// IT DECIDES ONE THING: whether a room's outer limits can bind the device
/// (climate.v1.OuterRoomLimits, WHAT THEY BIND). They can bind an asset of the organisation, and
/// one of the building's own devices with no asset owner recorded; never a household's asset,
/// nor a device a person owns. Whether they do is the organisation's, since every bound is
/// optional. It still decides nothing about who sees what.
///
/// Unset: not recorded. On a device whose ownership is COMPANY, anything that depends on it
/// reads an unset owner as owner_organisation; a device a person owns has none, and is theirs.
class AssetOwner extends $pb.GeneratedMessage {
  factory AssetOwner({
    $core.bool? ownerOrganisation,
    $0.SpaceId? householdHomeId,
  }) {
    final result = create();
    if (ownerOrganisation != null) result.ownerOrganisation = ownerOrganisation;
    if (householdHomeId != null) result.householdHomeId = householdHomeId;
    return result;
  }

  AssetOwner._();

  factory AssetOwner.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AssetOwner.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AssetOwner_Owner> _AssetOwner_OwnerByTag = {
    1: AssetOwner_Owner.ownerOrganisation,
    2: AssetOwner_Owner.householdHomeId,
    0: AssetOwner_Owner.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AssetOwner',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.common.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'ownerOrganisation')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'householdHomeId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AssetOwner clone() => AssetOwner()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AssetOwner copyWith(void Function(AssetOwner) updates) =>
      super.copyWith((message) => updates(message as AssetOwner)) as AssetOwner;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssetOwner create() => AssetOwner._();
  @$core.override
  AssetOwner createEmptyInstance() => create();
  static $pb.PbList<AssetOwner> createRepeated() => $pb.PbList<AssetOwner>();
  @$core.pragma('dart2js:noInline')
  static AssetOwner getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AssetOwner>(create);
  static AssetOwner? _defaultInstance;

  AssetOwner_Owner whichOwner() => _AssetOwner_OwnerByTag[$_whichOneof(0)]!;
  void clearOwner() => $_clearField($_whichOneof(0));

  /// The organisation that owns the gateway (signaling.v1.GatewayStreamOpened, OWNER OF
  /// RECORD), whichever that is: such an asset goes with the gateway when it moves to
  /// another organisation. Only true is sent; false is refused.
  @$pb.TagNumber(1)
  $core.bool get ownerOrganisation => $_getBF(0);
  @$pb.TagNumber(1)
  set ownerOrganisation($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOwnerOrganisation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnerOrganisation() => $_clearField(1);

  /// The household of a home, named by the home's apartment. Keyed to the home, never to a
  /// person: when the household changes, the asset stays with the home for the next one
  /// (webrtc.v1 household.proto, HANDOVER).
  @$pb.TagNumber(2)
  $0.SpaceId get householdHomeId => $_getN(1);
  @$pb.TagNumber(2)
  set householdHomeId($0.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHouseholdHomeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHouseholdHomeId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SpaceId ensureHouseholdHomeId() => $_ensure(1);
}

class ErrorDetail extends $pb.GeneratedMessage {
  factory ErrorDetail({
    $core.String? code,
    $core.String? message,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? metadata,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (metadata != null) result.metadata.addEntries(metadata);
    return result;
  }

  ErrorDetail._();

  factory ErrorDetail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ErrorDetail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorDetail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.common.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'ErrorDetail.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('kusinta.iot.common.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorDetail clone() => ErrorDetail()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorDetail copyWith(void Function(ErrorDetail) updates) =>
      super.copyWith((message) => updates(message as ErrorDetail))
          as ErrorDetail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorDetail create() => ErrorDetail._();
  @$core.override
  ErrorDetail createEmptyInstance() => create();
  static $pb.PbList<ErrorDetail> createRepeated() => $pb.PbList<ErrorDetail>();
  @$core.pragma('dart2js:noInline')
  static ErrorDetail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorDetail>(create);
  static ErrorDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get metadata => $_getMap(2);
}

/// A connector's backend health, as both legs carry it: connector to gateway inside
/// connector.v1.BackendHealthReport, and gateway to app on webrtc.v1.ConnectorDescriptor.
///
/// Deliberately state and category only. A connector's free-text detail travels beside this,
/// on the connector leg alone, and is for the gateway's logs: it may name hosts, addresses or
/// accounts, and it never reaches the app or the cloud. Carrying only this type on the app
/// leg is what keeps it there.
class BackendHealth extends $pb.GeneratedMessage {
  factory BackendHealth({
    BackendHealthState? state,
    BackendFailureReason? reason,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (reason != null) result.reason = reason;
    return result;
  }

  BackendHealth._();

  factory BackendHealth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackendHealth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackendHealth',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.common.v1'),
      createEmptyInstance: create)
    ..e<BackendHealthState>(
        1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: BackendHealthState.BACKEND_HEALTH_STATE_UNSPECIFIED,
        valueOf: BackendHealthState.valueOf,
        enumValues: BackendHealthState.values)
    ..e<BackendFailureReason>(
        2, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE,
        defaultOrMaker: BackendFailureReason.BACKEND_FAILURE_REASON_UNSPECIFIED,
        valueOf: BackendFailureReason.valueOf,
        enumValues: BackendFailureReason.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackendHealth clone() => BackendHealth()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackendHealth copyWith(void Function(BackendHealth) updates) =>
      super.copyWith((message) => updates(message as BackendHealth))
          as BackendHealth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackendHealth create() => BackendHealth._();
  @$core.override
  BackendHealth createEmptyInstance() => create();
  static $pb.PbList<BackendHealth> createRepeated() =>
      $pb.PbList<BackendHealth>();
  @$core.pragma('dart2js:noInline')
  static BackendHealth getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackendHealth>(create);
  static BackendHealth? _defaultInstance;

  @$pb.TagNumber(1)
  BackendHealthState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(BackendHealthState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  /// Why, when state is FAILING. UNSPECIFIED otherwise, and ignored when state is not FAILING.
  @$pb.TagNumber(2)
  BackendFailureReason get reason => $_getN(1);
  @$pb.TagNumber(2)
  set reason(BackendFailureReason value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
