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

/// What kind of party a user is, gateway-wide.
///
/// A role is a CEILING on the kinds of action a user may perform anywhere on this gateway.
/// It is not reach: it says nothing about WHICH devices the user may act on. Reach is
/// decided by filing — which spaces the user holds, and which devices are in them — and
/// the two are independent. A role must never be read as reach, and reach must never be
/// read as permission to act.
///
/// The gateway resolves the two together into DeviceAcl.allowed_actions, per device. A
/// role narrows what may appear there; it does not put anything there on its own.
///
/// Carried in the app's token as webrtc.v1.AppTokenClaims.roles, as an array of proto3
/// canonical enum NAME strings (e.g. ["ROLE_RESIDENT", "ROLE_GATEWAY_ADMIN"]) rather than
/// integers, so the claim stays self-describing. A user may hold several at once and the
/// effective ceiling is their union.
///
/// UNORDERED. These are categories, not levels: a technician is not "more than" a
/// resident, and there is no >= comparison to make between them. Anything needing a graded
/// comparison — Matter's View/Operate/Manage/Administer, say — would be a separate concept
/// and is deliberately not modelled here.
///
/// A role is a ceiling rather than a floor, so it may be WIDENED per device by facts the
/// role does not know: a user who owns a device may hold actions on it that their
/// gateway-wide role alone would not grant. That widening is the gateway's to apply and is
/// visible to the app only in the resolved DeviceAcl.
class Role extends $pb.ProtobufEnum {
  static const Role ROLE_UNSPECIFIED =
      Role._(0, _omitEnumNames ? '' : 'ROLE_UNSPECIFIED');

  /// Lives with the devices. Operates what is in the spaces they hold.
  static const Role ROLE_RESIDENT =
      Role._(1, _omitEnumNames ? '' : 'ROLE_RESIDENT');

  /// Owns the property the devices are installed in. Sets the bounds residents operate
  /// within — see PropertyConstraint in acl.proto.
  static const Role ROLE_PROPERTY_OWNER =
      Role._(2, _omitEnumNames ? '' : 'ROLE_PROPERTY_OWNER');

  /// Installs and services devices. Present for the work, not for the tenancy.
  static const Role ROLE_TECHNICIAN =
      Role._(3, _omitEnumNames ? '' : 'ROLE_TECHNICIAN');

  /// Administers this gateway itself. The one role that also affects reach: some devices
  /// are visible only to a session holding it.
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
///
/// The action says HOW data is reached. WHICH elements it reaches is a separate question,
/// answered by the ref lists on DeviceAcl — allowed_attribute_refs, allowed_command_refs
/// and allowed_event_refs. Keeping the two apart is deliberate: attributes, commands and
/// events are addressed by three different ID spaces, and folding "which kind of element"
/// into the action verb would make the action mean two things at once.
class PermissionAction extends $pb.ProtobufEnum {
  /// Names no action. Present only because buf's ENUM_ZERO_VALUE_SUFFIX requires a zero
  /// value; it is not a wildcard and carries no permission.
  ///
  /// In allowed_actions it is INVALID and MUST be rejected — never read as "any action".
  /// Omission must never be what widens access.
  static const PermissionAction PERMISSION_ACTION_UNSPECIFIED =
      PermissionAction._(
          0, _omitEnumNames ? '' : 'PERMISSION_ACTION_UNSPECIFIED');

  /// Read an element once, on demand: webrtc.v1.PropertyReadRequest.
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

  /// Hold a standing stream of a device's reports: webrtc.v1.AppMessage.subscribe, and the
  /// PropertyReport and DeviceEventBatch that follow.
  ///
  /// Covers BOTH attribute reports and events, as a Matter subscription does — one
  /// subscription carries attribute paths and event paths together. Which of them actually
  /// arrives is decided by allowed_attribute_refs and allowed_event_refs, not by this
  /// action. Note their emptiness rules differ: attributes default to all, events to none.
  ///
  /// NOT a privacy boundary. Anyone who may READ an element can poll it, so withholding
  /// SUBSCRIBE while granting READ hides nothing — it only costs the app round trips. Treat
  /// it as a RESOURCE control: bandwidth, battery, and how many standing streams a gateway
  /// will carry. Do not use it to protect data; use the ref lists for that.
  ///
  /// Was PERMISSION_ACTION_OBSERVE. Renamed because "observe" reads as a kind of access
  /// distinct from reading, which it is not — it is the same access held open.
  static const PermissionAction PERMISSION_ACTION_SUBSCRIBE =
      PermissionAction._(
          3, _omitEnumNames ? '' : 'PERMISSION_ACTION_SUBSCRIBE');

  /// Invoke a command on a cluster: webrtc.v1.DeviceCommand. This is the action that moves
  /// hardware.
  ///
  /// Commands are named by (cluster_id, matter_command_id), a different ID space from
  /// attributes — On/Off cluster 0x0006 has an attribute 0x0000 and a command 0x0000 that
  /// are unrelated. So allowed_attribute_refs cannot narrow this; allowed_command_refs is
  /// what does.
  static const PermissionAction PERMISSION_ACTION_INVOKE =
      PermissionAction._(4, _omitEnumNames ? '' : 'PERMISSION_ACTION_INVOKE');

  static const $core.List<PermissionAction> values = <PermissionAction>[
    PERMISSION_ACTION_UNSPECIFIED,
    PERMISSION_ACTION_READ,
    PERMISSION_ACTION_WRITE,
    PERMISSION_ACTION_SUBSCRIBE,
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
