// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/device_event.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Matter's event priority. Governs retention and delivery urgency, not severity in a
/// logging sense: CRITICAL events are retained and delivered with the most effort, DEBUG
/// with the least.
class EventPriority extends $pb.ProtobufEnum {
  static const EventPriority EVENT_PRIORITY_UNSPECIFIED =
      EventPriority._(0, _omitEnumNames ? '' : 'EVENT_PRIORITY_UNSPECIFIED');
  static const EventPriority EVENT_PRIORITY_DEBUG =
      EventPriority._(1, _omitEnumNames ? '' : 'EVENT_PRIORITY_DEBUG');
  static const EventPriority EVENT_PRIORITY_INFO =
      EventPriority._(2, _omitEnumNames ? '' : 'EVENT_PRIORITY_INFO');
  static const EventPriority EVENT_PRIORITY_CRITICAL =
      EventPriority._(3, _omitEnumNames ? '' : 'EVENT_PRIORITY_CRITICAL');

  static const $core.List<EventPriority> values = <EventPriority>[
    EVENT_PRIORITY_UNSPECIFIED,
    EVENT_PRIORITY_DEBUG,
    EVENT_PRIORITY_INFO,
    EVENT_PRIORITY_CRITICAL,
  ];

  static final $core.List<EventPriority?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static EventPriority? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EventPriority._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
