// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/management.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Which of a building's two room-limit settings (BUILDING ROOM LIMITS).
class BuildingRoomKind extends $pb.ProtobufEnum {
  static const BuildingRoomKind BUILDING_ROOM_KIND_UNSPECIFIED =
      BuildingRoomKind._(
          0, _omitEnumNames ? '' : 'BUILDING_ROOM_KIND_UNSPECIFIED');

  /// The rooms of every home in the building: those under an apartment.
  static const BuildingRoomKind BUILDING_ROOM_KIND_HOMES =
      BuildingRoomKind._(1, _omitEnumNames ? '' : 'BUILDING_ROOM_KIND_HOMES');

  /// Every other room in the building.
  static const BuildingRoomKind BUILDING_ROOM_KIND_COMMON_AREAS =
      BuildingRoomKind._(
          2, _omitEnumNames ? '' : 'BUILDING_ROOM_KIND_COMMON_AREAS');

  static const $core.List<BuildingRoomKind> values = <BuildingRoomKind>[
    BUILDING_ROOM_KIND_UNSPECIFIED,
    BUILDING_ROOM_KIND_HOMES,
    BUILDING_ROOM_KIND_COMMON_AREAS,
  ];

  static final $core.List<BuildingRoomKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BuildingRoomKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BuildingRoomKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
