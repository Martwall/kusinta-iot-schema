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

/// What technology a connector speaks, for an interface to pick an icon or an
/// explanatory phrase. Presentation only, and never a behaviour gate: what a
/// connector can do is stated by the capability booleans on ConnectorInfo
/// (supports_pairing, supports_provisioning, brokers_links), and branching on the
/// kind instead would hardcode vendor knowledge and force a client change for every
/// new technology. A proto3 open enum: a reader given a value its schema predates
/// keeps UNSPECIFIED's fallback rather than failing, which is exactly why the kind
/// may never decide anything that matters.
class ConnectorKind extends $pb.ProtobufEnum {
  static const ConnectorKind CONNECTOR_KIND_UNSPECIFIED =
      ConnectorKind._(0, _omitEnumNames ? '' : 'CONNECTOR_KIND_UNSPECIFIED');
  static const ConnectorKind CONNECTOR_KIND_HOMEMATIC_IP =
      ConnectorKind._(1, _omitEnumNames ? '' : 'CONNECTOR_KIND_HOMEMATIC_IP');
  static const ConnectorKind CONNECTOR_KIND_LORAWAN =
      ConnectorKind._(2, _omitEnumNames ? '' : 'CONNECTOR_KIND_LORAWAN');

  static const $core.List<ConnectorKind> values = <ConnectorKind>[
    CONNECTOR_KIND_UNSPECIFIED,
    CONNECTOR_KIND_HOMEMATIC_IP,
    CONNECTOR_KIND_LORAWAN,
  ];

  static final $core.List<ConnectorKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ConnectorKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConnectorKind._(super.value, super.name);
}

/// Whether the backend a connector drives is working: the radio central, the network server,
/// whatever the connector talks to on the far side from the gateway. Distinct from whether
/// the connector itself is connected — that is the gateway↔connector stream, and a connector
/// whose stream is down states nothing at all.
///
/// Open, like every proto3 enum: a reader given a value its schema predates holds the number.
/// Every reader treats anything but FAILING as healthy, so a state added later must be one an
/// older reader may safely take for OK. A new way of failing is a new BackendFailureReason
/// under FAILING, never a new state.
class BackendHealthState extends $pb.ProtobufEnum {
  /// No statement. Read as OK: a connector that predates backend health, or one still making
  /// its first attempt, has said nothing is wrong.
  static const BackendHealthState BACKEND_HEALTH_STATE_UNSPECIFIED =
      BackendHealthState._(
          0, _omitEnumNames ? '' : 'BACKEND_HEALTH_STATE_UNSPECIFIED');

  /// The backend is reachable and answering.
  static const BackendHealthState BACKEND_HEALTH_STATE_OK =
      BackendHealthState._(1, _omitEnumNames ? '' : 'BACKEND_HEALTH_STATE_OK');

  /// The backend is failing, and not for a single dropped call: the connector has retried as
  /// its own policy says and is still failing — save for the two exceptions
  /// connector.v1.BackendHealthReport names: a first attempt still running 60 seconds after
  /// connecting, and the outcome of a requested re-initialisation, each reported at once. The
  /// connector stays connected to the gateway.
  static const BackendHealthState BACKEND_HEALTH_STATE_FAILING =
      BackendHealthState._(
          2, _omitEnumNames ? '' : 'BACKEND_HEALTH_STATE_FAILING');

  static const $core.List<BackendHealthState> values = <BackendHealthState>[
    BACKEND_HEALTH_STATE_UNSPECIFIED,
    BACKEND_HEALTH_STATE_OK,
    BACKEND_HEALTH_STATE_FAILING,
  ];

  static final $core.List<BackendHealthState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BackendHealthState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BackendHealthState._(super.value, super.name);
}

/// Why a backend is failing, or why a re-initialisation could not be attempted. Coarse on
/// purpose: each value answers "what should someone do now?", and the specifics belong in a
/// connector's log-only detail, never here.
///
/// Shared rather than mirrored, for the reason PairingError gives: the connector produces it
/// and the gateway passes it through unchanged.
class BackendFailureReason extends $pb.ProtobufEnum {
  /// Not stated, or a value this reader's schema does not know. Read as BACKEND_ERROR.
  static const BackendFailureReason BACKEND_FAILURE_REASON_UNSPECIFIED =
      BackendFailureReason._(
          0, _omitEnumNames ? '' : 'BACKEND_FAILURE_REASON_UNSPECIFIED');

  /// The backend cannot be reached: no route, connection refused, no answer. Often a power or
  /// network fault at the backend's side; a re-initialisation may help once that is fixed.
  static const BackendFailureReason BACKEND_FAILURE_REASON_UNREACHABLE =
      BackendFailureReason._(
          1, _omitEnumNames ? '' : 'BACKEND_FAILURE_REASON_UNREACHABLE');

  /// The backend answered and refused the connector's credentials. Retrying the same
  /// credentials will not help; someone must change them.
  static const BackendFailureReason BACKEND_FAILURE_REASON_AUTH_FAILED =
      BackendFailureReason._(
          2, _omitEnumNames ? '' : 'BACKEND_FAILURE_REASON_AUTH_FAILED');

  /// The backend is reached and authenticated, but answers with errors or not as the connector
  /// expects: a fault on the backend's side, or a version the connector does not understand.
  static const BackendFailureReason BACKEND_FAILURE_REASON_BACKEND_ERROR =
      BackendFailureReason._(
          3, _omitEnumNames ? '' : 'BACKEND_FAILURE_REASON_BACKEND_ERROR');

  /// The connector lacks what it needs to reach the backend at all: an address, credentials.
  /// Needs an installer, not a retry.
  static const BackendFailureReason BACKEND_FAILURE_REASON_MISCONFIGURED =
      BackendFailureReason._(
          4, _omitEnumNames ? '' : 'BACKEND_FAILURE_REASON_MISCONFIGURED');

  /// A fault in the connector itself, not in the backend.
  static const BackendFailureReason BACKEND_FAILURE_REASON_INTERNAL =
      BackendFailureReason._(
          5, _omitEnumNames ? '' : 'BACKEND_FAILURE_REASON_INTERNAL');

  static const $core.List<BackendFailureReason> values = <BackendFailureReason>[
    BACKEND_FAILURE_REASON_UNSPECIFIED,
    BACKEND_FAILURE_REASON_UNREACHABLE,
    BACKEND_FAILURE_REASON_AUTH_FAILED,
    BACKEND_FAILURE_REASON_BACKEND_ERROR,
    BACKEND_FAILURE_REASON_MISCONFIGURED,
    BACKEND_FAILURE_REASON_INTERNAL,
  ];

  static final $core.List<BackendFailureReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static BackendFailureReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BackendFailureReason._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
