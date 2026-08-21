// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/command.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../identity/v1/identity.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Adjusts a setpoint by a delta. Maps to the Matter SetpointRaiseLower command
/// (Thermostat cluster 0x0201).
///
/// A delta needs a base, and only the producer holds one. On a battery-powered device
/// that wakes on a multi-minute cycle the producer often has no current base and MUST
/// refuse the command rather than guess at one — guessing moves a real radiator to a
/// temperature nobody asked for. Prefer ThermostatSetpointWriteParams where the caller
/// already knows the absolute value it wants; it has no such failure mode.
class ThermostatSetpointParams extends $pb.GeneratedMessage {
  factory ThermostatSetpointParams({
    $core.int? mode,
    $core.int? amount,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    if (amount != null) result.amount = amount;
    return result;
  }

  ThermostatSetpointParams._();

  factory ThermostatSetpointParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThermostatSetpointParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThermostatSetpointParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatSetpointParams clone() =>
      ThermostatSetpointParams()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatSetpointParams copyWith(
          void Function(ThermostatSetpointParams) updates) =>
      super.copyWith((message) => updates(message as ThermostatSetpointParams))
          as ThermostatSetpointParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThermostatSetpointParams create() => ThermostatSetpointParams._();
  @$core.override
  ThermostatSetpointParams createEmptyInstance() => create();
  static $pb.PbList<ThermostatSetpointParams> createRepeated() =>
      $pb.PbList<ThermostatSetpointParams>();
  @$core.pragma('dart2js:noInline')
  static ThermostatSetpointParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThermostatSetpointParams>(create);
  static ThermostatSetpointParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mode => $_getIZ(0);
  @$pb.TagNumber(1)
  set mode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get amount => $_getIZ(1);
  @$pb.TagNumber(2)
  set amount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);
}

/// Writes a setpoint to an absolute value. Maps to a Matter write of Thermostat (0x0201)
/// OccupiedHeatingSetpoint / OccupiedCoolingSetpoint, NOT to SetpointRaiseLower.
///
/// Deliberately a separate message from ThermostatSetpointParams rather than an optional
/// field on it: a delta and an absolute are different commands with different failure
/// modes, and one message carrying both would let a producer read the wrong meaning out
/// of bytes that parse cleanly.
///
/// This is the form battery-powered devices are designed to be driven with. An upstream
/// system accepts an absolute value whether or not the device is awake and queues it for
/// the next wake-up, so the command does not depend on a base nobody holds.
class ThermostatSetpointWriteParams extends $pb.GeneratedMessage {
  factory ThermostatSetpointWriteParams({
    $core.int? mode,
    $core.int? setpointCentidegrees,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    if (setpointCentidegrees != null)
      result.setpointCentidegrees = setpointCentidegrees;
    return result;
  }

  ThermostatSetpointWriteParams._();

  factory ThermostatSetpointWriteParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThermostatSetpointWriteParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThermostatSetpointWriteParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'setpointCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatSetpointWriteParams clone() =>
      ThermostatSetpointWriteParams()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatSetpointWriteParams copyWith(
          void Function(ThermostatSetpointWriteParams) updates) =>
      super.copyWith(
              (message) => updates(message as ThermostatSetpointWriteParams))
          as ThermostatSetpointWriteParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThermostatSetpointWriteParams create() =>
      ThermostatSetpointWriteParams._();
  @$core.override
  ThermostatSetpointWriteParams createEmptyInstance() => create();
  static $pb.PbList<ThermostatSetpointWriteParams> createRepeated() =>
      $pb.PbList<ThermostatSetpointWriteParams>();
  @$core.pragma('dart2js:noInline')
  static ThermostatSetpointWriteParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThermostatSetpointWriteParams>(create);
  static ThermostatSetpointWriteParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mode => $_getIZ(0);
  @$pb.TagNumber(1)
  set mode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get setpointCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set setpointCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSetpointCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetpointCentidegrees() => $_clearField(2);
}

/// Maps to Matter MoveToLevel command (Level Control cluster 0x0008).
class LevelControlParams extends $pb.GeneratedMessage {
  factory LevelControlParams({
    $core.int? level,
    $core.int? transitionTime,
  }) {
    final result = create();
    if (level != null) result.level = level;
    if (transitionTime != null) result.transitionTime = transitionTime;
    return result;
  }

  LevelControlParams._();

  factory LevelControlParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LevelControlParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LevelControlParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'transitionTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LevelControlParams clone() => LevelControlParams()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LevelControlParams copyWith(void Function(LevelControlParams) updates) =>
      super.copyWith((message) => updates(message as LevelControlParams))
          as LevelControlParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LevelControlParams create() => LevelControlParams._();
  @$core.override
  LevelControlParams createEmptyInstance() => create();
  static $pb.PbList<LevelControlParams> createRepeated() =>
      $pb.PbList<LevelControlParams>();
  @$core.pragma('dart2js:noInline')
  static LevelControlParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LevelControlParams>(create);
  static LevelControlParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get level => $_getIZ(0);
  @$pb.TagNumber(1)
  set level($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get transitionTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set transitionTime($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTransitionTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransitionTime() => $_clearField(2);
}

/// Maps to Matter On and Off commands (On/Off cluster 0x0006).
class OnOffParams extends $pb.GeneratedMessage {
  factory OnOffParams({
    $core.bool? on,
    $core.bool? toggle,
  }) {
    final result = create();
    if (on != null) result.on = on;
    if (toggle != null) result.toggle = toggle;
    return result;
  }

  OnOffParams._();

  factory OnOffParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OnOffParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OnOffParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'on')
    ..aOB(2, _omitFieldNames ? '' : 'toggle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnOffParams clone() => OnOffParams()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnOffParams copyWith(void Function(OnOffParams) updates) =>
      super.copyWith((message) => updates(message as OnOffParams))
          as OnOffParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnOffParams create() => OnOffParams._();
  @$core.override
  OnOffParams createEmptyInstance() => create();
  static $pb.PbList<OnOffParams> createRepeated() => $pb.PbList<OnOffParams>();
  @$core.pragma('dart2js:noInline')
  static OnOffParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OnOffParams>(create);
  static OnOffParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get on => $_getBF(0);
  @$pb.TagNumber(1)
  set on($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearOn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get toggle => $_getBF(1);
  @$pb.TagNumber(2)
  set toggle($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToggle() => $_has(1);
  @$pb.TagNumber(2)
  void clearToggle() => $_clearField(2);
}

/// Maps to Matter GoToLiftPercentage command (Window Covering cluster 0x0102).
class WindowCoveringLiftParams extends $pb.GeneratedMessage {
  factory WindowCoveringLiftParams({
    $core.int? liftPercent100ths,
  }) {
    final result = create();
    if (liftPercent100ths != null) result.liftPercent100ths = liftPercent100ths;
    return result;
  }

  WindowCoveringLiftParams._();

  factory WindowCoveringLiftParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WindowCoveringLiftParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WindowCoveringLiftParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'liftPercent100ths', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WindowCoveringLiftParams clone() =>
      WindowCoveringLiftParams()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WindowCoveringLiftParams copyWith(
          void Function(WindowCoveringLiftParams) updates) =>
      super.copyWith((message) => updates(message as WindowCoveringLiftParams))
          as WindowCoveringLiftParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WindowCoveringLiftParams create() => WindowCoveringLiftParams._();
  @$core.override
  WindowCoveringLiftParams createEmptyInstance() => create();
  static $pb.PbList<WindowCoveringLiftParams> createRepeated() =>
      $pb.PbList<WindowCoveringLiftParams>();
  @$core.pragma('dart2js:noInline')
  static WindowCoveringLiftParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WindowCoveringLiftParams>(create);
  static WindowCoveringLiftParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get liftPercent100ths => $_getIZ(0);
  @$pb.TagNumber(1)
  set liftPercent100ths($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLiftPercent100ths() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiftPercent100ths() => $_clearField(1);
}

/// Maps to Matter LockDoor/UnlockDoor commands (Door Lock cluster 0x0101).
class DoorLockParams extends $pb.GeneratedMessage {
  factory DoorLockParams({
    $core.int? lockState,
    $core.String? pinCode,
  }) {
    final result = create();
    if (lockState != null) result.lockState = lockState;
    if (pinCode != null) result.pinCode = pinCode;
    return result;
  }

  DoorLockParams._();

  factory DoorLockParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoorLockParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoorLockParams',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'lockState', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'pinCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoorLockParams clone() => DoorLockParams()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoorLockParams copyWith(void Function(DoorLockParams) updates) =>
      super.copyWith((message) => updates(message as DoorLockParams))
          as DoorLockParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoorLockParams create() => DoorLockParams._();
  @$core.override
  DoorLockParams createEmptyInstance() => create();
  static $pb.PbList<DoorLockParams> createRepeated() =>
      $pb.PbList<DoorLockParams>();
  @$core.pragma('dart2js:noInline')
  static DoorLockParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoorLockParams>(create);
  static DoorLockParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get lockState => $_getIZ(0);
  @$pb.TagNumber(1)
  set lockState($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLockState() => $_has(0);
  @$pb.TagNumber(1)
  void clearLockState() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pinCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set pinCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPinCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearPinCode() => $_clearField(2);
}

enum DeviceCommand_Parameters {
  thermostatSetpoint,
  levelControl,
  onOff,
  windowCoveringLift,
  doorLock,
  thermostatSetpointWrite,
  rawTlv,
  notSet
}

class DeviceCommand extends $pb.GeneratedMessage {
  factory DeviceCommand({
    $core.String? commandId,
    $0.DeviceId? deviceId,
    $core.String? commandName,
    ThermostatSetpointParams? thermostatSetpoint,
    LevelControlParams? levelControl,
    OnOffParams? onOff,
    WindowCoveringLiftParams? windowCoveringLift,
    DoorLockParams? doorLock,
    ThermostatSetpointWriteParams? thermostatSetpointWrite,
    $core.int? endpointId,
    $core.int? clusterId,
    $core.List<$core.int>? rawTlv,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (deviceId != null) result.deviceId = deviceId;
    if (commandName != null) result.commandName = commandName;
    if (thermostatSetpoint != null)
      result.thermostatSetpoint = thermostatSetpoint;
    if (levelControl != null) result.levelControl = levelControl;
    if (onOff != null) result.onOff = onOff;
    if (windowCoveringLift != null)
      result.windowCoveringLift = windowCoveringLift;
    if (doorLock != null) result.doorLock = doorLock;
    if (thermostatSetpointWrite != null)
      result.thermostatSetpointWrite = thermostatSetpointWrite;
    if (endpointId != null) result.endpointId = endpointId;
    if (clusterId != null) result.clusterId = clusterId;
    if (rawTlv != null) result.rawTlv = rawTlv;
    return result;
  }

  DeviceCommand._();

  factory DeviceCommand.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceCommand.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DeviceCommand_Parameters>
      _DeviceCommand_ParametersByTag = {
    5: DeviceCommand_Parameters.thermostatSetpoint,
    6: DeviceCommand_Parameters.levelControl,
    7: DeviceCommand_Parameters.onOff,
    8: DeviceCommand_Parameters.windowCoveringLift,
    9: DeviceCommand_Parameters.doorLock,
    10: DeviceCommand_Parameters.thermostatSetpointWrite,
    99: DeviceCommand_Parameters.rawTlv,
    0: DeviceCommand_Parameters.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceCommand',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [5, 6, 7, 8, 9, 10, 99])
    ..aOS(1, _omitFieldNames ? '' : 'commandId')
    ..aOM<$0.DeviceId>(2, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOS(4, _omitFieldNames ? '' : 'commandName')
    ..aOM<ThermostatSetpointParams>(
        5, _omitFieldNames ? '' : 'thermostatSetpoint',
        subBuilder: ThermostatSetpointParams.create)
    ..aOM<LevelControlParams>(6, _omitFieldNames ? '' : 'levelControl',
        subBuilder: LevelControlParams.create)
    ..aOM<OnOffParams>(7, _omitFieldNames ? '' : 'onOff',
        subBuilder: OnOffParams.create)
    ..aOM<WindowCoveringLiftParams>(
        8, _omitFieldNames ? '' : 'windowCoveringLift',
        subBuilder: WindowCoveringLiftParams.create)
    ..aOM<DoorLockParams>(9, _omitFieldNames ? '' : 'doorLock',
        subBuilder: DoorLockParams.create)
    ..aOM<ThermostatSetpointWriteParams>(
        10, _omitFieldNames ? '' : 'thermostatSetpointWrite',
        subBuilder: ThermostatSetpointWriteParams.create)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        99, _omitFieldNames ? '' : 'rawTlv', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceCommand clone() => DeviceCommand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceCommand copyWith(void Function(DeviceCommand) updates) =>
      super.copyWith((message) => updates(message as DeviceCommand))
          as DeviceCommand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceCommand create() => DeviceCommand._();
  @$core.override
  DeviceCommand createEmptyInstance() => create();
  static $pb.PbList<DeviceCommand> createRepeated() =>
      $pb.PbList<DeviceCommand>();
  @$core.pragma('dart2js:noInline')
  static DeviceCommand getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceCommand>(create);
  static DeviceCommand? _defaultInstance;

  DeviceCommand_Parameters whichParameters() =>
      _DeviceCommand_ParametersByTag[$_whichOneof(0)]!;
  void clearParameters() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get commandId => $_getSZ(0);
  @$pb.TagNumber(1)
  set commandId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommandId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.DeviceId get deviceId => $_getN(1);
  @$pb.TagNumber(2)
  set deviceId($0.DeviceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.DeviceId ensureDeviceId() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.String get commandName => $_getSZ(2);
  @$pb.TagNumber(4)
  set commandName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasCommandName() => $_has(2);
  @$pb.TagNumber(4)
  void clearCommandName() => $_clearField(4);

  @$pb.TagNumber(5)
  ThermostatSetpointParams get thermostatSetpoint => $_getN(3);
  @$pb.TagNumber(5)
  set thermostatSetpoint(ThermostatSetpointParams value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasThermostatSetpoint() => $_has(3);
  @$pb.TagNumber(5)
  void clearThermostatSetpoint() => $_clearField(5);
  @$pb.TagNumber(5)
  ThermostatSetpointParams ensureThermostatSetpoint() => $_ensure(3);

  @$pb.TagNumber(6)
  LevelControlParams get levelControl => $_getN(4);
  @$pb.TagNumber(6)
  set levelControl(LevelControlParams value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLevelControl() => $_has(4);
  @$pb.TagNumber(6)
  void clearLevelControl() => $_clearField(6);
  @$pb.TagNumber(6)
  LevelControlParams ensureLevelControl() => $_ensure(4);

  @$pb.TagNumber(7)
  OnOffParams get onOff => $_getN(5);
  @$pb.TagNumber(7)
  set onOff(OnOffParams value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasOnOff() => $_has(5);
  @$pb.TagNumber(7)
  void clearOnOff() => $_clearField(7);
  @$pb.TagNumber(7)
  OnOffParams ensureOnOff() => $_ensure(5);

  @$pb.TagNumber(8)
  WindowCoveringLiftParams get windowCoveringLift => $_getN(6);
  @$pb.TagNumber(8)
  set windowCoveringLift(WindowCoveringLiftParams value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWindowCoveringLift() => $_has(6);
  @$pb.TagNumber(8)
  void clearWindowCoveringLift() => $_clearField(8);
  @$pb.TagNumber(8)
  WindowCoveringLiftParams ensureWindowCoveringLift() => $_ensure(6);

  @$pb.TagNumber(9)
  DoorLockParams get doorLock => $_getN(7);
  @$pb.TagNumber(9)
  set doorLock(DoorLockParams value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDoorLock() => $_has(7);
  @$pb.TagNumber(9)
  void clearDoorLock() => $_clearField(9);
  @$pb.TagNumber(9)
  DoorLockParams ensureDoorLock() => $_ensure(7);

  @$pb.TagNumber(10)
  ThermostatSetpointWriteParams get thermostatSetpointWrite => $_getN(8);
  @$pb.TagNumber(10)
  set thermostatSetpointWrite(ThermostatSetpointWriteParams value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasThermostatSetpointWrite() => $_has(8);
  @$pb.TagNumber(10)
  void clearThermostatSetpointWrite() => $_clearField(10);
  @$pb.TagNumber(10)
  ThermostatSetpointWriteParams ensureThermostatSetpointWrite() => $_ensure(8);

  /// Which endpoint of the device to command. Required: a device presents several
  /// endpoints and a command with no destination has no correct one — on a 4-channel
  /// actuator, picking any of them moves real hardware. Refuse an unaddressed command
  /// rather than guessing.
  ///
  /// No exemption for single-endpoint devices. A rule where the same message is valid or
  /// invalid depending on the shape of its target is a rule that works until a device
  /// grows an endpoint.
  @$pb.TagNumber(11)
  $core.int get endpointId => $_getIZ(9);
  @$pb.TagNumber(11)
  set endpointId($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(11)
  $core.bool hasEndpointId() => $_has(9);
  @$pb.TagNumber(11)
  void clearEndpointId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get clusterId => $_getIZ(10);
  @$pb.TagNumber(12)
  set clusterId($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(12)
  $core.bool hasClusterId() => $_has(10);
  @$pb.TagNumber(12)
  void clearClusterId() => $_clearField(12);

  @$pb.TagNumber(99)
  $core.List<$core.int> get rawTlv => $_getN(11);
  @$pb.TagNumber(99)
  set rawTlv($core.List<$core.int> value) => $_setBytes(11, value);
  @$pb.TagNumber(99)
  $core.bool hasRawTlv() => $_has(11);
  @$pb.TagNumber(99)
  void clearRawTlv() => $_clearField(99);
}

class CommandError extends $pb.GeneratedMessage {
  factory CommandError({
    $core.String? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  CommandError._();

  factory CommandError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommandError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommandError',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandError clone() => CommandError()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandError copyWith(void Function(CommandError) updates) =>
      super.copyWith((message) => updates(message as CommandError))
          as CommandError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandError create() => CommandError._();
  @$core.override
  CommandError createEmptyInstance() => create();
  static $pb.PbList<CommandError> createRepeated() =>
      $pb.PbList<CommandError>();
  @$core.pragma('dart2js:noInline')
  static CommandError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommandError>(create);
  static CommandError? _defaultInstance;

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
}

/// CommandResult travels gateway → app (GatewayMessage) and
/// connector → gateway (SessionRequest via connector.proto import).
///
/// success = true means the command was ACCEPTED, not that the device confirmed it. For
/// a battery-powered device that wakes on a multi-minute cycle, acceptance without
/// confirmation is the normal path, not an edge case: waiting for the device would fail
/// every write to a sleeping one.
class CommandResult extends $pb.GeneratedMessage {
  factory CommandResult({
    $core.String? commandId,
    $core.bool? success,
    CommandError? error,
    $1.Timestamp? completedAt,
    $1.Timestamp? settlesBy,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (success != null) result.success = success;
    if (error != null) result.error = error;
    if (completedAt != null) result.completedAt = completedAt;
    if (settlesBy != null) result.settlesBy = settlesBy;
    return result;
  }

  CommandResult._();

  factory CommandResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommandResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommandResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'commandId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOM<CommandError>(3, _omitFieldNames ? '' : 'error',
        subBuilder: CommandError.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'completedAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'settlesBy',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResult clone() => CommandResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResult copyWith(void Function(CommandResult) updates) =>
      super.copyWith((message) => updates(message as CommandResult))
          as CommandResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandResult create() => CommandResult._();
  @$core.override
  CommandResult createEmptyInstance() => create();
  static $pb.PbList<CommandResult> createRepeated() =>
      $pb.PbList<CommandResult>();
  @$core.pragma('dart2js:noInline')
  static CommandResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommandResult>(create);
  static CommandResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commandId => $_getSZ(0);
  @$pb.TagNumber(1)
  set commandId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommandId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(3)
  CommandError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(CommandError value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  CommandError ensureError() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get completedAt => $_getN(3);
  @$pb.TagNumber(4)
  set completedAt($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCompletedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompletedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCompletedAt() => $_ensure(3);

  /// When the producer's own optimistic window closes: by this time the value has either
  /// been confirmed by the device or restored to what it was, and either way the producer
  /// will have published a PropertyUpdate saying so.
  ///
  /// Set it when the producer applied the value optimistically and runs a rollback timer.
  /// It exists so a consumer can bound its wait without hardcoding a constant chasing a
  /// timer that lives in someone else's codebase and changes without notice.
  ///
  /// Absent means no claim — either the producer confirms synchronously, or it cannot
  /// state a bound. Absent is NOT "settles immediately".
  ///
  /// This bounds the wait; it does not label the values that arrive. Which update was the
  /// optimistic one is device.v1.PropertyUpdate.provenance.
  @$pb.TagNumber(5)
  $1.Timestamp get settlesBy => $_getN(4);
  @$pb.TagNumber(5)
  set settlesBy($1.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSettlesBy() => $_has(4);
  @$pb.TagNumber(5)
  void clearSettlesBy() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureSettlesBy() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
