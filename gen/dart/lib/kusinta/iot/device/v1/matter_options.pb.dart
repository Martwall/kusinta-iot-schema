// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/matter_options.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Matter_options {
  static final matterClusterId = $pb.Extension<$core.int>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'matterClusterId',
      50001,
      $pb.PbFieldType.OU3);
  static final matterAttribute = $pb.Extension<$core.String>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'matterAttribute',
      50002,
      $pb.PbFieldType.OS);
  static final matterAttributeId = $pb.Extension<$core.int>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'matterAttributeId',
      50006,
      $pb.PbFieldType.OU3);
  static final matterDeviceType = $pb.Extension<$core.int>.repeated(
      _omitMessageNames ? '' : 'google.protobuf.MessageOptions',
      _omitFieldNames ? '' : 'matterDeviceType',
      50003,
      $pb.PbFieldType.KU3,
      check: $pb.getCheckFunction($pb.PbFieldType.KU3));
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(matterClusterId);
    registry.add(matterAttribute);
    registry.add(matterAttributeId);
    registry.add(matterDeviceType);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
