// This is a generated file - do not edit.
//
// Generated from kusinta/iot/space/v1/space.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// One membership of a space.
/// What a room is used for (Space.room_type).
class RoomType extends $pb.ProtobufEnum {
  static const RoomType ROOM_TYPE_UNSPECIFIED =
      RoomType._(0, _omitEnumNames ? '' : 'ROOM_TYPE_UNSPECIFIED');
  static const RoomType ROOM_TYPE_BATHROOM =
      RoomType._(1, _omitEnumNames ? '' : 'ROOM_TYPE_BATHROOM');
  static const RoomType ROOM_TYPE_BEDROOM =
      RoomType._(2, _omitEnumNames ? '' : 'ROOM_TYPE_BEDROOM');
  static const RoomType ROOM_TYPE_KITCHEN =
      RoomType._(3, _omitEnumNames ? '' : 'ROOM_TYPE_KITCHEN');
  static const RoomType ROOM_TYPE_LIVING_ROOM =
      RoomType._(4, _omitEnumNames ? '' : 'ROOM_TYPE_LIVING_ROOM');

  /// A hall or an entrance.
  static const RoomType ROOM_TYPE_HALL =
      RoomType._(5, _omitEnumNames ? '' : 'ROOM_TYPE_HALL');

  /// A laundry or utility room.
  static const RoomType ROOM_TYPE_LAUNDRY =
      RoomType._(6, _omitEnumNames ? '' : 'ROOM_TYPE_LAUNDRY');
  static const RoomType ROOM_TYPE_STORAGE =
      RoomType._(7, _omitEnumNames ? '' : 'ROOM_TYPE_STORAGE');
  static const RoomType ROOM_TYPE_OTHER =
      RoomType._(8, _omitEnumNames ? '' : 'ROOM_TYPE_OTHER');

  static const $core.List<RoomType> values = <RoomType>[
    ROOM_TYPE_UNSPECIFIED,
    ROOM_TYPE_BATHROOM,
    ROOM_TYPE_BEDROOM,
    ROOM_TYPE_KITCHEN,
    ROOM_TYPE_LIVING_ROOM,
    ROOM_TYPE_HALL,
    ROOM_TYPE_LAUNDRY,
    ROOM_TYPE_STORAGE,
    ROOM_TYPE_OTHER,
  ];

  static final $core.List<RoomType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static RoomType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RoomType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
