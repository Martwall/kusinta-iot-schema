// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/permission_push.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../access/v1/acl.pb.dart' as $0;
import '../../identity/v1/identity.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Pushed to the Flutter app whenever the user's effective permissions change.
/// change_reason values: "DEVICE_ASSIGNED", "DEVICE_UNASSIGNED", "RESIDENT_CHANGED", "CONSTRAINT_UPDATED"
class LivePermissionUpdate extends $pb.GeneratedMessage {
  factory LivePermissionUpdate({
    $0.EffectivePermissions? newPermissions,
    $core.Iterable<$1.DeviceId>? addedDevices,
    $core.Iterable<$1.DeviceId>? removedDevices,
    $core.String? changeReason,
  }) {
    final result = create();
    if (newPermissions != null) result.newPermissions = newPermissions;
    if (addedDevices != null) result.addedDevices.addAll(addedDevices);
    if (removedDevices != null) result.removedDevices.addAll(removedDevices);
    if (changeReason != null) result.changeReason = changeReason;
    return result;
  }

  LivePermissionUpdate._();

  factory LivePermissionUpdate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LivePermissionUpdate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LivePermissionUpdate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.EffectivePermissions>(1, _omitFieldNames ? '' : 'newPermissions',
        subBuilder: $0.EffectivePermissions.create)
    ..pPM<$1.DeviceId>(2, _omitFieldNames ? '' : 'addedDevices',
        subBuilder: $1.DeviceId.create)
    ..pPM<$1.DeviceId>(3, _omitFieldNames ? '' : 'removedDevices',
        subBuilder: $1.DeviceId.create)
    ..aOS(4, _omitFieldNames ? '' : 'changeReason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LivePermissionUpdate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LivePermissionUpdate copyWith(void Function(LivePermissionUpdate) updates) =>
      super.copyWith((message) => updates(message as LivePermissionUpdate))
          as LivePermissionUpdate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePermissionUpdate create() => LivePermissionUpdate._();
  @$core.override
  LivePermissionUpdate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LivePermissionUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePermissionUpdate>(create);
  static LivePermissionUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $0.EffectivePermissions get newPermissions => $_getN(0);
  @$pb.TagNumber(1)
  set newPermissions($0.EffectivePermissions value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNewPermissions() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewPermissions() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.EffectivePermissions ensureNewPermissions() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.DeviceId> get addedDevices => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$1.DeviceId> get removedDevices => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get changeReason => $_getSZ(3);
  @$pb.TagNumber(4)
  set changeReason($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasChangeReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearChangeReason() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
