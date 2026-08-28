// This is a generated file - do not edit.
//
// Generated from kusinta/iot/common/v1/pairing.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'pairing.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'pairing.pbenum.dart';

/// A pairing failure and what can be said about it, the pairing counterpart of CommandError.
///
/// The message matters more here than elsewhere: DEVICE_UNUSABLE is the code a user is most
/// likely to see and least able to act on, and naming the device that joined is the whole
/// difference between "something went wrong" and "this hub does not support that model yet".
class PairingErrorDetail extends $pb.GeneratedMessage {
  factory PairingErrorDetail({
    PairingError? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  PairingErrorDetail._();

  factory PairingErrorDetail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingErrorDetail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingErrorDetail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.common.v1'),
      createEmptyInstance: create)
    ..e<PairingError>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE,
        defaultOrMaker: PairingError.PAIRING_ERROR_UNSPECIFIED,
        valueOf: PairingError.valueOf,
        enumValues: PairingError.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingErrorDetail clone() => PairingErrorDetail()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingErrorDetail copyWith(void Function(PairingErrorDetail) updates) =>
      super.copyWith((message) => updates(message as PairingErrorDetail))
          as PairingErrorDetail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingErrorDetail create() => PairingErrorDetail._();
  @$core.override
  PairingErrorDetail createEmptyInstance() => create();
  static $pb.PbList<PairingErrorDetail> createRepeated() =>
      $pb.PbList<PairingErrorDetail>();
  @$core.pragma('dart2js:noInline')
  static PairingErrorDetail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingErrorDetail>(create);
  static PairingErrorDetail? _defaultInstance;

  @$pb.TagNumber(1)
  PairingError get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(PairingError value) => $_setField(1, value);
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
}

/// How long a hub accepts new devices, and which it will take.
///
/// One message on both legs rather than the same three fields declared twice: the clamp rule
/// and the meaning of a hint are the sort of thing that is written once and then diverges,
/// and the two copies had already begun to.
class PairingWindow extends $pb.GeneratedMessage {
  factory PairingWindow({
    $core.int? durationSeconds,
    $core.String? deviceHint,
    $core.int? maxDevices,
  }) {
    final result = create();
    if (durationSeconds != null) result.durationSeconds = durationSeconds;
    if (deviceHint != null) result.deviceHint = deviceHint;
    if (maxDevices != null) result.maxDevices = maxDevices;
    return result;
  }

  PairingWindow._();

  factory PairingWindow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingWindow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingWindow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.common.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'durationSeconds', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'deviceHint')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxDevices', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingWindow clone() => PairingWindow()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingWindow copyWith(void Function(PairingWindow) updates) =>
      super.copyWith((message) => updates(message as PairingWindow))
          as PairingWindow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingWindow create() => PairingWindow._();
  @$core.override
  PairingWindow createEmptyInstance() => create();
  static $pb.PbList<PairingWindow> createRepeated() =>
      $pb.PbList<PairingWindow>();
  @$core.pragma('dart2js:noInline')
  static PairingWindow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingWindow>(create);
  static PairingWindow? _defaultInstance;

  /// How long to accept arrivals. Whoever forwards this clamps it, and so does whoever acts
  /// on it: a window is an interval during which anything nearby can join, so its length is a
  /// security parameter rather than purely the caller's to choose.
  ///
  /// Absent means "no preference, use the default" — distinct from a caller asking for zero.
  @$pb.TagNumber(1)
  $core.int get durationSeconds => $_getIZ(0);
  @$pb.TagNumber(1)
  set durationSeconds($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDurationSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationSeconds() => $_clearField(1);

  /// The identifier printed on the device being paired, where the technology has one that is
  /// legible and the person is holding it. Free-form: what is printed differs per technology,
  /// and nothing between the app and the hub interprets it.
  ///
  /// Setting it changes the mechanism, not just the accuracy. The hub is restricted to that
  /// device and the arrival is verified against this value, so an arrival is attributed on
  /// identity. Leaving it empty opens the window to anything nearby, and attribution falls
  /// back to the arrival being the only one — which is why one window may be open at a time.
  ///
  /// Verification is not optional where this is set. A restriction can silently fail to take,
  /// and an arrival attributed on a restriction that did not hold is the wrong device in
  /// someone's home.
  @$pb.TagNumber(2)
  $core.String get deviceHint => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceHint($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceHint() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceHint() => $_clearField(2);

  /// How many arrivals this one window may attribute. Absent means one.
  ///
  /// A batch suits commissioning, where devices are paired in a row and become a building's
  /// rather than any person's. It does not suit a caller whose pairing mints personal
  /// ownership.
  ///
  /// A hint and a batch cannot be combined, and that is a contradiction rather than a
  /// limitation: device_hint names one device, so a window restricted to it can never produce
  /// a second arrival to attribute.
  @$pb.TagNumber(3)
  $core.int get maxDevices => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxDevices($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxDevices() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxDevices() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
