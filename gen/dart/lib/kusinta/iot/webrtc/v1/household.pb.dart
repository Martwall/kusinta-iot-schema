// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/household.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../climate/v1/climate.pb.dart' as $2;
import '../../commissioning/v1/commissioning.pb.dart' as $3;
import '../../heating/v1/heating.pb.dart' as $4;
import '../../identity/v1/identity.pb.dart' as $0;
import 'household.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'household.pbenum.dart';

/// Makes a household admin of a home a resident again, at once; their residency continues
/// (access.v1.MembershipRelation, HOUSEHOLD ADMIN). Answered with ManagementAck.
///
/// A household admin of the home only; anyone else is refused as NOT_ENTITLED. user_id is
/// never a residency id (INVALID_REQUEST). A resident of the home who is not a household admin
/// is acknowledged and nothing changes; anyone else is "not_a_member", as members.proto has it.
/// A demotion that would leave the home with no household admin is refused as
/// "last_household_admin" (LAST ADMIN). Ends, with the demotion, the promotion requests the
/// demoted member made for the home and the household invites they created there, with the
/// join requests those invites made.
class DemoteHouseholdAdmin extends $pb.GeneratedMessage {
  factory DemoteHouseholdAdmin({
    $0.SpaceId? homeId,
    $0.UserId? userId,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (userId != null) result.userId = userId;
    return result;
  }

  DemoteHouseholdAdmin._();

  factory DemoteHouseholdAdmin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DemoteHouseholdAdmin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DemoteHouseholdAdmin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$0.UserId>(2, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DemoteHouseholdAdmin clone() =>
      DemoteHouseholdAdmin()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DemoteHouseholdAdmin copyWith(void Function(DemoteHouseholdAdmin) updates) =>
      super.copyWith((message) => updates(message as DemoteHouseholdAdmin))
          as DemoteHouseholdAdmin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DemoteHouseholdAdmin create() => DemoteHouseholdAdmin._();
  @$core.override
  DemoteHouseholdAdmin createEmptyInstance() => create();
  static $pb.PbList<DemoteHouseholdAdmin> createRepeated() =>
      $pb.PbList<DemoteHouseholdAdmin>();
  @$core.pragma('dart2js:noInline')
  static DemoteHouseholdAdmin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DemoteHouseholdAdmin>(create);
  static DemoteHouseholdAdmin? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.UserId get userId => $_getN(1);
  @$pb.TagNumber(2)
  set userId($0.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.UserId ensureUserId() => $_ensure(1);
}

/// One staff appointment of a household admin of a home, as its residents are told it.
class StaffAppointment extends $pb.GeneratedMessage {
  factory StaffAppointment({
    $0.UserId? appointee,
    $0.UserId? appointedBy,
    $core.String? appointedByName,
    $1.Timestamp? at,
    StaffAppointmentKind? kind,
  }) {
    final result = create();
    if (appointee != null) result.appointee = appointee;
    if (appointedBy != null) result.appointedBy = appointedBy;
    if (appointedByName != null) result.appointedByName = appointedByName;
    if (at != null) result.at = at;
    if (kind != null) result.kind = kind;
    return result;
  }

  StaffAppointment._();

  factory StaffAppointment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StaffAppointment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StaffAppointment',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'appointee',
        subBuilder: $0.UserId.create)
    ..aOM<$0.UserId>(2, _omitFieldNames ? '' : 'appointedBy',
        subBuilder: $0.UserId.create)
    ..aOS(3, _omitFieldNames ? '' : 'appointedByName')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'at',
        subBuilder: $1.Timestamp.create)
    ..e<StaffAppointmentKind>(
        5, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: StaffAppointmentKind.STAFF_APPOINTMENT_KIND_UNSPECIFIED,
        valueOf: StaffAppointmentKind.valueOf,
        enumValues: StaffAppointmentKind.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaffAppointment clone() => StaffAppointment()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaffAppointment copyWith(void Function(StaffAppointment) updates) =>
      super.copyWith((message) => updates(message as StaffAppointment))
          as StaffAppointment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StaffAppointment create() => StaffAppointment._();
  @$core.override
  StaffAppointment createEmptyInstance() => create();
  static $pb.PbList<StaffAppointment> createRepeated() =>
      $pb.PbList<StaffAppointment>();
  @$core.pragma('dart2js:noInline')
  static StaffAppointment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StaffAppointment>(create);
  static StaffAppointment? _defaultInstance;

  /// The resident appointed.
  @$pb.TagNumber(1)
  $0.UserId get appointee => $_getN(0);
  @$pb.TagNumber(1)
  set appointee($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAppointee() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppointee() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureAppointee() => $_ensure(0);

  /// The staff member who appointed them, and the name they gave their account
  /// (AppTokenClaims.name) as the gateway last learnt it; empty when none is learnt. Both are
  /// cleared once that account is deleted or removed from the gateway, when the record stays
  /// without them. Self-chosen, as MemberDetail.name is.
  @$pb.TagNumber(2)
  $0.UserId get appointedBy => $_getN(1);
  @$pb.TagNumber(2)
  set appointedBy($0.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAppointedBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppointedBy() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.UserId ensureAppointedBy() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get appointedByName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appointedByName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppointedByName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppointedByName() => $_clearField(3);

  /// When the appointment took effect: the redeem, or the acceptance.
  @$pb.TagNumber(4)
  $1.Timestamp get at => $_getN(3);
  @$pb.TagNumber(4)
  set at($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureAt() => $_ensure(3);

  @$pb.TagNumber(5)
  StaffAppointmentKind get kind => $_getN(4);
  @$pb.TagNumber(5)
  set kind(StaffAppointmentKind value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearKind() => $_clearField(5);
}

/// Starts the handover of one home (HANDOVER, 1), answered with the HouseholdHandover, PENDING.
/// Anyone HANDOVER does not name is refused as NOT_ENTITLED. A space that is not an apartment is
/// INVALID_REQUEST. Starting one while one is pending answers the pending one and starts
/// nothing.
class StartHouseholdHandover extends $pb.GeneratedMessage {
  factory StartHouseholdHandover({
    $0.SpaceId? homeId,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    return result;
  }

  StartHouseholdHandover._();

  factory StartHouseholdHandover.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StartHouseholdHandover.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartHouseholdHandover',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartHouseholdHandover clone() =>
      StartHouseholdHandover()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartHouseholdHandover copyWith(
          void Function(StartHouseholdHandover) updates) =>
      super.copyWith((message) => updates(message as StartHouseholdHandover))
          as StartHouseholdHandover;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartHouseholdHandover create() => StartHouseholdHandover._();
  @$core.override
  StartHouseholdHandover createEmptyInstance() => create();
  static $pb.PbList<StartHouseholdHandover> createRepeated() =>
      $pb.PbList<StartHouseholdHandover>();
  @$core.pragma('dart2js:noInline')
  static StartHouseholdHandover getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartHouseholdHandover>(create);
  static StartHouseholdHandover? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);
}

/// Confirms a pending handover (HANDOVER, 3–4; VACANCY). Answered with ManagementAck once every
/// membership of the home has ended; the wipe follows, and the handover is pushed as DONE.
/// Staff confirming before staff_confirmable_from are refused as FAILED_PRECONDITION with
/// metadata {"reason": "notice_running"}. A handover that is not pending, or that the caller
/// may not confirm, is refused as NOT_ENTITLED, so that no handover id can be probed.
class ConfirmHouseholdHandover extends $pb.GeneratedMessage {
  factory ConfirmHouseholdHandover({
    $core.String? handoverId,
  }) {
    final result = create();
    if (handoverId != null) result.handoverId = handoverId;
    return result;
  }

  ConfirmHouseholdHandover._();

  factory ConfirmHouseholdHandover.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfirmHouseholdHandover.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfirmHouseholdHandover',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handoverId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfirmHouseholdHandover clone() =>
      ConfirmHouseholdHandover()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfirmHouseholdHandover copyWith(
          void Function(ConfirmHouseholdHandover) updates) =>
      super.copyWith((message) => updates(message as ConfirmHouseholdHandover))
          as ConfirmHouseholdHandover;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfirmHouseholdHandover create() => ConfirmHouseholdHandover._();
  @$core.override
  ConfirmHouseholdHandover createEmptyInstance() => create();
  static $pb.PbList<ConfirmHouseholdHandover> createRepeated() =>
      $pb.PbList<ConfirmHouseholdHandover>();
  @$core.pragma('dart2js:noInline')
  static ConfirmHouseholdHandover getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfirmHouseholdHandover>(create);
  static ConfirmHouseholdHandover? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handoverId => $_getSZ(0);
  @$pb.TagNumber(1)
  set handoverId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandoverId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandoverId() => $_clearField(1);
}

/// Cancels a pending handover (HANDOVER, 3); nothing has changed, and nothing does. Answered
/// with ManagementAck, and pushed as CANCELLED. A vacated one is refused as FAILED_PRECONDITION
/// with metadata {"reason": "vacated"} (VACANCY). A handover that is not pending, or that the
/// caller may not cancel, is refused as NOT_ENTITLED.
class CancelHouseholdHandover extends $pb.GeneratedMessage {
  factory CancelHouseholdHandover({
    $core.String? handoverId,
  }) {
    final result = create();
    if (handoverId != null) result.handoverId = handoverId;
    return result;
  }

  CancelHouseholdHandover._();

  factory CancelHouseholdHandover.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CancelHouseholdHandover.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancelHouseholdHandover',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handoverId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelHouseholdHandover clone() =>
      CancelHouseholdHandover()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelHouseholdHandover copyWith(
          void Function(CancelHouseholdHandover) updates) =>
      super.copyWith((message) => updates(message as CancelHouseholdHandover))
          as CancelHouseholdHandover;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelHouseholdHandover create() => CancelHouseholdHandover._();
  @$core.override
  CancelHouseholdHandover createEmptyInstance() => create();
  static $pb.PbList<CancelHouseholdHandover> createRepeated() =>
      $pb.PbList<CancelHouseholdHandover>();
  @$core.pragma('dart2js:noInline')
  static CancelHouseholdHandover getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelHouseholdHandover>(create);
  static CancelHouseholdHandover? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handoverId => $_getSZ(0);
  @$pb.TagNumber(1)
  set handoverId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandoverId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandoverId() => $_clearField(1);
}

/// Lists the pending handovers of the homes under a space the caller may be told of, answered
/// with HouseholdHandovers: unset root_space_id, every one. A home's handover is told to its
/// residents, and to the property owner and the gateway administrators who reach it; a
/// vacated one to the departing household instead of residents (VACANCY). Anyone may
/// ask; nobody is refused, and a caller told of none gets none.
class ListHouseholdHandovers extends $pb.GeneratedMessage {
  factory ListHouseholdHandovers({
    $0.SpaceId? rootSpaceId,
  }) {
    final result = create();
    if (rootSpaceId != null) result.rootSpaceId = rootSpaceId;
    return result;
  }

  ListHouseholdHandovers._();

  factory ListHouseholdHandovers.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListHouseholdHandovers.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListHouseholdHandovers',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'rootSpaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListHouseholdHandovers clone() =>
      ListHouseholdHandovers()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListHouseholdHandovers copyWith(
          void Function(ListHouseholdHandovers) updates) =>
      super.copyWith((message) => updates(message as ListHouseholdHandovers))
          as ListHouseholdHandovers;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListHouseholdHandovers create() => ListHouseholdHandovers._();
  @$core.override
  ListHouseholdHandovers createEmptyInstance() => create();
  static $pb.PbList<ListHouseholdHandovers> createRepeated() =>
      $pb.PbList<ListHouseholdHandovers>();
  @$core.pragma('dart2js:noInline')
  static ListHouseholdHandovers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListHouseholdHandovers>(create);
  static ListHouseholdHandovers? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get rootSpaceId => $_getN(0);
  @$pb.TagNumber(1)
  set rootSpaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRootSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRootSpaceId() => $_ensure(0);
}

/// One handover of one home (HANDOVER), as told to one caller.
///
/// The answer to StartHouseholdHandover, and pushed as GatewayMessage.household_handover to
/// every session it is told to (ListHouseholdHandovers) whenever it is started, cancelled or
/// done, or its staff_confirmable_from moves: to the household, the notice. A DONE push
/// reaches the household's sessions before they lose the home.
class HouseholdHandover extends $pb.GeneratedMessage {
  factory HouseholdHandover({
    $core.String? handoverId,
    $0.SpaceId? homeId,
    HouseholdHandoverState? state,
    $0.UserId? startedBy,
    $core.String? startedByName,
    $core.bool? startedByStaff,
    $1.Timestamp? startedAt,
    $1.Timestamp? staffConfirmableFrom,
    $1.Timestamp? endedAt,
    $core.bool? vacated,
    $core.bool? recipientInHousehold,
    $core.bool? recipientHouseholdAdmin,
  }) {
    final result = create();
    if (handoverId != null) result.handoverId = handoverId;
    if (homeId != null) result.homeId = homeId;
    if (state != null) result.state = state;
    if (startedBy != null) result.startedBy = startedBy;
    if (startedByName != null) result.startedByName = startedByName;
    if (startedByStaff != null) result.startedByStaff = startedByStaff;
    if (startedAt != null) result.startedAt = startedAt;
    if (staffConfirmableFrom != null)
      result.staffConfirmableFrom = staffConfirmableFrom;
    if (endedAt != null) result.endedAt = endedAt;
    if (vacated != null) result.vacated = vacated;
    if (recipientInHousehold != null)
      result.recipientInHousehold = recipientInHousehold;
    if (recipientHouseholdAdmin != null)
      result.recipientHouseholdAdmin = recipientHouseholdAdmin;
    return result;
  }

  HouseholdHandover._();

  factory HouseholdHandover.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HouseholdHandover.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HouseholdHandover',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'handoverId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..e<HouseholdHandoverState>(
        3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker:
            HouseholdHandoverState.HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED,
        valueOf: HouseholdHandoverState.valueOf,
        enumValues: HouseholdHandoverState.values)
    ..aOM<$0.UserId>(4, _omitFieldNames ? '' : 'startedBy',
        subBuilder: $0.UserId.create)
    ..aOS(5, _omitFieldNames ? '' : 'startedByName')
    ..aOB(6, _omitFieldNames ? '' : 'startedByStaff')
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'startedAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(8, _omitFieldNames ? '' : 'staffConfirmableFrom',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(9, _omitFieldNames ? '' : 'endedAt',
        subBuilder: $1.Timestamp.create)
    ..aOB(10, _omitFieldNames ? '' : 'vacated')
    ..aOB(11, _omitFieldNames ? '' : 'recipientInHousehold')
    ..aOB(12, _omitFieldNames ? '' : 'recipientHouseholdAdmin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseholdHandover clone() => HouseholdHandover()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseholdHandover copyWith(void Function(HouseholdHandover) updates) =>
      super.copyWith((message) => updates(message as HouseholdHandover))
          as HouseholdHandover;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HouseholdHandover create() => HouseholdHandover._();
  @$core.override
  HouseholdHandover createEmptyInstance() => create();
  static $pb.PbList<HouseholdHandover> createRepeated() =>
      $pb.PbList<HouseholdHandover>();
  @$core.pragma('dart2js:noInline')
  static HouseholdHandover getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HouseholdHandover>(create);
  static HouseholdHandover? _defaultInstance;

  /// Minted by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get handoverId => $_getSZ(0);
  @$pb.TagNumber(1)
  set handoverId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHandoverId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandoverId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.SpaceId get homeId => $_getN(1);
  @$pb.TagNumber(2)
  set homeId($0.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHomeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHomeId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SpaceId ensureHomeId() => $_ensure(1);

  @$pb.TagNumber(3)
  HouseholdHandoverState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(HouseholdHandoverState value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => $_clearField(3);

  /// Who started it, and the name they gave their account (AppTokenClaims.name) as the gateway
  /// last learnt it. Given to the household; to anyone else only when started_by_staff, and
  /// unset otherwise, since a resident's user id would say where they live. The name is
  /// self-chosen, as MemberDetail.name is.
  @$pb.TagNumber(4)
  $0.UserId get startedBy => $_getN(3);
  @$pb.TagNumber(4)
  set startedBy($0.UserId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStartedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartedBy() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.UserId ensureStartedBy() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get startedByName => $_getSZ(4);
  @$pb.TagNumber(5)
  set startedByName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStartedByName() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartedByName() => $_clearField(5);

  /// Set when the property owner or a gateway administrator started it, rather than the
  /// household. Neither this nor started_by is set when it was vacated.
  @$pb.TagNumber(6)
  $core.bool get startedByStaff => $_getBF(5);
  @$pb.TagNumber(6)
  set startedByStaff($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStartedByStaff() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartedByStaff() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get startedAt => $_getN(6);
  @$pb.TagNumber(7)
  set startedAt($1.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStartedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartedAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureStartedAt() => $_ensure(6);

  /// From when the property owner or a gateway administrator may confirm it, and when a vacated
  /// one completes on its own: 7 days after started_at, and never sooner than 7 days after the
  /// home's last residency ended. On a handover that is not vacated, a residency that starts
  /// while it is pending moves it to 7 days after that, and the handover is pushed again, so
  /// that a household that moves in during it has its notice too; on a vacated one nobody new
  /// moves in (VACANCY).
  @$pb.TagNumber(8)
  $1.Timestamp get staffConfirmableFrom => $_getN(7);
  @$pb.TagNumber(8)
  set staffConfirmableFrom($1.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStaffConfirmableFrom() => $_has(7);
  @$pb.TagNumber(8)
  void clearStaffConfirmableFrom() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Timestamp ensureStaffConfirmableFrom() => $_ensure(7);

  /// When it was cancelled or done. Unset while pending.
  @$pb.TagNumber(9)
  $1.Timestamp get endedAt => $_getN(8);
  @$pb.TagNumber(9)
  set endedAt($1.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEndedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearEndedAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureEndedAt() => $_ensure(8);

  /// Set when the home's last residency ending started it, rather than a request (VACANCY).
  @$pb.TagNumber(10)
  $core.bool get vacated => $_getBF(9);
  @$pb.TagNumber(10)
  set vacated($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasVacated() => $_has(9);
  @$pb.TagNumber(10)
  void clearVacated() => $_clearField(10);

  /// Set by the gateway per session: the session's user is a member of the household the
  /// handover is about — the home's residents while it is not vacated, the departing household
  /// (VACANCY) while it is. Someone who is both staff and in that household is told both, so a
  /// client offers them the household's export, and with recipient_household_admin its
  /// confirmation, as well as what staff may do, rather than guessing from roles which of the
  /// two they are.
  @$pb.TagNumber(11)
  $core.bool get recipientInHousehold => $_getBF(10);
  @$pb.TagNumber(11)
  set recipientInHousehold($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRecipientInHousehold() => $_has(10);
  @$pb.TagNumber(11)
  void clearRecipientInHousehold() => $_clearField(11);

  /// Set by the gateway per session: the session's user may confirm the handover as a household
  /// admin — a household admin of the home now, or, for a vacated one, one of the departing
  /// household's admins (VACANCY). A client offers confirmation on this, not on
  /// recipient_in_household, which a plain resident holds too.
  @$pb.TagNumber(12)
  $core.bool get recipientHouseholdAdmin => $_getBF(11);
  @$pb.TagNumber(12)
  set recipientHouseholdAdmin($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRecipientHouseholdAdmin() => $_has(11);
  @$pb.TagNumber(12)
  void clearRecipientHouseholdAdmin() => $_clearField(12);
}

/// Erases a home's climate history (CLIMATE HISTORY), in one step, all of it or none, and
/// nothing else. Answered with ManagementAck once it is erased. A household admin of the home
/// only (HOUSEHOLD ADMIN, ADMIN-LESS HOME), and so not the departing household of a vacated
/// handover (VACANCY); anyone else is refused as NOT_ENTITLED. home_id must be an apartment
/// (INVALID_REQUEST otherwise).
///
/// All of it goes, whenever it was recorded: also what the caller may not read themselves, from
/// before their residency. Every resident of the home loses it, not only the caller, and each is
/// told (ClimateHistoryCleared). Nothing recorded before the clear is kept, or recorded at or
/// after it, a late write included: room history begins again with the first bucket that starts
/// at or after the clear, and the summary of each length with its first period that starts at or
/// after the clear; the gateway learns its models and makes its plans afresh from what is
/// recorded at or after it. The household's members, the home's rooms and their settings, its
/// modes, its commissioning and its heating records stay. It cannot be undone, and the gateway
/// keeps no copy: an app asks its user to confirm, saying that everyone in the home loses it, and
/// offers the household's export (EXPORT) first. Later parts of an export under way give nothing
/// that was erased.
///
/// The clear is pushed as ClimateHistoryCleared to every session of the home's residents, the
/// caller's included, before the acknowledgement.
///
/// The summaries are erased for everyone they are given to, so the property owner, the gateway
/// administrators and whoever else is given the apartment's summary as service
/// (PrivacyDisclosure.climate_summary_period) lose its periods from before the clear too, and
/// are given none until the first period that starts at or after it has closed.
class ClearClimateHistory extends $pb.GeneratedMessage {
  factory ClearClimateHistory({
    $0.SpaceId? homeId,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    return result;
  }

  ClearClimateHistory._();

  factory ClearClimateHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClearClimateHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClearClimateHistory',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearClimateHistory clone() => ClearClimateHistory()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearClimateHistory copyWith(void Function(ClearClimateHistory) updates) =>
      super.copyWith((message) => updates(message as ClearClimateHistory))
          as ClearClimateHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearClimateHistory create() => ClearClimateHistory._();
  @$core.override
  ClearClimateHistory createEmptyInstance() => create();
  static $pb.PbList<ClearClimateHistory> createRepeated() =>
      $pb.PbList<ClearClimateHistory>();
  @$core.pragma('dart2js:noInline')
  static ClearClimateHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClearClimateHistory>(create);
  static ClearClimateHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);
}

/// A home's climate history was cleared (ClearClimateHistory), pushed as
/// GatewayMessage.climate_history_cleared to the sessions of its residents. An app drops on
/// arrival every room history, climate summary and device event of the home it holds from before
/// cleared_at, rather than keeping what the gateway no longer does, and keeps cleared_at as a
/// lasting floor for the home: a sample, period or event dated before it that arrives later — an
/// answer already in flight at the clear — is dropped on arrival too. Nobody else is told:
/// whoever is given the apartment's summary as service learns of it by reading it.
class ClimateHistoryCleared extends $pb.GeneratedMessage {
  factory ClimateHistoryCleared({
    $0.SpaceId? homeId,
    $1.Timestamp? clearedAt,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (clearedAt != null) result.clearedAt = clearedAt;
    return result;
  }

  ClimateHistoryCleared._();

  factory ClimateHistoryCleared.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClimateHistoryCleared.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClimateHistoryCleared',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'clearedAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateHistoryCleared clone() =>
      ClimateHistoryCleared()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateHistoryCleared copyWith(
          void Function(ClimateHistoryCleared) updates) =>
      super.copyWith((message) => updates(message as ClimateHistoryCleared))
          as ClimateHistoryCleared;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClimateHistoryCleared create() => ClimateHistoryCleared._();
  @$core.override
  ClimateHistoryCleared createEmptyInstance() => create();
  static $pb.PbList<ClimateHistoryCleared> createRepeated() =>
      $pb.PbList<ClimateHistoryCleared>();
  @$core.pragma('dart2js:noInline')
  static ClimateHistoryCleared getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClimateHistoryCleared>(create);
  static ClimateHistoryCleared? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get clearedAt => $_getN(1);
  @$pb.TagNumber(2)
  set clearedAt($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasClearedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearClearedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureClearedAt() => $_ensure(1);
}

/// Sets the household's own name for its home (space.v1.Space.home_name). Answered with
/// ManagementAck. Any resident of the home may — a name is not governance, so it is not kept to
/// household admins; anyone else is refused as NOT_ENTITLED. home_id must be an apartment
/// (INVALID_REQUEST otherwise). The name is trimmed; empty clears it, and one longer than 64
/// characters is refused as INVALID_REQUEST with metadata {"reason": "home_name"}. It never
/// changes the apartment's own name (space.v1.Space.name), and it is wiped at the home's
/// handover.
class SetHomeName extends $pb.GeneratedMessage {
  factory SetHomeName({
    $0.SpaceId? homeId,
    $core.String? name,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (name != null) result.name = name;
    return result;
  }

  SetHomeName._();

  factory SetHomeName.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetHomeName.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetHomeName',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetHomeName clone() => SetHomeName()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetHomeName copyWith(void Function(SetHomeName) updates) =>
      super.copyWith((message) => updates(message as SetHomeName))
          as SetHomeName;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetHomeName create() => SetHomeName._();
  @$core.override
  SetHomeName createEmptyInstance() => create();
  static $pb.PbList<SetHomeName> createRepeated() => $pb.PbList<SetHomeName>();
  @$core.pragma('dart2js:noInline')
  static SetHomeName getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetHomeName>(create);
  static SetHomeName? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

/// The answer to ListHouseholdHandovers.
class HouseholdHandovers extends $pb.GeneratedMessage {
  factory HouseholdHandovers({
    $core.Iterable<HouseholdHandover>? handovers,
  }) {
    final result = create();
    if (handovers != null) result.handovers.addAll(handovers);
    return result;
  }

  HouseholdHandovers._();

  factory HouseholdHandovers.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HouseholdHandovers.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HouseholdHandovers',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<HouseholdHandover>(
        1, _omitFieldNames ? '' : 'handovers', $pb.PbFieldType.PM,
        subBuilder: HouseholdHandover.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseholdHandovers clone() => HouseholdHandovers()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseholdHandovers copyWith(void Function(HouseholdHandovers) updates) =>
      super.copyWith((message) => updates(message as HouseholdHandovers))
          as HouseholdHandovers;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HouseholdHandovers create() => HouseholdHandovers._();
  @$core.override
  HouseholdHandovers createEmptyInstance() => create();
  static $pb.PbList<HouseholdHandovers> createRepeated() =>
      $pb.PbList<HouseholdHandovers>();
  @$core.pragma('dart2js:noInline')
  static HouseholdHandovers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HouseholdHandovers>(create);
  static HouseholdHandovers? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<HouseholdHandover> get handovers => $_getList(0);
}

/// Asks for one part of a home's export (EXPORT), answered with a HouseholdExport. The first
/// part is asked with no part_token, and each further one with the next_part_token of the part
/// before, until one comes with none. The home's residents only, and during a vacated handover
/// the departing household, holding nothing recorded after their residency ended (VACANCY);
/// anyone else is refused as NOT_ENTITLED.
///
/// A part_token says where the next part starts. The gateway keeps nothing for it: it checks
/// the token it minted when it is used, against the caller's rights then, so an interrupted
/// export resumes where it stopped, within the caller's residency. A token the gateway did not
/// mint, or minted for another caller, home or residency — one that has ended included, save
/// during that home's vacated handover — is refused as INVALID_REQUEST with metadata
/// {"reason": "part_token"}.
class ExportHouseholdData extends $pb.GeneratedMessage {
  factory ExportHouseholdData({
    $0.SpaceId? homeId,
    $core.String? partToken,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (partToken != null) result.partToken = partToken;
    return result;
  }

  ExportHouseholdData._();

  factory ExportHouseholdData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExportHouseholdData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExportHouseholdData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'partToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportHouseholdData clone() => ExportHouseholdData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExportHouseholdData copyWith(void Function(ExportHouseholdData) updates) =>
      super.copyWith((message) => updates(message as ExportHouseholdData))
          as ExportHouseholdData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExportHouseholdData create() => ExportHouseholdData._();
  @$core.override
  ExportHouseholdData createEmptyInstance() => create();
  static $pb.PbList<ExportHouseholdData> createRepeated() =>
      $pb.PbList<ExportHouseholdData>();
  @$core.pragma('dart2js:noInline')
  static ExportHouseholdData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExportHouseholdData>(create);
  static ExportHouseholdData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get partToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set partToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPartToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartToken() => $_clearField(2);
}

enum HouseholdExport_Part {
  roomClimates,
  roomHistory,
  climateSummary,
  commissioning,
  heating,
  notSet
}

/// One part of a home's export (EXPORT). The gateway chooses the order of the parts and how
/// each is cut; together they are the whole of it, each as of when it was made. Each part is
/// what the read named beside it would give the caller.
class HouseholdExport extends $pb.GeneratedMessage {
  factory HouseholdExport({
    $0.SpaceId? homeId,
    $2.RoomClimateList? roomClimates,
    $2.RoomHistory? roomHistory,
    $2.ApartmentClimateSummary? climateSummary,
    $3.CommissioningProfile? commissioning,
    $4.HeatingLayout? heating,
    $core.String? nextPartToken,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (roomClimates != null) result.roomClimates = roomClimates;
    if (roomHistory != null) result.roomHistory = roomHistory;
    if (climateSummary != null) result.climateSummary = climateSummary;
    if (commissioning != null) result.commissioning = commissioning;
    if (heating != null) result.heating = heating;
    if (nextPartToken != null) result.nextPartToken = nextPartToken;
    return result;
  }

  HouseholdExport._();

  factory HouseholdExport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HouseholdExport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HouseholdExport_Part>
      _HouseholdExport_PartByTag = {
    2: HouseholdExport_Part.roomClimates,
    3: HouseholdExport_Part.roomHistory,
    4: HouseholdExport_Part.climateSummary,
    5: HouseholdExport_Part.commissioning,
    6: HouseholdExport_Part.heating,
    0: HouseholdExport_Part.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HouseholdExport',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$2.RoomClimateList>(2, _omitFieldNames ? '' : 'roomClimates',
        subBuilder: $2.RoomClimateList.create)
    ..aOM<$2.RoomHistory>(3, _omitFieldNames ? '' : 'roomHistory',
        subBuilder: $2.RoomHistory.create)
    ..aOM<$2.ApartmentClimateSummary>(
        4, _omitFieldNames ? '' : 'climateSummary',
        subBuilder: $2.ApartmentClimateSummary.create)
    ..aOM<$3.CommissioningProfile>(5, _omitFieldNames ? '' : 'commissioning',
        subBuilder: $3.CommissioningProfile.create)
    ..aOM<$4.HeatingLayout>(6, _omitFieldNames ? '' : 'heating',
        subBuilder: $4.HeatingLayout.create)
    ..aOS(7, _omitFieldNames ? '' : 'nextPartToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseholdExport clone() => HouseholdExport()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseholdExport copyWith(void Function(HouseholdExport) updates) =>
      super.copyWith((message) => updates(message as HouseholdExport))
          as HouseholdExport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HouseholdExport create() => HouseholdExport._();
  @$core.override
  HouseholdExport createEmptyInstance() => create();
  static $pb.PbList<HouseholdExport> createRepeated() =>
      $pb.PbList<HouseholdExport>();
  @$core.pragma('dart2js:noInline')
  static HouseholdExport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HouseholdExport>(create);
  static HouseholdExport? _defaultInstance;

  HouseholdExport_Part whichPart() =>
      _HouseholdExport_PartByTag[$_whichOneof(0)]!;
  void clearPart() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);

  /// The home's rooms, their settings, and the modes on the home (ListRoomClimates).
  @$pb.TagNumber(2)
  $2.RoomClimateList get roomClimates => $_getN(1);
  @$pb.TagNumber(2)
  set roomClimates($2.RoomClimateList value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRoomClimates() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomClimates() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.RoomClimateList ensureRoomClimates() => $_ensure(1);

  /// One room's history at one resolution, one GetRoomHistory answer's worth. A room's history
  /// comes at the finest resolution held for each stretch of time, with no time given twice:
  /// at the finest resolution the gateway gives, from its kept_from; at each coarser one, the
  /// buckets from its kept_from that end at or before the next finer one's kept_from. In as
  /// many parts as it takes.
  @$pb.TagNumber(3)
  $2.RoomHistory get roomHistory => $_getN(2);
  @$pb.TagNumber(3)
  set roomHistory($2.RoomHistory value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRoomHistory() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomHistory() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.RoomHistory ensureRoomHistory() => $_ensure(2);

  /// The home's climate summary over one period length (GetApartmentClimateSummary): one
  /// part for each of DAY, WEEK and MONTH.
  @$pb.TagNumber(4)
  $2.ApartmentClimateSummary get climateSummary => $_getN(3);
  @$pb.TagNumber(4)
  set climateSummary($2.ApartmentClimateSummary value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasClimateSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearClimateSummary() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.ApartmentClimateSummary ensureClimateSummary() => $_ensure(3);

  /// The home's commissioning (ListCommissioning).
  @$pb.TagNumber(5)
  $3.CommissioningProfile get commissioning => $_getN(4);
  @$pb.TagNumber(5)
  set commissioning($3.CommissioningProfile value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCommissioning() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommissioning() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.CommissioningProfile ensureCommissioning() => $_ensure(4);

  /// The home's heating records (ListHeating).
  @$pb.TagNumber(6)
  $4.HeatingLayout get heating => $_getN(5);
  @$pb.TagNumber(6)
  set heating($4.HeatingLayout value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHeating() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeating() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.HeatingLayout ensureHeating() => $_ensure(5);

  /// The token to ask for the next part with; empty on the last.
  @$pb.TagNumber(7)
  $core.String get nextPartToken => $_getSZ(6);
  @$pb.TagNumber(7)
  set nextPartToken($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNextPartToken() => $_has(6);
  @$pb.TagNumber(7)
  void clearNextPartToken() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
