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

/// What a link makes the sender do to the receiver.
///
/// A function, not a cluster id, because the two ends do not necessarily speak the
/// same cluster: a wall thermostat reports its temperature as Thermostat
/// LocalTemperature while a bare sensor reports the same quantity as Temperature
/// Measurement MeasuredValue. Each end states its own attribute in its
/// LinkCapability; the function is what says the two belong together.
class LinkFunction extends $pb.ProtobufEnum {
  static const LinkFunction LINK_FUNCTION_UNSPECIFIED =
      LinkFunction._(0, _omitEnumNames ? '' : 'LINK_FUNCTION_UNSPECIFIED');

  /// The sender leads the receiver's climate control.
  ///
  /// Stronger than feeding a measurement, and the difference matters to anything
  /// building a UI. Both the sender's measured temperature and its setpoint reach
  /// the receiver, and the transfer is one way: the receiver reports the sender's
  /// temperature as its own, and a setpoint written to the receiver is accepted
  /// and then reverted to the sender's. So the sender is the control surface for
  /// the pair, and a setpoint control offered on a linked receiver is one that
  /// appears to work and silently undoes itself.
  static const LinkFunction LINK_FUNCTION_CLIMATE_LEAD =
      LinkFunction._(1, _omitEnumNames ? '' : 'LINK_FUNCTION_CLIMATE_LEAD');

  /// The sender's open/closed state reaches the receiver, which acts on it —
  /// typically a contact telling a valve to stop heating an open room.
  ///
  /// Not implied by CLIMATE_LEAD: a device that leads a room's climate does not
  /// necessarily forward its own window state, and on at least one vendor it does
  /// not. Where both are wanted, both are linked.
  static const LinkFunction LINK_FUNCTION_WINDOW_STATE =
      LinkFunction._(2, _omitEnumNames ? '' : 'LINK_FUNCTION_WINDOW_STATE');

  /// The sender is an input the receiver acts on — a button or remote.
  static const LinkFunction LINK_FUNCTION_REMOTE_CONTROL =
      LinkFunction._(3, _omitEnumNames ? '' : 'LINK_FUNCTION_REMOTE_CONTROL');

  static const $core.List<LinkFunction> values = <LinkFunction>[
    LINK_FUNCTION_UNSPECIFIED,
    LINK_FUNCTION_CLIMATE_LEAD,
    LINK_FUNCTION_WINDOW_STATE,
    LINK_FUNCTION_REMOTE_CONTROL,
  ];

  static final $core.List<LinkFunction?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LinkFunction? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LinkFunction._(super.value, super.name);
}

/// Which end of a link a device can be.
class LinkDirection extends $pb.ProtobufEnum {
  static const LinkDirection LINK_DIRECTION_UNSPECIFIED =
      LinkDirection._(0, _omitEnumNames ? '' : 'LINK_DIRECTION_UNSPECIFIED');
  static const LinkDirection LINK_DIRECTION_SOURCE =
      LinkDirection._(1, _omitEnumNames ? '' : 'LINK_DIRECTION_SOURCE');
  static const LinkDirection LINK_DIRECTION_TARGET =
      LinkDirection._(2, _omitEnumNames ? '' : 'LINK_DIRECTION_TARGET');

  static const $core.List<LinkDirection> values = <LinkDirection>[
    LINK_DIRECTION_UNSPECIFIED,
    LINK_DIRECTION_SOURCE,
    LINK_DIRECTION_TARGET,
  ];

  static final $core.List<LinkDirection?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static LinkDirection? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LinkDirection._(super.value, super.name);
}

/// How a link is carried.
class LinkMode extends $pb.ProtobufEnum {
  static const LinkMode LINK_MODE_UNSPECIFIED =
      LinkMode._(0, _omitEnumNames ? '' : 'LINK_MODE_UNSPECIFIED');

  /// Device to device, brokered by the hub and then carried without it. Survives
  /// a gateway outage. Requires both devices on the same hub, and the hub's own
  /// support for the function.
  static const LinkMode LINK_MODE_HARD =
      LinkMode._(1, _omitEnumNames ? '' : 'LINK_MODE_HARD');

  /// Kept by the gateway, which reads one device and writes the other. Works
  /// across vendors and across hubs, and is the only option where no hub can
  /// broker the pair — at the cost of not surviving a gateway outage.
  static const LinkMode LINK_MODE_SOFT =
      LinkMode._(2, _omitEnumNames ? '' : 'LINK_MODE_SOFT');

  static const $core.List<LinkMode> values = <LinkMode>[
    LINK_MODE_UNSPECIFIED,
    LINK_MODE_HARD,
    LINK_MODE_SOFT,
  ];

  static final $core.List<LinkMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static LinkMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LinkMode._(super.value, super.name);
}

/// Whether a link is doing anything.
///
/// There is deliberately no "created but not yet in effect" state. On current
/// device firmware a link takes effect immediately, and on firmware old enough not
/// to, it never takes effect at all without physical intervention — which is a
/// refusal at creation time, not a state to wait in.
///
/// Nor should ACTIVE be inferred from the hub reporting a link exists. A hub can
/// report a link as present, unpending and healthy while the devices ignore it
/// entirely; only behaviour distinguishes the two.
class LinkState extends $pb.ProtobufEnum {
  static const LinkState LINK_STATE_UNSPECIFIED =
      LinkState._(0, _omitEnumNames ? '' : 'LINK_STATE_UNSPECIFIED');
  static const LinkState LINK_STATE_ACTIVE =
      LinkState._(1, _omitEnumNames ? '' : 'LINK_STATE_ACTIVE');
  static const LinkState LINK_STATE_BROKEN =
      LinkState._(2, _omitEnumNames ? '' : 'LINK_STATE_BROKEN');
  static const LinkState LINK_STATE_UNKNOWN =
      LinkState._(3, _omitEnumNames ? '' : 'LINK_STATE_UNKNOWN');

  static const $core.List<LinkState> values = <LinkState>[
    LINK_STATE_UNSPECIFIED,
    LINK_STATE_ACTIVE,
    LINK_STATE_BROKEN,
    LINK_STATE_UNKNOWN,
  ];

  static final $core.List<LinkState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LinkState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LinkState._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
