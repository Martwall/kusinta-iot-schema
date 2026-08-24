// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/roles.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Role extends $pb.ProtobufEnum {
  static const Role ROLE_UNSPECIFIED =
      Role._(0, _omitEnumNames ? '' : 'ROLE_UNSPECIFIED');
  static const Role ROLE_RESIDENT =
      Role._(1, _omitEnumNames ? '' : 'ROLE_RESIDENT');
  static const Role ROLE_PROPERTY_OWNER =
      Role._(2, _omitEnumNames ? '' : 'ROLE_PROPERTY_OWNER');
  static const Role ROLE_TECHNICIAN =
      Role._(3, _omitEnumNames ? '' : 'ROLE_TECHNICIAN');
  static const Role ROLE_GATEWAY_ADMIN =
      Role._(4, _omitEnumNames ? '' : 'ROLE_GATEWAY_ADMIN');

  static const $core.List<Role> values = <Role>[
    ROLE_UNSPECIFIED,
    ROLE_RESIDENT,
    ROLE_PROPERTY_OWNER,
    ROLE_TECHNICIAN,
    ROLE_GATEWAY_ADMIN,
  ];

  static final $core.List<Role?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Role? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Role._(super.value, super.name);
}

/// What a user may do to a device, as listed in DeviceAcl.allowed_actions. Each value
/// names an operation that exists on the app leg, so a grant can be checked against the
/// message that arrived.
class PermissionAction extends $pb.ProtobufEnum {
  /// Names no action. Present only because buf's ENUM_ZERO_VALUE_SUFFIX requires a zero
  /// value; it is not a wildcard and carries no permission.
  ///
  /// In allowed_actions it is INVALID and MUST be rejected — never read as "any action".
  /// Omission must never be what widens access.
  static const PermissionAction PERMISSION_ACTION_UNSPECIFIED =
      PermissionAction._(
          0, _omitEnumNames ? '' : 'PERMISSION_ACTION_UNSPECIFIED');

  /// Read an attribute once, on demand: webrtc.v1.PropertyReadRequest.
  static const PermissionAction PERMISSION_ACTION_READ =
      PermissionAction._(1, _omitEnumNames ? '' : 'PERMISSION_ACTION_READ');

  /// Write an attribute to a value: webrtc.v1.AttributeWriteRequest, carried on
  /// AppMessage.attribute_write and forwarded to a connector as
  /// SessionResponse.execute_attribute_write.
  ///
  /// MUST be enforced separately from INVOKE. Writing an attribute and invoking a command
  /// are different operations in Matter carrying different authority: a user who may
  /// toggle a light is not thereby a user who may rewrite its attributes. An earlier form
  /// of this schema routed an absolute setpoint through DeviceCommand, which made INVOKE
  /// imply WRITE and left the distinction unenforceable — that is the mistake
  /// AttributeWriteRequest exists to undo, and checking INVOKE for a write would reinstate
  /// it.
  ///
  /// A relative adjust is NOT a write. Thermostat SetpointRaiseLower is a genuine Matter
  /// command and needs INVOKE; setting an absolute value needs WRITE.
  static const PermissionAction PERMISSION_ACTION_WRITE =
      PermissionAction._(2, _omitEnumNames ? '' : 'PERMISSION_ACTION_WRITE');

  /// Receive attribute changes as they happen: webrtc.v1.AppMessage.subscribe and the
  /// DevicePropertyEvent stream that follows. Distinct from READ — observing is a standing
  /// interest in a device, not a single question about it.
  static const PermissionAction PERMISSION_ACTION_OBSERVE =
      PermissionAction._(3, _omitEnumNames ? '' : 'PERMISSION_ACTION_OBSERVE');

  /// Send a webrtc.v1.DeviceCommand. This is the action that moves hardware.
  static const PermissionAction PERMISSION_ACTION_INVOKE =
      PermissionAction._(4, _omitEnumNames ? '' : 'PERMISSION_ACTION_INVOKE');

  static const $core.List<PermissionAction> values = <PermissionAction>[
    PERMISSION_ACTION_UNSPECIFIED,
    PERMISSION_ACTION_READ,
    PERMISSION_ACTION_WRITE,
    PERMISSION_ACTION_OBSERVE,
    PERMISSION_ACTION_INVOKE,
  ];

  static final $core.List<PermissionAction?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PermissionAction? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PermissionAction._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
