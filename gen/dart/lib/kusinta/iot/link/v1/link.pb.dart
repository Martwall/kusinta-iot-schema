// This is a generated file - do not edit.
//
// Generated from kusinta/iot/link/v1/link.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../access/v1/acl.pb.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;
import 'link.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'link.pbenum.dart';

enum LinkSettings_PerFunction { climateLead, notSet }

/// What a gateway-kept link of a given function needs told to it.
///
/// Only a soft link has settings at all — see LINK_MODE_HARD for why there is
/// nothing in a device-to-device link for anyone to tune. And what a soft link
/// needs differs entirely by function: a climate lead needs a target
/// temperature, while forwarding a window's open state needs nothing whatsoever.
/// Hence a oneof per function rather than a flat set of fields: the second
/// function to arrive must not turn this into a bag of unrelated optionals named
/// after the first.
///
/// A function with no arm here has nothing to configure, and an attempt to
/// configure it should be refused rather than accepted as a no-op.
class LinkSettings extends $pb.GeneratedMessage {
  factory LinkSettings({
    ClimateLeadSettings? climateLead,
  }) {
    final result = create();
    if (climateLead != null) result.climateLead = climateLead;
    return result;
  }

  LinkSettings._();

  factory LinkSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, LinkSettings_PerFunction>
      _LinkSettings_PerFunctionByTag = {
    1: LinkSettings_PerFunction.climateLead,
    0: LinkSettings_PerFunction.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkSettings',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'kusinta.iot.link.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ClimateLeadSettings>(1, _omitFieldNames ? '' : 'climateLead',
        subBuilder: ClimateLeadSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkSettings clone() => LinkSettings()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkSettings copyWith(void Function(LinkSettings) updates) =>
      super.copyWith((message) => updates(message as LinkSettings))
          as LinkSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkSettings create() => LinkSettings._();
  @$core.override
  LinkSettings createEmptyInstance() => create();
  static $pb.PbList<LinkSettings> createRepeated() =>
      $pb.PbList<LinkSettings>();
  @$core.pragma('dart2js:noInline')
  static LinkSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkSettings>(create);
  static LinkSettings? _defaultInstance;

  LinkSettings_PerFunction whichPerFunction() =>
      _LinkSettings_PerFunctionByTag[$_whichOneof(0)]!;
  void clearPerFunction() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ClimateLeadSettings get climateLead => $_getN(0);
  @$pb.TagNumber(1)
  set climateLead(ClimateLeadSettings value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasClimateLead() => $_has(0);
  @$pb.TagNumber(1)
  void clearClimateLead() => $_clearField(1);
  @$pb.TagNumber(1)
  ClimateLeadSettings ensureClimateLead() => $_ensure(0);
}

/// Settings for a gateway-kept LINK_FUNCTION_CLIMATE_LEAD.
class ClimateLeadSettings extends $pb.GeneratedMessage {
  factory ClimateLeadSettings({
    $core.int? targetSetpoint,
  }) {
    final result = create();
    if (targetSetpoint != null) result.targetSetpoint = targetSetpoint;
    return result;
  }

  ClimateLeadSettings._();

  factory ClimateLeadSettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClimateLeadSettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClimateLeadSettings',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'kusinta.iot.link.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'targetSetpoint', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateLeadSettings clone() => ClimateLeadSettings()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateLeadSettings copyWith(void Function(ClimateLeadSettings) updates) =>
      super.copyWith((message) => updates(message as ClimateLeadSettings))
          as ClimateLeadSettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClimateLeadSettings create() => ClimateLeadSettings._();
  @$core.override
  ClimateLeadSettings createEmptyInstance() => create();
  static $pb.PbList<ClimateLeadSettings> createRepeated() =>
      $pb.PbList<ClimateLeadSettings>();
  @$core.pragma('dart2js:noInline')
  static ClimateLeadSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClimateLeadSettings>(create);
  static ClimateLeadSettings? _defaultInstance;

  /// The temperature this link is to hold, in centidegrees — the unit and
  /// encoding device/v1/properties.proto declares for every temperature in this
  /// schema, so nothing converts between the target and the readings it is
  /// compared against.
  ///
  /// Deliberately not the receiver's own setpoint attribute. A gateway steering
  /// a radiator valve it cannot feed a measurement to has only that setpoint to
  /// act through, so the setpoint becomes an actuator position which moves on
  /// its own and settles wherever the target needs it to. It stops being a
  /// statement of what anybody asked for, which is why the request is kept here.
  ///
  /// Per link, and a sender may lead several receivers — a room with more than
  /// one radiator is the ordinary case, and each of its links carries this
  /// number separately. An interface offering "the temperature in here" is
  /// therefore setting several links at once and is responsible for keeping them
  /// equal; nothing on this wire enforces it. A single target per room needs a
  /// room to hang it on, which is a larger idea than a link.
  ///
  /// One target, not one per heating and cooling mode: this addresses a valve
  /// that only heats. A device that can do both would need the setpoint's mode
  /// named alongside, the way webrtc/v1/setpoint_mode.proto names it for a
  /// command, and that is a new arm rather than a reinterpretation of this one.
  ///
  /// Explicit presence, per the rule properties.proto sets out: a settings
  /// message present with this never set must not be indistinguishable from a
  /// request to hold the room at 0.00 °C.
  @$pb.TagNumber(1)
  $core.int get targetSetpoint => $_getIZ(0);
  @$pb.TagNumber(1)
  set targetSetpoint($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetSetpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetSetpoint() => $_clearField(1);
}

/// One device leading another.
class DeviceLink extends $pb.GeneratedMessage {
  factory DeviceLink({
    $core.String? linkId,
    $0.DeviceId? sender,
    $0.DeviceId? receiver,
    LinkFunction? function,
    LinkMode? mode,
    LinkState? state,
    $1.Timestamp? createdAt,
    $core.String? stateDetail,
    LinkSettings? settings,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    if (sender != null) result.sender = sender;
    if (receiver != null) result.receiver = receiver;
    if (function != null) result.function = function;
    if (mode != null) result.mode = mode;
    if (state != null) result.state = state;
    if (createdAt != null) result.createdAt = createdAt;
    if (stateDetail != null) result.stateDetail = stateDetail;
    if (settings != null) result.settings = settings;
    return result;
  }

  DeviceLink._();

  factory DeviceLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceLink',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'kusinta.iot.link.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkId')
    ..aOM<$0.DeviceId>(2, _omitFieldNames ? '' : 'sender',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.DeviceId>(3, _omitFieldNames ? '' : 'receiver',
        subBuilder: $0.DeviceId.create)
    ..e<LinkFunction>(4, _omitFieldNames ? '' : 'function', $pb.PbFieldType.OE,
        defaultOrMaker: LinkFunction.LINK_FUNCTION_UNSPECIFIED,
        valueOf: LinkFunction.valueOf,
        enumValues: LinkFunction.values)
    ..e<LinkMode>(5, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: LinkMode.LINK_MODE_UNSPECIFIED,
        valueOf: LinkMode.valueOf,
        enumValues: LinkMode.values)
    ..e<LinkState>(6, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: LinkState.LINK_STATE_UNSPECIFIED,
        valueOf: LinkState.valueOf,
        enumValues: LinkState.values)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'stateDetail')
    ..aOM<LinkSettings>(9, _omitFieldNames ? '' : 'settings',
        subBuilder: LinkSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceLink clone() => DeviceLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceLink copyWith(void Function(DeviceLink) updates) =>
      super.copyWith((message) => updates(message as DeviceLink)) as DeviceLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceLink create() => DeviceLink._();
  @$core.override
  DeviceLink createEmptyInstance() => create();
  static $pb.PbList<DeviceLink> createRepeated() => $pb.PbList<DeviceLink>();
  @$core.pragma('dart2js:noInline')
  static DeviceLink getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceLink>(create);
  static DeviceLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);

  /// Which device leads. This is the control surface for the pair: for a climate
  /// link, the setpoint that governs both is written here.
  @$pb.TagNumber(2)
  $0.DeviceId get sender => $_getN(1);
  @$pb.TagNumber(2)
  set sender($0.DeviceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.DeviceId ensureSender() => $_ensure(1);

  /// Which device follows. One sender may lead several receivers — a room with
  /// more than one radiator is the ordinary case — and each is its own link.
  /// Several senders leading one receiver is not modelled: combining two
  /// measurements needs a policy, and no policy is defined.
  @$pb.TagNumber(3)
  $0.DeviceId get receiver => $_getN(2);
  @$pb.TagNumber(3)
  set receiver($0.DeviceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasReceiver() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiver() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.DeviceId ensureReceiver() => $_ensure(2);

  @$pb.TagNumber(4)
  LinkFunction get function => $_getN(3);
  @$pb.TagNumber(4)
  set function(LinkFunction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFunction() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunction() => $_clearField(4);

  @$pb.TagNumber(5)
  LinkMode get mode => $_getN(4);
  @$pb.TagNumber(5)
  set mode(LinkMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearMode() => $_clearField(5);

  @$pb.TagNumber(6)
  LinkState get state => $_getN(5);
  @$pb.TagNumber(6)
  set state(LinkState value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasState() => $_has(5);
  @$pb.TagNumber(6)
  void clearState() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($1.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureCreatedAt() => $_ensure(6);

  /// Why the link is not carrying, when state says it is not. Free text for a
  /// person, never parsed.
  @$pb.TagNumber(8)
  $core.String get stateDetail => $_getSZ(7);
  @$pb.TagNumber(8)
  set stateDetail($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStateDetail() => $_has(7);
  @$pb.TagNumber(8)
  void clearStateDetail() => $_clearField(8);

  /// How this link is configured, where its mode and function give it anything
  /// to configure. Unset on every hard link, and on a soft one nobody has set up
  /// yet — which is a link that exists and is not doing anything, not an error.
  ///
  /// Carried on the link rather than left to be asked for separately, because an
  /// interface showing a soft climate link has to show the room's target next to
  /// it, and the receiver's own setpoint is not that number.
  @$pb.TagNumber(9)
  LinkSettings get settings => $_getN(8);
  @$pb.TagNumber(9)
  set settings(LinkSettings value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSettings() => $_has(8);
  @$pb.TagNumber(9)
  void clearSettings() => $_clearField(9);
  @$pb.TagNumber(9)
  LinkSettings ensureSettings() => $_ensure(8);
}

/// What a device can be linked as, declared by the connector that models it.
///
/// Without this an interface cannot offer a sensible choice: it has no way to know
/// which of two devices may lead, whether a hub can broker them, or which
/// attribute carries the quantity in question. Matching is mechanical — the same
/// function, opposite directions, and a mode both ends support.
///
/// Declared per device rather than per endpoint. Endpoint would be more precise,
/// but the channels a link actually attaches to frequently carry no readings and
/// so are not announced as endpoints at all; a per-endpoint declaration would have
/// nowhere honest to live. The reserved range on DeviceLink is where that would go
/// if a vendor ever needs it.
class LinkCapability extends $pb.GeneratedMessage {
  factory LinkCapability({
    LinkFunction? function,
    LinkDirection? direction,
    $core.Iterable<LinkMode>? supportedModes,
    $2.AttributeRef? attribute,
    $core.String? label,
  }) {
    final result = create();
    if (function != null) result.function = function;
    if (direction != null) result.direction = direction;
    if (supportedModes != null) result.supportedModes.addAll(supportedModes);
    if (attribute != null) result.attribute = attribute;
    if (label != null) result.label = label;
    return result;
  }

  LinkCapability._();

  factory LinkCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkCapability',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'kusinta.iot.link.v1'),
      createEmptyInstance: create)
    ..e<LinkFunction>(1, _omitFieldNames ? '' : 'function', $pb.PbFieldType.OE,
        defaultOrMaker: LinkFunction.LINK_FUNCTION_UNSPECIFIED,
        valueOf: LinkFunction.valueOf,
        enumValues: LinkFunction.values)
    ..e<LinkDirection>(
        2, _omitFieldNames ? '' : 'direction', $pb.PbFieldType.OE,
        defaultOrMaker: LinkDirection.LINK_DIRECTION_UNSPECIFIED,
        valueOf: LinkDirection.valueOf,
        enumValues: LinkDirection.values)
    ..pc<LinkMode>(
        3, _omitFieldNames ? '' : 'supportedModes', $pb.PbFieldType.KE,
        valueOf: LinkMode.valueOf,
        enumValues: LinkMode.values,
        defaultEnumValue: LinkMode.LINK_MODE_UNSPECIFIED)
    ..aOM<$2.AttributeRef>(4, _omitFieldNames ? '' : 'attribute',
        subBuilder: $2.AttributeRef.create)
    ..aOS(5, _omitFieldNames ? '' : 'label')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkCapability clone() => LinkCapability()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkCapability copyWith(void Function(LinkCapability) updates) =>
      super.copyWith((message) => updates(message as LinkCapability))
          as LinkCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkCapability create() => LinkCapability._();
  @$core.override
  LinkCapability createEmptyInstance() => create();
  static $pb.PbList<LinkCapability> createRepeated() =>
      $pb.PbList<LinkCapability>();
  @$core.pragma('dart2js:noInline')
  static LinkCapability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkCapability>(create);
  static LinkCapability? _defaultInstance;

  @$pb.TagNumber(1)
  LinkFunction get function => $_getN(0);
  @$pb.TagNumber(1)
  set function(LinkFunction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFunction() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunction() => $_clearField(1);

  @$pb.TagNumber(2)
  LinkDirection get direction => $_getN(1);
  @$pb.TagNumber(2)
  set direction(LinkDirection value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => $_clearField(2);

  /// Modes this device supports for this function. A hard link additionally
  /// requires the other end to be on the same hub, which this cannot state alone.
  @$pb.TagNumber(3)
  $pb.PbList<LinkMode> get supportedModes => $_getList(2);

  /// This device's own attribute for this function — the one it reads as a
  /// sender, or the one it is driven through as a receiver. Present because the
  /// two ends of a link need not speak the same cluster.
  @$pb.TagNumber(4)
  $2.AttributeRef get attribute => $_getN(3);
  @$pb.TagNumber(4)
  set attribute($2.AttributeRef value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAttribute() => $_has(3);
  @$pb.TagNumber(4)
  void clearAttribute() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.AttributeRef ensureAttribute() => $_ensure(3);

  /// Human-readable, from the connector, in whatever locale it was given. For
  /// display beside a choice; never matched on.
  @$pb.TagNumber(5)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(5)
  set label($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabel() => $_clearField(5);
}

/// Every link a caller was shown, in reply to a listing.
class DeviceLinkList extends $pb.GeneratedMessage {
  factory DeviceLinkList({
    $core.Iterable<DeviceLink>? links,
  }) {
    final result = create();
    if (links != null) result.links.addAll(links);
    return result;
  }

  DeviceLinkList._();

  factory DeviceLinkList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceLinkList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceLinkList',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'kusinta.iot.link.v1'),
      createEmptyInstance: create)
    ..pc<DeviceLink>(1, _omitFieldNames ? '' : 'links', $pb.PbFieldType.PM,
        subBuilder: DeviceLink.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceLinkList clone() => DeviceLinkList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceLinkList copyWith(void Function(DeviceLinkList) updates) =>
      super.copyWith((message) => updates(message as DeviceLinkList))
          as DeviceLinkList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceLinkList create() => DeviceLinkList._();
  @$core.override
  DeviceLinkList createEmptyInstance() => create();
  static $pb.PbList<DeviceLinkList> createRepeated() =>
      $pb.PbList<DeviceLinkList>();
  @$core.pragma('dart2js:noInline')
  static DeviceLinkList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceLinkList>(create);
  static DeviceLinkList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<DeviceLink> get links => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
