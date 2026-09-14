// This is a generated file - do not edit.
//
// Generated from kusinta/iot/vendor/lorawan/v1/lorawan.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// What a LoRaWAN network server needs to admit a device, carried in the `lorawan`
/// arm of webrtc.v1.ProvisionDevice.credentials. A provisioning arm per technology,
/// not a flat set of fields shared across them, so the next technology to be
/// provisioned does not turn a message into a bag of optionals named after this one.
///
/// These are onboarding credentials, not device readings: this message is never an
/// Endpoint vendor extension and carries no vendor_extension option, unlike the
/// vendor.homematic.v1 property messages.
class LorawanProvisioning extends $pb.GeneratedMessage {
  factory LorawanProvisioning({
    $core.String? devEui,
    $core.String? appKey,
    $core.String? joinEui,
  }) {
    final result = create();
    if (devEui != null) result.devEui = devEui;
    if (appKey != null) result.appKey = appKey;
    if (joinEui != null) result.joinEui = joinEui;
    return result;
  }

  LorawanProvisioning._();

  factory LorawanProvisioning.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LorawanProvisioning.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LorawanProvisioning',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.lorawan.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'devEui')
    ..aOS(2, _omitFieldNames ? '' : 'appKey')
    ..aOS(3, _omitFieldNames ? '' : 'joinEui')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LorawanProvisioning clone() => LorawanProvisioning()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LorawanProvisioning copyWith(void Function(LorawanProvisioning) updates) =>
      super.copyWith((message) => updates(message as LorawanProvisioning))
          as LorawanProvisioning;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LorawanProvisioning create() => LorawanProvisioning._();
  @$core.override
  LorawanProvisioning createEmptyInstance() => create();
  static $pb.PbList<LorawanProvisioning> createRepeated() =>
      $pb.PbList<LorawanProvisioning>();
  @$core.pragma('dart2js:noInline')
  static LorawanProvisioning getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LorawanProvisioning>(create);
  static LorawanProvisioning? _defaultInstance;

  /// The device's globally unique identifier, sixteen hex characters as printed on
  /// the label. This is also what the device is claimed by — the connector derives
  /// the device id from it and reports it as DeviceDescriptor.serial_number — so a
  /// device can be claimed by its label before it has ever joined.
  @$pb.TagNumber(1)
  $core.String get devEui => $_getSZ(0);
  @$pb.TagNumber(1)
  set devEui($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDevEui() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevEui() => $_clearField(1);

  /// The application root key: the secret every session key is derived from, thirty-
  /// two hex characters. Not an identifier, and handled unlike every other field
  /// here — carried only over the authenticated app-to-gateway leg, held in the
  /// secret store where a key is generated or kept, never logged, never persisted
  /// beyond the write that registers the device, and never echoed back in any
  /// listing.
  ///
  /// It is on the wire at all because the first supported devices leave no choice:
  /// their key is fixed in the factory and printed on the label, so a network server
  /// cannot generate one and have the device adopt it. A device that can be
  /// reprogrammed with a server-generated key would leave this empty and have the
  /// registry mint it instead.
  @$pb.TagNumber(2)
  $core.String get appKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set appKey($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppKey() => $_clearField(2);

  /// The join identifier (JoinEUI/AppEUI), sixteen hex characters. Optional: many
  /// deployments accept the default a device ships with, and only a network server
  /// that pins it needs the value stated here.
  @$pb.TagNumber(3)
  $core.String get joinEui => $_getSZ(2);
  @$pb.TagNumber(3)
  set joinEui($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasJoinEui() => $_has(2);
  @$pb.TagNumber(3)
  void clearJoinEui() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
