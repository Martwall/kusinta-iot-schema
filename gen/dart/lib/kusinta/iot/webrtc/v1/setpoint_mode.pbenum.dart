// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/setpoint_mode.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// SetpointAdjustMode selects which setpoint a thermostat command targets. It is
/// Matter's SetpointRaiseLowerModeEnum (Thermostat cluster 0x0201) and carries Matter's
/// own numbering.
///
/// A real type rather than a numbering written down in a comment. The mode field on
/// ThermostatSetpointParams was a bare uint32 with this numbering stated beside it, so a
/// consumer carrying forward an older Heat=1/Cool=2/Both=3 convention compiled cleanly and
/// silently reversed which physical behavior a command produced.
///
/// Zero is a real mode, not a "not set" sentinel — which is why there is no
/// SETPOINT_ADJUST_MODE_UNSPECIFIED, and why every field carrying this value has explicit
/// presence: absent = the producer stated no mode, present = the mode it named, Heat
/// included. This is the same rule properties.proto applies to readings, for the same
/// reason — a bare proto3 scalar makes "meant Heat" and "never set it" identical on the
/// wire. Renumbering to free zero is not available: the wire value IS Matter's value.
///
/// SetpointAdjustMode is NOT ThermostatProperties.system_mode. system_mode is Matter's
/// SystemModeEnum (Off=0, Auto=1, Cool=3, Heat=4), a different enum over a different set
/// of concepts. Cool is 1 here and 3 there; the two must never be substituted for each
/// other or read through the same mapping table.
class SetpointAdjustMode extends $pb.ProtobufEnum {
  /// Targets ThermostatProperties.occupied_heating_setpoint.
  static const SetpointAdjustMode SETPOINT_ADJUST_MODE_HEAT =
      SetpointAdjustMode._(
          0, _omitEnumNames ? '' : 'SETPOINT_ADJUST_MODE_HEAT');

  /// Targets ThermostatProperties.occupied_cooling_setpoint.
  static const SetpointAdjustMode SETPOINT_ADJUST_MODE_COOL =
      SetpointAdjustMode._(
          1, _omitEnumNames ? '' : 'SETPOINT_ADJUST_MODE_COOL');

  /// Targets both setpoints.
  static const SetpointAdjustMode SETPOINT_ADJUST_MODE_BOTH =
      SetpointAdjustMode._(
          2, _omitEnumNames ? '' : 'SETPOINT_ADJUST_MODE_BOTH');

  static const $core.List<SetpointAdjustMode> values = <SetpointAdjustMode>[
    SETPOINT_ADJUST_MODE_HEAT,
    SETPOINT_ADJUST_MODE_COOL,
    SETPOINT_ADJUST_MODE_BOTH,
  ];

  static final $core.List<SetpointAdjustMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SetpointAdjustMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SetpointAdjustMode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
