// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/acl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// What service sees of a home, as a resident is told it in webrtc.v1.PrivacyDisclosure.
/// Each names part of a webrtc.v1.ServiceStatus, of a device's description, of how the
/// home is set up, or of who lives there; with the climate summary the disclosure names
/// separately, nothing else of the home reaches service.
class ServiceSignal extends $pb.ProtobufEnum {
  static const ServiceSignal SERVICE_SIGNAL_UNSPECIFIED =
      ServiceSignal._(0, _omitEnumNames ? '' : 'SERVICE_SIGNAL_UNSPECIFIED');

  /// Whether the device is reachable, and since which quarter hour it has not been.
  static const ServiceSignal SERVICE_SIGNAL_REACHABILITY =
      ServiceSignal._(1, _omitEnumNames ? '' : 'SERVICE_SIGNAL_REACHABILITY');

  /// Its remaining charge in steps of ten, and low-battery and replacement warnings.
  static const ServiceSignal SERVICE_SIGNAL_BATTERY =
      ServiceSignal._(2, _omitEnumNames ? '' : 'SERVICE_SIGNAL_BATTERY');

  /// How good its radio link is.
  static const ServiceSignal SERVICE_SIGNAL_RADIO_LINK =
      ServiceSignal._(3, _omitEnumNames ? '' : 'SERVICE_SIGNAL_RADIO_LINK');

  /// Its firmware version: DeviceDescriptor.software_version_string, sent to service.
  static const ServiceSignal SERVICE_SIGNAL_FIRMWARE =
      ServiceSignal._(4, _omitEnumNames ? '' : 'SERVICE_SIGNAL_FIRMWARE');

  /// Faults it reports about itself: errors and tampering. Not configuration it has yet to
  /// take, which would show when its residents changed a setting.
  static const ServiceSignal SERVICE_SIGNAL_FAULT =
      ServiceSignal._(5, _omitEnumNames ? '' : 'SERVICE_SIGNAL_FAULT');

  /// What the device is — its description, every field of device.v1.DeviceDescriptor but
  /// claimed_at: type, name, vendor, product, serial number, versions, ownership, lifecycle
  /// and connector; its endpoints and what each supports — and where it is filed. A
  /// bridged_by naming a device the recipient may not see, such as a bridge a resident owns,
  /// is unset. Always disclosed together with FIRMWARE, whose
  /// version it carries. Not when it was claimed: the only times service is given of a
  /// device are the quarter hours of its webrtc.v1.ServiceStatus, and the moments it appears
  /// to them, changes and is taken away from them, which they see as they happen.
  static const ServiceSignal SERVICE_SIGNAL_FILING =
      ServiceSignal._(6, _omitEnumNames ? '' : 'SERVICE_SIGNAL_FILING');

  /// How the home is set up: the apartment and its rooms, their names and descriptions, the
  /// rooms' limits, and the building's sensors in them.
  static const ServiceSignal SERVICE_SIGNAL_ROOM_SETUP =
      ServiceSignal._(7, _omitEnumNames ? '' : 'SERVICE_SIGNAL_ROOM_SETUP');

  /// Which of the building's devices are linked to which, for what, and whether device to
  /// device or through the gateway — not how a link is set or what it is doing. A link shows
  /// as it is made and as it is removed, and changes for service at no other time.
  static const ServiceSignal SERVICE_SIGNAL_LINKS =
      ServiceSignal._(8, _omitEnumNames ? '' : 'SERVICE_SIGNAL_LINKS');

  /// Who is filed on the home, and how: every membership of it — residents, service, and
  /// those recorded with no relation — by user id. Shown to the property owner and the
  /// gateway administrator only, not to every party with service reach (see
  /// space.v1.Space.members).
  static const ServiceSignal SERVICE_SIGNAL_RESIDENTS =
      ServiceSignal._(9, _omitEnumNames ? '' : 'SERVICE_SIGNAL_RESIDENTS');

  static const $core.List<ServiceSignal> values = <ServiceSignal>[
    SERVICE_SIGNAL_UNSPECIFIED,
    SERVICE_SIGNAL_REACHABILITY,
    SERVICE_SIGNAL_BATTERY,
    SERVICE_SIGNAL_RADIO_LINK,
    SERVICE_SIGNAL_FIRMWARE,
    SERVICE_SIGNAL_FAULT,
    SERVICE_SIGNAL_FILING,
    SERVICE_SIGNAL_ROOM_SETUP,
    SERVICE_SIGNAL_LINKS,
    SERVICE_SIGNAL_RESIDENTS,
  ];

  static final $core.List<ServiceSignal?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static ServiceSignal? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ServiceSignal._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
