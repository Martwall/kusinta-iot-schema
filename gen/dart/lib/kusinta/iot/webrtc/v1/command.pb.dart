// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/command.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $1;

import '../../identity/v1/identity.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Maps to Matter SetpointRaiseLower command (Thermostat cluster 0x0201).
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
    ..aI(1, _omitFieldNames ? '' : 'mode', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'amount', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatSetpointParams clone() => deepCopy();
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
    ..aI(1, _omitFieldNames ? '' : 'level', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'transitionTime',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LevelControlParams clone() => deepCopy();
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
  OnOffParams clone() => deepCopy();
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
    ..aI(1, _omitFieldNames ? '' : 'liftPercent100ths',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WindowCoveringLiftParams clone() => deepCopy();
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
    ..aI(1, _omitFieldNames ? '' : 'lockState', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'pinCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoorLockParams clone() => deepCopy();
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
  rawTlv,
  notSet
}

class DeviceCommand extends $pb.GeneratedMessage {
  factory DeviceCommand({
    $core.String? commandId,
    $0.DeviceId? deviceId,
    $core.String? clusterIdHex,
    $core.String? commandName,
    ThermostatSetpointParams? thermostatSetpoint,
    LevelControlParams? levelControl,
    OnOffParams? onOff,
    WindowCoveringLiftParams? windowCoveringLift,
    DoorLockParams? doorLock,
    $core.List<$core.int>? rawTlv,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (deviceId != null) result.deviceId = deviceId;
    if (clusterIdHex != null) result.clusterIdHex = clusterIdHex;
    if (commandName != null) result.commandName = commandName;
    if (thermostatSetpoint != null)
      result.thermostatSetpoint = thermostatSetpoint;
    if (levelControl != null) result.levelControl = levelControl;
    if (onOff != null) result.onOff = onOff;
    if (windowCoveringLift != null)
      result.windowCoveringLift = windowCoveringLift;
    if (doorLock != null) result.doorLock = doorLock;
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
    99: DeviceCommand_Parameters.rawTlv,
    0: DeviceCommand_Parameters.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceCommand',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [5, 6, 7, 8, 9, 99])
    ..aOS(1, _omitFieldNames ? '' : 'commandId')
    ..aOM<$0.DeviceId>(2, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'clusterIdHex')
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
    ..a<$core.List<$core.int>>(
        99, _omitFieldNames ? '' : 'rawTlv', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceCommand clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static DeviceCommand getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceCommand>(create);
  static DeviceCommand? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(99)
  DeviceCommand_Parameters whichParameters() =>
      _DeviceCommand_ParametersByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(99)
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

  @$pb.TagNumber(3)
  $core.String get clusterIdHex => $_getSZ(2);
  @$pb.TagNumber(3)
  set clusterIdHex($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClusterIdHex() => $_has(2);
  @$pb.TagNumber(3)
  void clearClusterIdHex() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get commandName => $_getSZ(3);
  @$pb.TagNumber(4)
  set commandName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCommandName() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommandName() => $_clearField(4);

  @$pb.TagNumber(5)
  ThermostatSetpointParams get thermostatSetpoint => $_getN(4);
  @$pb.TagNumber(5)
  set thermostatSetpoint(ThermostatSetpointParams value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasThermostatSetpoint() => $_has(4);
  @$pb.TagNumber(5)
  void clearThermostatSetpoint() => $_clearField(5);
  @$pb.TagNumber(5)
  ThermostatSetpointParams ensureThermostatSetpoint() => $_ensure(4);

  @$pb.TagNumber(6)
  LevelControlParams get levelControl => $_getN(5);
  @$pb.TagNumber(6)
  set levelControl(LevelControlParams value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLevelControl() => $_has(5);
  @$pb.TagNumber(6)
  void clearLevelControl() => $_clearField(6);
  @$pb.TagNumber(6)
  LevelControlParams ensureLevelControl() => $_ensure(5);

  @$pb.TagNumber(7)
  OnOffParams get onOff => $_getN(6);
  @$pb.TagNumber(7)
  set onOff(OnOffParams value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasOnOff() => $_has(6);
  @$pb.TagNumber(7)
  void clearOnOff() => $_clearField(7);
  @$pb.TagNumber(7)
  OnOffParams ensureOnOff() => $_ensure(6);

  @$pb.TagNumber(8)
  WindowCoveringLiftParams get windowCoveringLift => $_getN(7);
  @$pb.TagNumber(8)
  set windowCoveringLift(WindowCoveringLiftParams value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWindowCoveringLift() => $_has(7);
  @$pb.TagNumber(8)
  void clearWindowCoveringLift() => $_clearField(8);
  @$pb.TagNumber(8)
  WindowCoveringLiftParams ensureWindowCoveringLift() => $_ensure(7);

  @$pb.TagNumber(9)
  DoorLockParams get doorLock => $_getN(8);
  @$pb.TagNumber(9)
  set doorLock(DoorLockParams value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDoorLock() => $_has(8);
  @$pb.TagNumber(9)
  void clearDoorLock() => $_clearField(9);
  @$pb.TagNumber(9)
  DoorLockParams ensureDoorLock() => $_ensure(8);

  @$pb.TagNumber(99)
  $core.List<$core.int> get rawTlv => $_getN(9);
  @$pb.TagNumber(99)
  set rawTlv($core.List<$core.int> value) => $_setBytes(9, value);
  @$pb.TagNumber(99)
  $core.bool hasRawTlv() => $_has(9);
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
  CommandError clone() => deepCopy();
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

/// CommandResult travels gateway → Flutter app (GatewayMessage) and
/// connector → gateway (ConnectRequest via connector.proto import).
class CommandResult extends $pb.GeneratedMessage {
  factory CommandResult({
    $core.String? commandId,
    $core.bool? success,
    CommandError? error,
    $1.Timestamp? completedAt,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (success != null) result.success = success;
    if (error != null) result.error = error;
    if (completedAt != null) result.completedAt = completedAt;
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
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResult clone() => deepCopy();
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
