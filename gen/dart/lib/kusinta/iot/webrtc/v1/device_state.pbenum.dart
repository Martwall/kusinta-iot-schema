// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/device_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// A fault a device reports about itself, as service sees it.
class ServiceFault extends $pb.ProtobufEnum {
  static const ServiceFault SERVICE_FAULT_UNSPECIFIED =
      ServiceFault._(0, _omitEnumNames ? '' : 'SERVICE_FAULT_UNSPECIFIED');

  /// An error the device reports in its own operation.
  static const ServiceFault SERVICE_FAULT_ERROR =
      ServiceFault._(1, _omitEnumNames ? '' : 'SERVICE_FAULT_ERROR');

  /// Its casing was opened or it was taken off its mount.
  static const ServiceFault SERVICE_FAULT_TAMPER =
      ServiceFault._(2, _omitEnumNames ? '' : 'SERVICE_FAULT_TAMPER');

  static const $core.List<ServiceFault> values = <ServiceFault>[
    SERVICE_FAULT_UNSPECIFIED,
    SERVICE_FAULT_ERROR,
    SERVICE_FAULT_TAMPER,
  ];

  static final $core.List<ServiceFault?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ServiceFault? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ServiceFault._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
