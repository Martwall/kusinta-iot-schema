// This is a generated file - do not edit.
//
// Generated from kusinta/iot/common/v1/types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SpaceType extends $pb.ProtobufEnum {
  static const SpaceType SPACE_TYPE_UNSPECIFIED =
      SpaceType._(0, _omitEnumNames ? '' : 'SPACE_TYPE_UNSPECIFIED');
  static const SpaceType SPACE_TYPE_BUILDING =
      SpaceType._(1, _omitEnumNames ? '' : 'SPACE_TYPE_BUILDING');
  static const SpaceType SPACE_TYPE_FLOOR =
      SpaceType._(2, _omitEnumNames ? '' : 'SPACE_TYPE_FLOOR');
  static const SpaceType SPACE_TYPE_APARTMENT =
      SpaceType._(3, _omitEnumNames ? '' : 'SPACE_TYPE_APARTMENT');
  static const SpaceType SPACE_TYPE_ROOM =
      SpaceType._(4, _omitEnumNames ? '' : 'SPACE_TYPE_ROOM');
  static const SpaceType SPACE_TYPE_COMMON_AREA =
      SpaceType._(5, _omitEnumNames ? '' : 'SPACE_TYPE_COMMON_AREA');

  static const $core.List<SpaceType> values = <SpaceType>[
    SPACE_TYPE_UNSPECIFIED,
    SPACE_TYPE_BUILDING,
    SPACE_TYPE_FLOOR,
    SPACE_TYPE_APARTMENT,
    SPACE_TYPE_ROOM,
    SPACE_TYPE_COMMON_AREA,
  ];

  static final $core.List<SpaceType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static SpaceType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SpaceType._(super.value, super.name);
}

class DeviceOwnershipType extends $pb.ProtobufEnum {
  static const DeviceOwnershipType DEVICE_OWNERSHIP_TYPE_UNSPECIFIED =
      DeviceOwnershipType._(
          0, _omitEnumNames ? '' : 'DEVICE_OWNERSHIP_TYPE_UNSPECIFIED');
  static const DeviceOwnershipType DEVICE_OWNERSHIP_TYPE_COMPANY =
      DeviceOwnershipType._(
          1, _omitEnumNames ? '' : 'DEVICE_OWNERSHIP_TYPE_COMPANY');
  static const DeviceOwnershipType DEVICE_OWNERSHIP_TYPE_RESIDENT =
      DeviceOwnershipType._(
          2, _omitEnumNames ? '' : 'DEVICE_OWNERSHIP_TYPE_RESIDENT');

  static const $core.List<DeviceOwnershipType> values = <DeviceOwnershipType>[
    DEVICE_OWNERSHIP_TYPE_UNSPECIFIED,
    DEVICE_OWNERSHIP_TYPE_COMPANY,
    DEVICE_OWNERSHIP_TYPE_RESIDENT,
  ];

  static final $core.List<DeviceOwnershipType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DeviceOwnershipType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DeviceOwnershipType._(super.value, super.name);
}

class DeviceLifecycleState extends $pb.ProtobufEnum {
  static const DeviceLifecycleState DEVICE_LIFECYCLE_STATE_UNSPECIFIED =
      DeviceLifecycleState._(
          0, _omitEnumNames ? '' : 'DEVICE_LIFECYCLE_STATE_UNSPECIFIED');
  static const DeviceLifecycleState DEVICE_LIFECYCLE_STATE_PENDING_CLAIM =
      DeviceLifecycleState._(
          1, _omitEnumNames ? '' : 'DEVICE_LIFECYCLE_STATE_PENDING_CLAIM');
  static const DeviceLifecycleState DEVICE_LIFECYCLE_STATE_OWNED =
      DeviceLifecycleState._(
          2, _omitEnumNames ? '' : 'DEVICE_LIFECYCLE_STATE_OWNED');
  static const DeviceLifecycleState DEVICE_LIFECYCLE_STATE_PENDING_TRANSFER =
      DeviceLifecycleState._(
          3, _omitEnumNames ? '' : 'DEVICE_LIFECYCLE_STATE_PENDING_TRANSFER');
  static const DeviceLifecycleState DEVICE_LIFECYCLE_STATE_BUILDING_POOL =
      DeviceLifecycleState._(
          4, _omitEnumNames ? '' : 'DEVICE_LIFECYCLE_STATE_BUILDING_POOL');

  static const $core.List<DeviceLifecycleState> values = <DeviceLifecycleState>[
    DEVICE_LIFECYCLE_STATE_UNSPECIFIED,
    DEVICE_LIFECYCLE_STATE_PENDING_CLAIM,
    DEVICE_LIFECYCLE_STATE_OWNED,
    DEVICE_LIFECYCLE_STATE_PENDING_TRANSFER,
    DEVICE_LIFECYCLE_STATE_BUILDING_POOL,
  ];

  static final $core.List<DeviceLifecycleState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static DeviceLifecycleState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DeviceLifecycleState._(super.value, super.name);
}

class ConnectorTransport extends $pb.ProtobufEnum {
  static const ConnectorTransport CONNECTOR_TRANSPORT_UNSPECIFIED =
      ConnectorTransport._(
          0, _omitEnumNames ? '' : 'CONNECTOR_TRANSPORT_UNSPECIFIED');
  static const ConnectorTransport CONNECTOR_TRANSPORT_UNIX_SOCKET =
      ConnectorTransport._(
          1, _omitEnumNames ? '' : 'CONNECTOR_TRANSPORT_UNIX_SOCKET');
  static const ConnectorTransport CONNECTOR_TRANSPORT_MTLS_TCP =
      ConnectorTransport._(
          2, _omitEnumNames ? '' : 'CONNECTOR_TRANSPORT_MTLS_TCP');

  static const $core.List<ConnectorTransport> values = <ConnectorTransport>[
    CONNECTOR_TRANSPORT_UNSPECIFIED,
    CONNECTOR_TRANSPORT_UNIX_SOCKET,
    CONNECTOR_TRANSPORT_MTLS_TCP,
  ];

  static final $core.List<ConnectorTransport?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ConnectorTransport? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConnectorTransport._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
