// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/cluster_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// How late a reported value reaches the producer after it changes at the device.
class ReadLatency extends $pb.ProtobufEnum {
  /// Not stated. Never treated as REAL_TIME.
  static const ReadLatency READ_LATENCY_UNSPECIFIED =
      ReadLatency._(0, _omitEnumNames ? '' : 'READ_LATENCY_UNSPECIFIED');

  /// Within a few minutes of the change, every time.
  static const ReadLatency READ_LATENCY_REAL_TIME =
      ReadLatency._(1, _omitEnumNames ? '' : 'READ_LATENCY_REAL_TIME');

  /// Late enough that acting on it as current would be wrong: values collected by a
  /// vendor's service and handed on in batches, hourly values made available the next day.
  /// Fit for records, models and reports; not for a decision that has to be made now.
  static const ReadLatency READ_LATENCY_DELAYED =
      ReadLatency._(2, _omitEnumNames ? '' : 'READ_LATENCY_DELAYED');

  static const $core.List<ReadLatency> values = <ReadLatency>[
    READ_LATENCY_UNSPECIFIED,
    READ_LATENCY_REAL_TIME,
    READ_LATENCY_DELAYED,
  ];

  static final $core.List<ReadLatency?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ReadLatency? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReadLatency._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
