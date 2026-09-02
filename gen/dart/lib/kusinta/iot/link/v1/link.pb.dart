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
