// This is a generated file - do not edit.
//
// Generated from kusinta/iot/connector/v1/connector.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $3;
import '../../common/v1/pairing.pb.dart' as $5;
import '../../common/v1/types.pbenum.dart' as $8;
import '../../device/v1/device.pb.dart' as $1;
import '../../device/v1/device_event.pb.dart' as $7;
import '../../device/v1/property_update.pb.dart' as $6;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../link/v1/link.pb.dart' as $2;
import '../../webrtc/v1/command.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ConnectorInfo extends $pb.GeneratedMessage {
  factory ConnectorInfo({
    $0.ConnectorId? connectorId,
    $core.String? displayName,
    $core.String? version,
    $8.ConnectorTransport? transport,
    $core.String? endpoint,
    $core.Iterable<$core.int>? supportedDeviceTypeIds,
  }) {
    final result = create();
    if (connectorId != null) result.connectorId = connectorId;
    if (displayName != null) result.displayName = displayName;
    if (version != null) result.version = version;
    if (transport != null) result.transport = transport;
    if (endpoint != null) result.endpoint = endpoint;
    if (supportedDeviceTypeIds != null)
      result.supportedDeviceTypeIds.addAll(supportedDeviceTypeIds);
    return result;
  }

  ConnectorInfo._();

  factory ConnectorInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectorInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectorInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.ConnectorId>(1, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..e<$8.ConnectorTransport>(
        4, _omitFieldNames ? '' : 'transport', $pb.PbFieldType.OE,
        defaultOrMaker: $8.ConnectorTransport.CONNECTOR_TRANSPORT_UNSPECIFIED,
        valueOf: $8.ConnectorTransport.valueOf,
        enumValues: $8.ConnectorTransport.values)
    ..aOS(5, _omitFieldNames ? '' : 'endpoint')
    ..p<$core.int>(
        6, _omitFieldNames ? '' : 'supportedDeviceTypeIds', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorInfo clone() => ConnectorInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorInfo copyWith(void Function(ConnectorInfo) updates) =>
      super.copyWith((message) => updates(message as ConnectorInfo))
          as ConnectorInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectorInfo create() => ConnectorInfo._();
  @$core.override
  ConnectorInfo createEmptyInstance() => create();
  static $pb.PbList<ConnectorInfo> createRepeated() =>
      $pb.PbList<ConnectorInfo>();
  @$core.pragma('dart2js:noInline')
  static ConnectorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectorInfo>(create);
  static ConnectorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ConnectorId get connectorId => $_getN(0);
  @$pb.TagNumber(1)
  set connectorId($0.ConnectorId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConnectorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectorId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ConnectorId ensureConnectorId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $8.ConnectorTransport get transport => $_getN(3);
  @$pb.TagNumber(4)
  set transport($8.ConnectorTransport value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTransport() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransport() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get endpoint => $_getSZ(4);
  @$pb.TagNumber(5)
  set endpoint($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEndpoint() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndpoint() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get supportedDeviceTypeIds => $_getList(5);
}

class ConnectorHandshake extends $pb.GeneratedMessage {
  factory ConnectorHandshake({
    ConnectorInfo? info,
    $core.Iterable<$1.Device>? knownDevices,
    $core.Iterable<$2.DeviceLink>? knownLinks,
  }) {
    final result = create();
    if (info != null) result.info = info;
    if (knownDevices != null) result.knownDevices.addAll(knownDevices);
    if (knownLinks != null) result.knownLinks.addAll(knownLinks);
    return result;
  }

  ConnectorHandshake._();

  factory ConnectorHandshake.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectorHandshake.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectorHandshake',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<ConnectorInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ConnectorInfo.create)
    ..pc<$1.Device>(
        2, _omitFieldNames ? '' : 'knownDevices', $pb.PbFieldType.PM,
        subBuilder: $1.Device.create)
    ..pc<$2.DeviceLink>(
        3, _omitFieldNames ? '' : 'knownLinks', $pb.PbFieldType.PM,
        subBuilder: $2.DeviceLink.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorHandshake clone() => ConnectorHandshake()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorHandshake copyWith(void Function(ConnectorHandshake) updates) =>
      super.copyWith((message) => updates(message as ConnectorHandshake))
          as ConnectorHandshake;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectorHandshake create() => ConnectorHandshake._();
  @$core.override
  ConnectorHandshake createEmptyInstance() => create();
  static $pb.PbList<ConnectorHandshake> createRepeated() =>
      $pb.PbList<ConnectorHandshake>();
  @$core.pragma('dart2js:noInline')
  static ConnectorHandshake getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectorHandshake>(create);
  static ConnectorHandshake? _defaultInstance;

  @$pb.TagNumber(1)
  ConnectorInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ConnectorInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ConnectorInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.Device> get knownDevices => $_getList(1);

  /// Every link the hub currently holds, reported the way known_devices is.
  ///
  /// Links are hub state, not gateway state: they outlive a connector restart and
  /// can be changed by anyone with access to the hub. The gateway's records are a
  /// statement of intent that can drift, so the handshake is the moment to
  /// reconcile them against what is really there. A link in the gateway's records
  /// and not here has gone; one here and not in the records was made elsewhere.
  ///
  /// Empty means "states nothing" — a connector that does not model linking is not
  /// asserting that no links exist.
  @$pb.TagNumber(3)
  $pb.PbList<$2.DeviceLink> get knownLinks => $_getList(2);
}

/// Asks the connector to make a link, gateway to connector.
///
/// Names two devices and a function; resolving that into whatever set of
/// underlying connections the hub needs is the connector's work. It is expected to
/// build the set atomically and roll back a partial one, because a half-built set
/// is a link that lists as healthy and carries nothing.
///
/// The connector is also expected to repair whatever the operation disturbs. On at
/// least one vendor, both making and removing a link leaves the receiving device
/// in a state it was not in before, with settings that must be captured
/// beforehand and put back after.
class CreateLink extends $pb.GeneratedMessage {
  factory CreateLink({
    $core.String? linkId,
    $0.DeviceId? sender,
    $0.DeviceId? receiver,
    $2.LinkFunction? function,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    if (sender != null) result.sender = sender;
    if (receiver != null) result.receiver = receiver;
    if (function != null) result.function = function;
    return result;
  }

  CreateLink._();

  factory CreateLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateLink',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkId')
    ..aOM<$0.DeviceId>(2, _omitFieldNames ? '' : 'sender',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.DeviceId>(3, _omitFieldNames ? '' : 'receiver',
        subBuilder: $0.DeviceId.create)
    ..e<$2.LinkFunction>(
        4, _omitFieldNames ? '' : 'function', $pb.PbFieldType.OE,
        defaultOrMaker: $2.LinkFunction.LINK_FUNCTION_UNSPECIFIED,
        valueOf: $2.LinkFunction.valueOf,
        enumValues: $2.LinkFunction.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateLink clone() => CreateLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateLink copyWith(void Function(CreateLink) updates) =>
      super.copyWith((message) => updates(message as CreateLink)) as CreateLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateLink create() => CreateLink._();
  @$core.override
  CreateLink createEmptyInstance() => create();
  static $pb.PbList<CreateLink> createRepeated() => $pb.PbList<CreateLink>();
  @$core.pragma('dart2js:noInline')
  static CreateLink getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateLink>(create);
  static CreateLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);

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
  $2.LinkFunction get function => $_getN(3);
  @$pb.TagNumber(4)
  set function($2.LinkFunction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFunction() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunction() => $_clearField(4);
}

/// Asks the connector to remove a link it previously made.
class RemoveLink extends $pb.GeneratedMessage {
  factory RemoveLink({
    $core.String? linkId,
    $0.DeviceId? sender,
    $0.DeviceId? receiver,
    $2.LinkFunction? function,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    if (sender != null) result.sender = sender;
    if (receiver != null) result.receiver = receiver;
    if (function != null) result.function = function;
    return result;
  }

  RemoveLink._();

  factory RemoveLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveLink',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkId')
    ..aOM<$0.DeviceId>(2, _omitFieldNames ? '' : 'sender',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.DeviceId>(3, _omitFieldNames ? '' : 'receiver',
        subBuilder: $0.DeviceId.create)
    ..e<$2.LinkFunction>(
        4, _omitFieldNames ? '' : 'function', $pb.PbFieldType.OE,
        defaultOrMaker: $2.LinkFunction.LINK_FUNCTION_UNSPECIFIED,
        valueOf: $2.LinkFunction.valueOf,
        enumValues: $2.LinkFunction.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveLink clone() => RemoveLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveLink copyWith(void Function(RemoveLink) updates) =>
      super.copyWith((message) => updates(message as RemoveLink)) as RemoveLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveLink create() => RemoveLink._();
  @$core.override
  RemoveLink createEmptyInstance() => create();
  static $pb.PbList<RemoveLink> createRepeated() => $pb.PbList<RemoveLink>();
  @$core.pragma('dart2js:noInline')
  static RemoveLink getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveLink>(create);
  static RemoveLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);

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
  $2.LinkFunction get function => $_getN(3);
  @$pb.TagNumber(4)
  set function($2.LinkFunction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFunction() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunction() => $_clearField(4);
}

/// Asks the connector what links the hub holds, for reconciliation outside a
/// handshake.
class ListLinks extends $pb.GeneratedMessage {
  factory ListLinks({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  ListLinks._();

  factory ListLinks.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListLinks.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListLinks',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListLinks clone() => ListLinks()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListLinks copyWith(void Function(ListLinks) updates) =>
      super.copyWith((message) => updates(message as ListLinks)) as ListLinks;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLinks create() => ListLinks._();
  @$core.override
  ListLinks createEmptyInstance() => create();
  static $pb.PbList<ListLinks> createRepeated() => $pb.PbList<ListLinks>();
  @$core.pragma('dart2js:noInline')
  static ListLinks getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLinks>(create);
  static ListLinks? _defaultInstance;

  /// Unset asks for every link the hub holds.
  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);
}

/// What became of a CreateLink or RemoveLink, connector to gateway.
///
/// Reports the link's observed state rather than merely whether the call was
/// accepted. A hub will report a link as present and healthy while the devices
/// ignore it, so "the request did not fail" is not the same claim as "the link is
/// carrying" and must not be encoded as though it were.
class LinkResult extends $pb.GeneratedMessage {
  factory LinkResult({
    $core.String? linkId,
    $core.bool? success,
    $2.LinkState? state,
    $core.String? detail,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    if (success != null) result.success = success;
    if (state != null) result.state = state;
    if (detail != null) result.detail = detail;
    return result;
  }

  LinkResult._();

  factory LinkResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..e<$2.LinkState>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: $2.LinkState.LINK_STATE_UNSPECIFIED,
        valueOf: $2.LinkState.valueOf,
        enumValues: $2.LinkState.values)
    ..aOS(4, _omitFieldNames ? '' : 'detail')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkResult clone() => LinkResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkResult copyWith(void Function(LinkResult) updates) =>
      super.copyWith((message) => updates(message as LinkResult)) as LinkResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkResult create() => LinkResult._();
  @$core.override
  LinkResult createEmptyInstance() => create();
  static $pb.PbList<LinkResult> createRepeated() => $pb.PbList<LinkResult>();
  @$core.pragma('dart2js:noInline')
  static LinkResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkResult>(create);
  static LinkResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.LinkState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state($2.LinkState value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => $_clearField(3);

  /// Why not, when success is false. For a person; never parsed.
  @$pb.TagNumber(4)
  $core.String get detail => $_getSZ(3);
  @$pb.TagNumber(4)
  set detail($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDetail() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetail() => $_clearField(4);
}

/// Every link the hub holds, connector to gateway, in reply to ListLinks.
class LinksReported extends $pb.GeneratedMessage {
  factory LinksReported({
    $core.Iterable<$2.DeviceLink>? links,
  }) {
    final result = create();
    if (links != null) result.links.addAll(links);
    return result;
  }

  LinksReported._();

  factory LinksReported.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinksReported.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinksReported',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..pc<$2.DeviceLink>(1, _omitFieldNames ? '' : 'links', $pb.PbFieldType.PM,
        subBuilder: $2.DeviceLink.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinksReported clone() => LinksReported()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinksReported copyWith(void Function(LinksReported) updates) =>
      super.copyWith((message) => updates(message as LinksReported))
          as LinksReported;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinksReported create() => LinksReported._();
  @$core.override
  LinksReported createEmptyInstance() => create();
  static $pb.PbList<LinksReported> createRepeated() =>
      $pb.PbList<LinksReported>();
  @$core.pragma('dart2js:noInline')
  static LinksReported getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinksReported>(create);
  static LinksReported? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.DeviceLink> get links => $_getList(0);
}

class HandshakeAck extends $pb.GeneratedMessage {
  factory HandshakeAck({
    $core.bool? accepted,
    $core.String? reason,
    $0.GatewayId? gatewayId,
  }) {
    final result = create();
    if (accepted != null) result.accepted = accepted;
    if (reason != null) result.reason = reason;
    if (gatewayId != null) result.gatewayId = gatewayId;
    return result;
  }

  HandshakeAck._();

  factory HandshakeAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HandshakeAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HandshakeAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'accepted')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..aOM<$0.GatewayId>(3, _omitFieldNames ? '' : 'gatewayId',
        subBuilder: $0.GatewayId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HandshakeAck clone() => HandshakeAck()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HandshakeAck copyWith(void Function(HandshakeAck) updates) =>
      super.copyWith((message) => updates(message as HandshakeAck))
          as HandshakeAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandshakeAck create() => HandshakeAck._();
  @$core.override
  HandshakeAck createEmptyInstance() => create();
  static $pb.PbList<HandshakeAck> createRepeated() =>
      $pb.PbList<HandshakeAck>();
  @$core.pragma('dart2js:noInline')
  static HandshakeAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HandshakeAck>(create);
  static HandshakeAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get accepted => $_getBF(0);
  @$pb.TagNumber(1)
  set accepted($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccepted() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccepted() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.GatewayId get gatewayId => $_getN(2);
  @$pb.TagNumber(3)
  set gatewayId($0.GatewayId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGatewayId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGatewayId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.GatewayId ensureGatewayId() => $_ensure(2);
}

/// A device the connector has found. Carries the full Device, not just its descriptor,
/// because a device's endpoints are what say which Matter device types it presents — and
/// without them the gateway cannot resolve any PropertyUpdate the device goes on to send.
///
/// Properties may be unset on every endpoint; that means the device exists and has
/// reported nothing yet, which is the normal state at announcement.
class DeviceAnnouncement extends $pb.GeneratedMessage {
  factory DeviceAnnouncement({
    $1.Device? device,
    $core.String? pairingRequestId,
  }) {
    final result = create();
    if (device != null) result.device = device;
    if (pairingRequestId != null) result.pairingRequestId = pairingRequestId;
    return result;
  }

  DeviceAnnouncement._();

  factory DeviceAnnouncement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceAnnouncement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceAnnouncement',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$1.Device>(2, _omitFieldNames ? '' : 'device',
        subBuilder: $1.Device.create)
    ..aOS(3, _omitFieldNames ? '' : 'pairingRequestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAnnouncement clone() => DeviceAnnouncement()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAnnouncement copyWith(void Function(DeviceAnnouncement) updates) =>
      super.copyWith((message) => updates(message as DeviceAnnouncement))
          as DeviceAnnouncement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAnnouncement create() => DeviceAnnouncement._();
  @$core.override
  DeviceAnnouncement createEmptyInstance() => create();
  static $pb.PbList<DeviceAnnouncement> createRepeated() =>
      $pb.PbList<DeviceAnnouncement>();
  @$core.pragma('dart2js:noInline')
  static DeviceAnnouncement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceAnnouncement>(create);
  static DeviceAnnouncement? _defaultInstance;

  @$pb.TagNumber(2)
  $1.Device get device => $_getN(0);
  @$pb.TagNumber(2)
  set device($1.Device value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(2)
  void clearDevice() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Device ensureDevice() => $_ensure(0);

  /// The pairing request this device arrived for, empty for a device that arrived on its own.
  ///
  /// This field is the whole attribution mechanism. A connector is the only party that knows
  /// when its own hub was accepting devices, so it decides whether an arrival belongs to a
  /// request and says so here.
  ///
  /// Set it only when the arrival was actually checked. An arrival that fails the check is
  /// still announced — the device exists and has joined — but with this empty, which files it
  /// as belonging to nobody rather than to the wrong person.
  ///
  /// This is EnterPairingMode.request_id, minted per connector, and NOT an app message id:
  /// whoever forwards the outcome to the app has to map it back. The name avoids `in_reply_to`
  /// for that reason, which everywhere else in this schema means the app's own message id.
  @$pb.TagNumber(3)
  $core.String get pairingRequestId => $_getSZ(1);
  @$pb.TagNumber(3)
  set pairingRequestId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasPairingRequestId() => $_has(1);
  @$pb.TagNumber(3)
  void clearPairingRequestId() => $_clearField(3);
}

class DeviceRemoval extends $pb.GeneratedMessage {
  factory DeviceRemoval({
    $0.DeviceId? deviceId,
    $core.String? reason,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (reason != null) result.reason = reason;
    return result;
  }

  DeviceRemoval._();

  factory DeviceRemoval.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceRemoval.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceRemoval',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceRemoval clone() => DeviceRemoval()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceRemoval copyWith(void Function(DeviceRemoval) updates) =>
      super.copyWith((message) => updates(message as DeviceRemoval))
          as DeviceRemoval;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceRemoval create() => DeviceRemoval._();
  @$core.override
  DeviceRemoval createEmptyInstance() => create();
  static $pb.PbList<DeviceRemoval> createRepeated() =>
      $pb.PbList<DeviceRemoval>();
  @$core.pragma('dart2js:noInline')
  static DeviceRemoval getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceRemoval>(create);
  static DeviceRemoval? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

class HeartBeat extends $pb.GeneratedMessage {
  factory HeartBeat() => create();

  HeartBeat._();

  factory HeartBeat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeartBeat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeartBeat',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartBeat clone() => HeartBeat()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartBeat copyWith(void Function(HeartBeat) updates) =>
      super.copyWith((message) => updates(message as HeartBeat)) as HeartBeat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartBeat create() => HeartBeat._();
  @$core.override
  HeartBeat createEmptyInstance() => create();
  static $pb.PbList<HeartBeat> createRepeated() => $pb.PbList<HeartBeat>();
  @$core.pragma('dart2js:noInline')
  static HeartBeat getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartBeat>(create);
  static HeartBeat? _defaultInstance;
}

class SubscribeDevice extends $pb.GeneratedMessage {
  factory SubscribeDevice({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  SubscribeDevice._();

  factory SubscribeDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubscribeDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubscribeDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeDevice clone() => SubscribeDevice()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeDevice copyWith(void Function(SubscribeDevice) updates) =>
      super.copyWith((message) => updates(message as SubscribeDevice))
          as SubscribeDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeDevice create() => SubscribeDevice._();
  @$core.override
  SubscribeDevice createEmptyInstance() => create();
  static $pb.PbList<SubscribeDevice> createRepeated() =>
      $pb.PbList<SubscribeDevice>();
  @$core.pragma('dart2js:noInline')
  static SubscribeDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscribeDevice>(create);
  static SubscribeDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);
}

class UnsubscribeDevice extends $pb.GeneratedMessage {
  factory UnsubscribeDevice({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  UnsubscribeDevice._();

  factory UnsubscribeDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UnsubscribeDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnsubscribeDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnsubscribeDevice clone() => UnsubscribeDevice()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnsubscribeDevice copyWith(void Function(UnsubscribeDevice) updates) =>
      super.copyWith((message) => updates(message as UnsubscribeDevice))
          as UnsubscribeDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnsubscribeDevice create() => UnsubscribeDevice._();
  @$core.override
  UnsubscribeDevice createEmptyInstance() => create();
  static $pb.PbList<UnsubscribeDevice> createRepeated() =>
      $pb.PbList<UnsubscribeDevice>();
  @$core.pragma('dart2js:noInline')
  static UnsubscribeDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnsubscribeDevice>(create);
  static UnsubscribeDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);
}

/// Session-level error, gateway → connector. NOT how a command or a write fails: that is
/// an ordinary ConnectorCommandResult with success = false and a typed CommandError, and
/// one operation failing says nothing about the session, which continues.
///
/// code stays a free-form string here, unlike webrtc.v1.GatewayError's closed
/// GatewayErrorCode and unlike the CommandError below. A connector is versioned on its own
/// schedule and one may be a third party's, so the set of things that can go wrong between
/// a gateway and a connector is not closed the way the app leg's is.
class GatewayError extends $pb.GeneratedMessage {
  factory GatewayError({
    $core.String? code,
    $core.String? message,
    $core.String? requestId,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  GatewayError._();

  factory GatewayError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayError',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayError clone() => GatewayError()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayError copyWith(void Function(GatewayError) updates) =>
      super.copyWith((message) => updates(message as GatewayError))
          as GatewayError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayError create() => GatewayError._();
  @$core.override
  GatewayError createEmptyInstance() => create();
  static $pb.PbList<GatewayError> createRepeated() =>
      $pb.PbList<GatewayError>();
  @$core.pragma('dart2js:noInline')
  static GatewayError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayError>(create);
  static GatewayError? _defaultInstance;

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
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => $_clearField(3);
}

/// A connector's answer to an executed command OR attribute write. One message for both:
/// the two operations differ in what they do to a device, not in how a connector reports
/// having done it, and request_id says which request this answers either way.
class ConnectorCommandResult extends $pb.GeneratedMessage {
  factory ConnectorCommandResult({
    $core.String? requestId,
    $core.bool? success,
    $3.Timestamp? completedAt,
    $4.CommandError? error,
    $3.Timestamp? settlesBy,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (success != null) result.success = success;
    if (completedAt != null) result.completedAt = completedAt;
    if (error != null) result.error = error;
    if (settlesBy != null) result.settlesBy = settlesBy;
    return result;
  }

  ConnectorCommandResult._();

  factory ConnectorCommandResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectorCommandResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectorCommandResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'completedAt',
        subBuilder: $3.Timestamp.create)
    ..aOM<$4.CommandError>(5, _omitFieldNames ? '' : 'error',
        subBuilder: $4.CommandError.create)
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'settlesBy',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorCommandResult clone() =>
      ConnectorCommandResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorCommandResult copyWith(
          void Function(ConnectorCommandResult) updates) =>
      super.copyWith((message) => updates(message as ConnectorCommandResult))
          as ConnectorCommandResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectorCommandResult create() => ConnectorCommandResult._();
  @$core.override
  ConnectorCommandResult createEmptyInstance() => create();
  static $pb.PbList<ConnectorCommandResult> createRepeated() =>
      $pb.PbList<ConnectorCommandResult>();
  @$core.pragma('dart2js:noInline')
  static ConnectorCommandResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectorCommandResult>(create);
  static ConnectorCommandResult? _defaultInstance;

  /// Was command_id. Renamed with webrtc.v1.DeviceCommand.request_id, which it mirrors, and
  /// because it now correlates writes as well as commands.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(4)
  $3.Timestamp get completedAt => $_getN(2);
  @$pb.TagNumber(4)
  set completedAt($3.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCompletedAt() => $_has(2);
  @$pb.TagNumber(4)
  void clearCompletedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureCompletedAt() => $_ensure(2);

  /// Why it failed, in the same closed vocabulary the app is eventually given. The gateway
  /// forwards this into webrtc.v1.CommandResult.error unchanged; it does not translate.
  ///
  /// Shared rather than mirrored on purpose. The free-form string this replaces left every
  /// connector to invent its own spellings ("TIMEOUT", "UNSUPPORTED_MODE") and the gateway
  /// to keep a mapping table that silently fell behind whenever a connector coined a new
  /// one — which is the drift a closed vocabulary exists to prevent.
  ///
  /// A connector produces the subset it can actually observe: REJECTED_BY_DEVICE,
  /// UNREACHABLE, TIMEOUT, INVALID_COMMAND, INTERNAL. NOT_ENTITLED and
  /// CONSTRAINT_VIOLATED are the gateway's, decided before a command is forwarded at all;
  /// a connector never sees the caller's permissions and must not claim to.
  ///
  /// Rollout note: a connector whose schema predates this sends nothing on field 5 and the
  /// gateway reads UNSPECIFIED. Set success = false with no code and the meaning is "it
  /// failed, reason unstated" — which is what the string codes amounted to anyway.
  @$pb.TagNumber(5)
  $4.CommandError get error => $_getN(3);
  @$pb.TagNumber(5)
  set error($4.CommandError value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(5)
  void clearError() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.CommandError ensureError() => $_ensure(3);

  /// When this connector's own optimistic window closes: by this time the value has either
  /// been confirmed by the device or restored, and either way the connector will have
  /// published a PropertyUpdate saying so.
  ///
  /// Set it when the connector applied the value optimistically and runs a rollback timer
  /// of its own — a downstream device with a known, device-specific timeout. The gateway
  /// carries it into webrtc.v1.CommandResult.settles_by instead of applying a fixed guess:
  /// the connector is the only party that knows the timer, and a gateway-side constant
  /// chasing it is the same hardcoded-window problem one level up.
  ///
  /// Absent means no claim — either the connector confirms synchronously, or it cannot
  /// state a bound. Absent is NOT "settles immediately", and the gateway is free to fall
  /// back to a deadline of its own when nothing is stated here.
  ///
  /// This bounds the wait; it does not label the values that arrive. Which update was the
  /// optimistic one is device.v1.PropertyUpdate.provenance.
  @$pb.TagNumber(6)
  $3.Timestamp get settlesBy => $_getN(4);
  @$pb.TagNumber(6)
  set settlesBy($3.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSettlesBy() => $_has(4);
  @$pb.TagNumber(6)
  void clearSettlesBy() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureSettlesBy() => $_ensure(4);
}

/// Tells a connector to accept new devices for a while, gateway → connector.
///
/// Named for what the connector does rather than for what the app asked. The two legs are
/// named differently on purpose: the app starts one pairing, and the gateway may put several
/// connectors into pairing mode to serve it.
class EnterPairingMode extends $pb.GeneratedMessage {
  factory EnterPairingMode({
    $core.String? requestId,
    $5.PairingWindow? window,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (window != null) result.window = window;
    return result;
  }

  EnterPairingMode._();

  factory EnterPairingMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnterPairingMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnterPairingMode',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOM<$5.PairingWindow>(2, _omitFieldNames ? '' : 'window',
        subBuilder: $5.PairingWindow.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnterPairingMode clone() => EnterPairingMode()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnterPairingMode copyWith(void Function(EnterPairingMode) updates) =>
      super.copyWith((message) => updates(message as EnterPairingMode))
          as EnterPairingMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterPairingMode create() => EnterPairingMode._();
  @$core.override
  EnterPairingMode createEmptyInstance() => create();
  static $pb.PbList<EnterPairingMode> createRepeated() =>
      $pb.PbList<EnterPairingMode>();
  @$core.pragma('dart2js:noInline')
  static EnterPairingMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnterPairingMode>(create);
  static EnterPairingMode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// How long, which device, how many. See PairingWindow — and clamp the duration again here.
  /// A connector is the last thing standing between a number on the wire and a radio that
  /// accepts anything nearby for that long.
  @$pb.TagNumber(2)
  $5.PairingWindow get window => $_getN(1);
  @$pb.TagNumber(2)
  set window($5.PairingWindow value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWindow() => $_has(1);
  @$pb.TagNumber(2)
  void clearWindow() => $_clearField(2);
  @$pb.TagNumber(2)
  $5.PairingWindow ensureWindow() => $_ensure(1);
}

/// A connector's answer to EnterPairingMode: whether the window opened, and nothing more.
///
/// The same accept-now-report-later split as ConnectorCommandResult, for the same reason — a
/// connector that waited for a device to wake before answering would blow every deadline
/// above it. What the window produced arrives later, as PairingModeEnded.
class PairingModeResult extends $pb.GeneratedMessage {
  factory PairingModeResult({
    $core.String? requestId,
    $core.bool? accepted,
    $5.PairingErrorDetail? error,
    $3.Timestamp? expiresAt,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (accepted != null) result.accepted = accepted;
    if (error != null) result.error = error;
    if (expiresAt != null) result.expiresAt = expiresAt;
    return result;
  }

  PairingModeResult._();

  factory PairingModeResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingModeResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingModeResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOB(2, _omitFieldNames ? '' : 'accepted')
    ..aOM<$5.PairingErrorDetail>(3, _omitFieldNames ? '' : 'error',
        subBuilder: $5.PairingErrorDetail.create)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingModeResult clone() => PairingModeResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingModeResult copyWith(void Function(PairingModeResult) updates) =>
      super.copyWith((message) => updates(message as PairingModeResult))
          as PairingModeResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingModeResult create() => PairingModeResult._();
  @$core.override
  PairingModeResult createEmptyInstance() => create();
  static $pb.PbList<PairingModeResult> createRepeated() =>
      $pb.PbList<PairingModeResult>();
  @$core.pragma('dart2js:noInline')
  static PairingModeResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingModeResult>(create);
  static PairingModeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get accepted => $_getBF(1);
  @$pb.TagNumber(2)
  set accepted($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccepted() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccepted() => $_clearField(2);

  /// Why the window did not open. Only what a connector can observe at this point:
  /// CONNECTOR_UNAVAILABLE, INTERNAL. NOT_ENTITLED and ALREADY_IN_PROGRESS are the gateway's,
  /// decided before this message is sent, and a connector must not claim them.
  @$pb.TagNumber(3)
  $5.PairingErrorDetail get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($5.PairingErrorDetail value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.PairingErrorDetail ensureError() => $_ensure(2);

  /// When the window closes, if it opened. Lets the gateway expire its own record against the
  /// connector's clock rather than a guess — the connector is the party that clamped it.
  @$pb.TagNumber(4)
  $3.Timestamp get expiresAt => $_getN(3);
  @$pb.TagNumber(4)
  set expiresAt($3.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasExpiresAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiresAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureExpiresAt() => $_ensure(3);
}

/// What the window produced, connector → gateway, sent once when it closes.
///
/// Without this the connector has no way to report anything it learned after the window
/// opened: a device that joined and cannot be modelled, or one that joined and was not the
/// device the hint named. Neither can travel on a DeviceAnnouncement — the first has nothing
/// announceable, and the second is announced but unattributed, which says a device arrived
/// and not why it was refused.
///
/// It also gives a batch window a definite end. Counting announcements cannot distinguish
/// "three of five so far" from "three of five, and that is all".
class PairingModeEnded extends $pb.GeneratedMessage {
  factory PairingModeEnded({
    $core.String? requestId,
    $core.int? devicesAttributed,
    $5.PairingErrorDetail? error,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (devicesAttributed != null) result.devicesAttributed = devicesAttributed;
    if (error != null) result.error = error;
    return result;
  }

  PairingModeEnded._();

  factory PairingModeEnded.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingModeEnded.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingModeEnded',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'devicesAttributed', $pb.PbFieldType.OU3)
    ..aOM<$5.PairingErrorDetail>(3, _omitFieldNames ? '' : 'error',
        subBuilder: $5.PairingErrorDetail.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingModeEnded clone() => PairingModeEnded()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingModeEnded copyWith(void Function(PairingModeEnded) updates) =>
      super.copyWith((message) => updates(message as PairingModeEnded))
          as PairingModeEnded;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingModeEnded create() => PairingModeEnded._();
  @$core.override
  PairingModeEnded createEmptyInstance() => create();
  static $pb.PbList<PairingModeEnded> createRepeated() =>
      $pb.PbList<PairingModeEnded>();
  @$core.pragma('dart2js:noInline')
  static PairingModeEnded getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingModeEnded>(create);
  static PairingModeEnded? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// How many arrivals this connector attributed to the request. The gateway can count the
  /// announcements it received, but only the connector knows it has stopped.
  @$pb.TagNumber(2)
  $core.int get devicesAttributed => $_getIZ(1);
  @$pb.TagNumber(2)
  set devicesAttributed($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDevicesAttributed() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevicesAttributed() => $_clearField(2);

  /// Why it produced fewer than asked for, absent when it produced them all. DEVICE_UNUSABLE
  /// and WRONG_DEVICE are reported here and should name the device in the message, since that
  /// is the only place a user learns which device is now sitting on their hub.
  @$pb.TagNumber(3)
  $5.PairingErrorDetail get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($5.PairingErrorDetail value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.PairingErrorDetail ensureError() => $_ensure(2);
}

enum SessionRequest_Payload {
  handshake,
  propertyUpdate,
  deviceAnnounced,
  deviceRemoved,
  commandResult,
  heartbeat,
  deviceEvents,
  pairingModeResult,
  pairingModeEnded,
  linkResult,
  linksReported,
  notSet
}

class SessionRequest extends $pb.GeneratedMessage {
  factory SessionRequest({
    $core.String? messageId,
    $3.Timestamp? sentAt,
    ConnectorHandshake? handshake,
    $6.PropertyUpdateBatch? propertyUpdate,
    DeviceAnnouncement? deviceAnnounced,
    DeviceRemoval? deviceRemoved,
    ConnectorCommandResult? commandResult,
    HeartBeat? heartbeat,
    $7.DeviceEventBatch? deviceEvents,
    PairingModeResult? pairingModeResult,
    PairingModeEnded? pairingModeEnded,
    LinkResult? linkResult,
    LinksReported? linksReported,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshake != null) result.handshake = handshake;
    if (propertyUpdate != null) result.propertyUpdate = propertyUpdate;
    if (deviceAnnounced != null) result.deviceAnnounced = deviceAnnounced;
    if (deviceRemoved != null) result.deviceRemoved = deviceRemoved;
    if (commandResult != null) result.commandResult = commandResult;
    if (heartbeat != null) result.heartbeat = heartbeat;
    if (deviceEvents != null) result.deviceEvents = deviceEvents;
    if (pairingModeResult != null) result.pairingModeResult = pairingModeResult;
    if (pairingModeEnded != null) result.pairingModeEnded = pairingModeEnded;
    if (linkResult != null) result.linkResult = linkResult;
    if (linksReported != null) result.linksReported = linksReported;
    return result;
  }

  SessionRequest._();

  factory SessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SessionRequest_Payload>
      _SessionRequest_PayloadByTag = {
    3: SessionRequest_Payload.handshake,
    4: SessionRequest_Payload.propertyUpdate,
    5: SessionRequest_Payload.deviceAnnounced,
    6: SessionRequest_Payload.deviceRemoved,
    7: SessionRequest_Payload.commandResult,
    8: SessionRequest_Payload.heartbeat,
    9: SessionRequest_Payload.deviceEvents,
    10: SessionRequest_Payload.pairingModeResult,
    11: SessionRequest_Payload.pairingModeEnded,
    12: SessionRequest_Payload.linkResult,
    13: SessionRequest_Payload.linksReported,
    0: SessionRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SessionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $3.Timestamp.create)
    ..aOM<ConnectorHandshake>(3, _omitFieldNames ? '' : 'handshake',
        subBuilder: ConnectorHandshake.create)
    ..aOM<$6.PropertyUpdateBatch>(4, _omitFieldNames ? '' : 'propertyUpdate',
        subBuilder: $6.PropertyUpdateBatch.create)
    ..aOM<DeviceAnnouncement>(5, _omitFieldNames ? '' : 'deviceAnnounced',
        subBuilder: DeviceAnnouncement.create)
    ..aOM<DeviceRemoval>(6, _omitFieldNames ? '' : 'deviceRemoved',
        subBuilder: DeviceRemoval.create)
    ..aOM<ConnectorCommandResult>(7, _omitFieldNames ? '' : 'commandResult',
        subBuilder: ConnectorCommandResult.create)
    ..aOM<HeartBeat>(8, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: HeartBeat.create)
    ..aOM<$7.DeviceEventBatch>(9, _omitFieldNames ? '' : 'deviceEvents',
        subBuilder: $7.DeviceEventBatch.create)
    ..aOM<PairingModeResult>(10, _omitFieldNames ? '' : 'pairingModeResult',
        subBuilder: PairingModeResult.create)
    ..aOM<PairingModeEnded>(11, _omitFieldNames ? '' : 'pairingModeEnded',
        subBuilder: PairingModeEnded.create)
    ..aOM<LinkResult>(12, _omitFieldNames ? '' : 'linkResult',
        subBuilder: LinkResult.create)
    ..aOM<LinksReported>(13, _omitFieldNames ? '' : 'linksReported',
        subBuilder: LinksReported.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionRequest clone() => SessionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionRequest copyWith(void Function(SessionRequest) updates) =>
      super.copyWith((message) => updates(message as SessionRequest))
          as SessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionRequest create() => SessionRequest._();
  @$core.override
  SessionRequest createEmptyInstance() => create();
  static $pb.PbList<SessionRequest> createRepeated() =>
      $pb.PbList<SessionRequest>();
  @$core.pragma('dart2js:noInline')
  static SessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionRequest>(create);
  static SessionRequest? _defaultInstance;

  SessionRequest_Payload whichPayload() =>
      _SessionRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($3.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  ConnectorHandshake get handshake => $_getN(2);
  @$pb.TagNumber(3)
  set handshake(ConnectorHandshake value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHandshake() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshake() => $_clearField(3);
  @$pb.TagNumber(3)
  ConnectorHandshake ensureHandshake() => $_ensure(2);

  @$pb.TagNumber(4)
  $6.PropertyUpdateBatch get propertyUpdate => $_getN(3);
  @$pb.TagNumber(4)
  set propertyUpdate($6.PropertyUpdateBatch value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPropertyUpdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertyUpdate() => $_clearField(4);
  @$pb.TagNumber(4)
  $6.PropertyUpdateBatch ensurePropertyUpdate() => $_ensure(3);

  @$pb.TagNumber(5)
  DeviceAnnouncement get deviceAnnounced => $_getN(4);
  @$pb.TagNumber(5)
  set deviceAnnounced(DeviceAnnouncement value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDeviceAnnounced() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeviceAnnounced() => $_clearField(5);
  @$pb.TagNumber(5)
  DeviceAnnouncement ensureDeviceAnnounced() => $_ensure(4);

  @$pb.TagNumber(6)
  DeviceRemoval get deviceRemoved => $_getN(5);
  @$pb.TagNumber(6)
  set deviceRemoved(DeviceRemoval value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDeviceRemoved() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceRemoved() => $_clearField(6);
  @$pb.TagNumber(6)
  DeviceRemoval ensureDeviceRemoved() => $_ensure(5);

  @$pb.TagNumber(7)
  ConnectorCommandResult get commandResult => $_getN(6);
  @$pb.TagNumber(7)
  set commandResult(ConnectorCommandResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCommandResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearCommandResult() => $_clearField(7);
  @$pb.TagNumber(7)
  ConnectorCommandResult ensureCommandResult() => $_ensure(6);

  @$pb.TagNumber(8)
  HeartBeat get heartbeat => $_getN(7);
  @$pb.TagNumber(8)
  set heartbeat(HeartBeat value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHeartbeat() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeartbeat() => $_clearField(8);
  @$pb.TagNumber(8)
  HeartBeat ensureHeartbeat() => $_ensure(7);

  @$pb.TagNumber(9)
  $7.DeviceEventBatch get deviceEvents => $_getN(8);
  @$pb.TagNumber(9)
  set deviceEvents($7.DeviceEventBatch value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDeviceEvents() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeviceEvents() => $_clearField(9);
  @$pb.TagNumber(9)
  $7.DeviceEventBatch ensureDeviceEvents() => $_ensure(8);

  @$pb.TagNumber(10)
  PairingModeResult get pairingModeResult => $_getN(9);
  @$pb.TagNumber(10)
  set pairingModeResult(PairingModeResult value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasPairingModeResult() => $_has(9);
  @$pb.TagNumber(10)
  void clearPairingModeResult() => $_clearField(10);
  @$pb.TagNumber(10)
  PairingModeResult ensurePairingModeResult() => $_ensure(9);

  @$pb.TagNumber(11)
  PairingModeEnded get pairingModeEnded => $_getN(10);
  @$pb.TagNumber(11)
  set pairingModeEnded(PairingModeEnded value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasPairingModeEnded() => $_has(10);
  @$pb.TagNumber(11)
  void clearPairingModeEnded() => $_clearField(11);
  @$pb.TagNumber(11)
  PairingModeEnded ensurePairingModeEnded() => $_ensure(10);

  @$pb.TagNumber(12)
  LinkResult get linkResult => $_getN(11);
  @$pb.TagNumber(12)
  set linkResult(LinkResult value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasLinkResult() => $_has(11);
  @$pb.TagNumber(12)
  void clearLinkResult() => $_clearField(12);
  @$pb.TagNumber(12)
  LinkResult ensureLinkResult() => $_ensure(11);

  @$pb.TagNumber(13)
  LinksReported get linksReported => $_getN(12);
  @$pb.TagNumber(13)
  set linksReported(LinksReported value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasLinksReported() => $_has(12);
  @$pb.TagNumber(13)
  void clearLinksReported() => $_clearField(13);
  @$pb.TagNumber(13)
  LinksReported ensureLinksReported() => $_ensure(12);
}

enum SessionResponse_Payload {
  handshakeAck,
  subscribe,
  unsubscribe,
  error,
  executeCommand,
  executeAttributeWrite,
  enterPairingMode,
  createLink,
  removeLink,
  listLinks,
  notSet
}

class SessionResponse extends $pb.GeneratedMessage {
  factory SessionResponse({
    $core.String? messageId,
    $3.Timestamp? sentAt,
    HandshakeAck? handshakeAck,
    SubscribeDevice? subscribe,
    UnsubscribeDevice? unsubscribe,
    GatewayError? error,
    $4.DeviceCommand? executeCommand,
    $4.AttributeWriteRequest? executeAttributeWrite,
    EnterPairingMode? enterPairingMode,
    CreateLink? createLink,
    RemoveLink? removeLink,
    ListLinks? listLinks,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshakeAck != null) result.handshakeAck = handshakeAck;
    if (subscribe != null) result.subscribe = subscribe;
    if (unsubscribe != null) result.unsubscribe = unsubscribe;
    if (error != null) result.error = error;
    if (executeCommand != null) result.executeCommand = executeCommand;
    if (executeAttributeWrite != null)
      result.executeAttributeWrite = executeAttributeWrite;
    if (enterPairingMode != null) result.enterPairingMode = enterPairingMode;
    if (createLink != null) result.createLink = createLink;
    if (removeLink != null) result.removeLink = removeLink;
    if (listLinks != null) result.listLinks = listLinks;
    return result;
  }

  SessionResponse._();

  factory SessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SessionResponse_Payload>
      _SessionResponse_PayloadByTag = {
    3: SessionResponse_Payload.handshakeAck,
    5: SessionResponse_Payload.subscribe,
    6: SessionResponse_Payload.unsubscribe,
    7: SessionResponse_Payload.error,
    8: SessionResponse_Payload.executeCommand,
    9: SessionResponse_Payload.executeAttributeWrite,
    10: SessionResponse_Payload.enterPairingMode,
    11: SessionResponse_Payload.createLink,
    12: SessionResponse_Payload.removeLink,
    13: SessionResponse_Payload.listLinks,
    0: SessionResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SessionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 5, 6, 7, 8, 9, 10, 11, 12, 13])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $3.Timestamp.create)
    ..aOM<HandshakeAck>(3, _omitFieldNames ? '' : 'handshakeAck',
        subBuilder: HandshakeAck.create)
    ..aOM<SubscribeDevice>(5, _omitFieldNames ? '' : 'subscribe',
        subBuilder: SubscribeDevice.create)
    ..aOM<UnsubscribeDevice>(6, _omitFieldNames ? '' : 'unsubscribe',
        subBuilder: UnsubscribeDevice.create)
    ..aOM<GatewayError>(7, _omitFieldNames ? '' : 'error',
        subBuilder: GatewayError.create)
    ..aOM<$4.DeviceCommand>(8, _omitFieldNames ? '' : 'executeCommand',
        subBuilder: $4.DeviceCommand.create)
    ..aOM<$4.AttributeWriteRequest>(
        9, _omitFieldNames ? '' : 'executeAttributeWrite',
        subBuilder: $4.AttributeWriteRequest.create)
    ..aOM<EnterPairingMode>(10, _omitFieldNames ? '' : 'enterPairingMode',
        subBuilder: EnterPairingMode.create)
    ..aOM<CreateLink>(11, _omitFieldNames ? '' : 'createLink',
        subBuilder: CreateLink.create)
    ..aOM<RemoveLink>(12, _omitFieldNames ? '' : 'removeLink',
        subBuilder: RemoveLink.create)
    ..aOM<ListLinks>(13, _omitFieldNames ? '' : 'listLinks',
        subBuilder: ListLinks.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionResponse clone() => SessionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionResponse copyWith(void Function(SessionResponse) updates) =>
      super.copyWith((message) => updates(message as SessionResponse))
          as SessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionResponse create() => SessionResponse._();
  @$core.override
  SessionResponse createEmptyInstance() => create();
  static $pb.PbList<SessionResponse> createRepeated() =>
      $pb.PbList<SessionResponse>();
  @$core.pragma('dart2js:noInline')
  static SessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionResponse>(create);
  static SessionResponse? _defaultInstance;

  SessionResponse_Payload whichPayload() =>
      _SessionResponse_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($3.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  HandshakeAck get handshakeAck => $_getN(2);
  @$pb.TagNumber(3)
  set handshakeAck(HandshakeAck value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHandshakeAck() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshakeAck() => $_clearField(3);
  @$pb.TagNumber(3)
  HandshakeAck ensureHandshakeAck() => $_ensure(2);

  @$pb.TagNumber(5)
  SubscribeDevice get subscribe => $_getN(3);
  @$pb.TagNumber(5)
  set subscribe(SubscribeDevice value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSubscribe() => $_has(3);
  @$pb.TagNumber(5)
  void clearSubscribe() => $_clearField(5);
  @$pb.TagNumber(5)
  SubscribeDevice ensureSubscribe() => $_ensure(3);

  @$pb.TagNumber(6)
  UnsubscribeDevice get unsubscribe => $_getN(4);
  @$pb.TagNumber(6)
  set unsubscribe(UnsubscribeDevice value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasUnsubscribe() => $_has(4);
  @$pb.TagNumber(6)
  void clearUnsubscribe() => $_clearField(6);
  @$pb.TagNumber(6)
  UnsubscribeDevice ensureUnsubscribe() => $_ensure(4);

  @$pb.TagNumber(7)
  GatewayError get error => $_getN(5);
  @$pb.TagNumber(7)
  set error(GatewayError value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(7)
  void clearError() => $_clearField(7);
  @$pb.TagNumber(7)
  GatewayError ensureError() => $_ensure(5);

  @$pb.TagNumber(8)
  $4.DeviceCommand get executeCommand => $_getN(6);
  @$pb.TagNumber(8)
  set executeCommand($4.DeviceCommand value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasExecuteCommand() => $_has(6);
  @$pb.TagNumber(8)
  void clearExecuteCommand() => $_clearField(8);
  @$pb.TagNumber(8)
  $4.DeviceCommand ensureExecuteCommand() => $_ensure(6);

  /// The connector-leg half of PERMISSION_ACTION_WRITE. A sibling case rather than another
  /// meaning overloaded onto execute_command, which is the mistake this replaces.
  @$pb.TagNumber(9)
  $4.AttributeWriteRequest get executeAttributeWrite => $_getN(7);
  @$pb.TagNumber(9)
  set executeAttributeWrite($4.AttributeWriteRequest value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExecuteAttributeWrite() => $_has(7);
  @$pb.TagNumber(9)
  void clearExecuteAttributeWrite() => $_clearField(9);
  @$pb.TagNumber(9)
  $4.AttributeWriteRequest ensureExecuteAttributeWrite() => $_ensure(7);

  /// The connector-leg half of the pairing flow. See EnterPairingMode.
  @$pb.TagNumber(10)
  EnterPairingMode get enterPairingMode => $_getN(8);
  @$pb.TagNumber(10)
  set enterPairingMode(EnterPairingMode value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasEnterPairingMode() => $_has(8);
  @$pb.TagNumber(10)
  void clearEnterPairingMode() => $_clearField(10);
  @$pb.TagNumber(10)
  EnterPairingMode ensureEnterPairingMode() => $_ensure(8);

  /// The link operations. Separate cases rather than one with a verb, so a
  /// connector that models none of them fails to match rather than having to
  /// decode a request it cannot serve.
  @$pb.TagNumber(11)
  CreateLink get createLink => $_getN(9);
  @$pb.TagNumber(11)
  set createLink(CreateLink value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCreateLink() => $_has(9);
  @$pb.TagNumber(11)
  void clearCreateLink() => $_clearField(11);
  @$pb.TagNumber(11)
  CreateLink ensureCreateLink() => $_ensure(9);

  @$pb.TagNumber(12)
  RemoveLink get removeLink => $_getN(10);
  @$pb.TagNumber(12)
  set removeLink(RemoveLink value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasRemoveLink() => $_has(10);
  @$pb.TagNumber(12)
  void clearRemoveLink() => $_clearField(12);
  @$pb.TagNumber(12)
  RemoveLink ensureRemoveLink() => $_ensure(10);

  @$pb.TagNumber(13)
  ListLinks get listLinks => $_getN(11);
  @$pb.TagNumber(13)
  set listLinks(ListLinks value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasListLinks() => $_has(11);
  @$pb.TagNumber(13)
  void clearListLinks() => $_clearField(13);
  @$pb.TagNumber(13)
  ListLinks ensureListLinks() => $_ensure(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
