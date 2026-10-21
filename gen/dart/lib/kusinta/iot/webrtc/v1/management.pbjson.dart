// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/management.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createSpaceDescriptor instead')
const CreateSpace$json = {
  '1': 'CreateSpace',
  '2': [
    {
      '1': 'space_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.SpaceType',
      '10': 'spaceType'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'floor', '3': 4, '4': 1, '5': 5, '10': 'floor'},
    {
      '1': 'parent_space_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'parentSpaceId'
    },
    {
      '1': 'time_zone',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'timeZone',
      '17': true
    },
  ],
  '8': [
    {'1': '_time_zone'},
  ],
};

/// Descriptor for `CreateSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSpaceDescriptor = $convert.base64Decode(
    'CgtDcmVhdGVTcGFjZRI/CgpzcGFjZV90eXBlGAEgASgOMiAua3VzaW50YS5pb3QuY29tbW9uLn'
    'YxLlNwYWNlVHlwZVIJc3BhY2VUeXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRp'
    'b24YAyABKAlSC2Rlc2NyaXB0aW9uEhQKBWZsb29yGAQgASgFUgVmbG9vchJICg9wYXJlbnRfc3'
    'BhY2VfaWQYBSABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUg1wYXJlbnRT'
    'cGFjZUlkEiAKCXRpbWVfem9uZRgGIAEoCUgAUgh0aW1lWm9uZYgBAUIMCgpfdGltZV96b25l');

@$core.Deprecated('Use updateSpaceDescriptor instead')
const UpdateSpace$json = {
  '1': 'UpdateSpace',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'space_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.SpaceType',
      '9': 1,
      '10': 'spaceType',
      '17': true
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
    {
      '1': 'description',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'description',
      '17': true
    },
    {'1': 'floor', '3': 5, '4': 1, '5': 5, '9': 4, '10': 'floor', '17': true},
    {
      '1': 'parent_space_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '9': 0,
      '10': 'parentSpaceId'
    },
    {'1': 'detach', '3': 7, '4': 1, '5': 8, '9': 0, '10': 'detach'},
    {
      '1': 'time_zone',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 5,
      '10': 'timeZone',
      '17': true
    },
  ],
  '8': [
    {'1': 'parent_change'},
    {'1': '_space_type'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_floor'},
    {'1': '_time_zone'},
  ],
};

/// Descriptor for `UpdateSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSpaceDescriptor = $convert.base64Decode(
    'CgtVcGRhdGVTcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlNwYWNlSWRSB3NwYWNlSWQSRAoKc3BhY2VfdHlwZRgCIAEoDjIgLmt1c2ludGEuaW90LmNv'
    'bW1vbi52MS5TcGFjZVR5cGVIAVIJc3BhY2VUeXBliAEBEhcKBG5hbWUYAyABKAlIAlIEbmFtZY'
    'gBARIlCgtkZXNjcmlwdGlvbhgEIAEoCUgDUgtkZXNjcmlwdGlvbogBARIZCgVmbG9vchgFIAEo'
    'BUgEUgVmbG9vcogBARJKCg9wYXJlbnRfc3BhY2VfaWQYBiABKAsyIC5rdXNpbnRhLmlvdC5pZG'
    'VudGl0eS52MS5TcGFjZUlkSABSDXBhcmVudFNwYWNlSWQSGAoGZGV0YWNoGAcgASgISABSBmRl'
    'dGFjaBIgCgl0aW1lX3pvbmUYCCABKAlIBVIIdGltZVpvbmWIAQFCDwoNcGFyZW50X2NoYW5nZU'
    'INCgtfc3BhY2VfdHlwZUIHCgVfbmFtZUIOCgxfZGVzY3JpcHRpb25CCAoGX2Zsb29yQgwKCl90'
    'aW1lX3pvbmU=');

@$core.Deprecated('Use deleteSpaceDescriptor instead')
const DeleteSpace$json = {
  '1': 'DeleteSpace',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {'1': 'cascade', '3': 2, '4': 1, '5': 8, '10': 'cascade'},
  ],
};

/// Descriptor for `DeleteSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSpaceDescriptor = $convert.base64Decode(
    'CgtEZWxldGVTcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlNwYWNlSWRSB3NwYWNlSWQSGAoHY2FzY2FkZRgCIAEoCFIHY2FzY2FkZQ==');

@$core.Deprecated('Use assignUserToSpaceDescriptor instead')
const AssignUserToSpace$json = {
  '1': 'AssignUserToSpace',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'user_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
    {
      '1': 'relation',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.MembershipRelation',
      '10': 'relation'
    },
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `AssignUserToSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignUserToSpaceDescriptor = $convert.base64Decode(
    'ChFBc3NpZ25Vc2VyVG9TcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW'
    '50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSOAoHdXNlcl9pZBgCIAEoCzIfLmt1c2ludGEuaW90'
    'LmlkZW50aXR5LnYxLlVzZXJJZFIGdXNlcklkEkUKCHJlbGF0aW9uGAQgASgOMikua3VzaW50YS'
    '5pb3QuYWNjZXNzLnYxLk1lbWJlcnNoaXBSZWxhdGlvblIIcmVsYXRpb25KBAgDEAQ=');

@$core.Deprecated('Use removeUserFromSpaceDescriptor instead')
const RemoveUserFromSpace$json = {
  '1': 'RemoveUserFromSpace',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'user_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
  ],
};

/// Descriptor for `RemoveUserFromSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserFromSpaceDescriptor = $convert.base64Decode(
    'ChNSZW1vdmVVc2VyRnJvbVNwYWNlEjsKCHNwYWNlX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuU3BhY2VJZFIHc3BhY2VJZBI4Cgd1c2VyX2lkGAIgASgLMh8ua3VzaW50YS5p'
    'b3QuaWRlbnRpdHkudjEuVXNlcklkUgZ1c2VySWQ=');

@$core.Deprecated('Use placeDeviceInSpaceDescriptor instead')
const PlaceDeviceInSpace$json = {
  '1': 'PlaceDeviceInSpace',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
  ],
};

/// Descriptor for `PlaceDeviceInSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List placeDeviceInSpaceDescriptor = $convert.base64Decode(
    'ChJQbGFjZURldmljZUluU3BhY2USPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuRGV2aWNlSWRSCGRldmljZUlkEjsKCHNwYWNlX2lkGAIgASgLMiAua3VzaW50'
    'YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFIHc3BhY2VJZA==');

@$core.Deprecated('Use removeDeviceFromSpaceDescriptor instead')
const RemoveDeviceFromSpace$json = {
  '1': 'RemoveDeviceFromSpace',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
  ],
};

/// Descriptor for `RemoveDeviceFromSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDeviceFromSpaceDescriptor = $convert.base64Decode(
    'ChVSZW1vdmVEZXZpY2VGcm9tU3BhY2USPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3'
    'QuaWRlbnRpdHkudjEuRGV2aWNlSWRSCGRldmljZUlkEjsKCHNwYWNlX2lkGAIgASgLMiAua3Vz'
    'aW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFIHc3BhY2VJZA==');

@$core.Deprecated('Use claimDeviceDescriptor instead')
const ClaimDevice$json = {
  '1': 'ClaimDevice',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'ownership',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.DeviceOwnershipType',
      '10': 'ownership'
    },
    {
      '1': 'initial_space_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'initialSpaceId'
    },
    {'1': 'possession_proof', '3': 4, '4': 1, '5': 9, '10': 'possessionProof'},
  ],
};

/// Descriptor for `ClaimDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List claimDeviceDescriptor = $convert.base64Decode(
    'CgtDbGFpbURldmljZRI+CglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5EZXZpY2VJZFIIZGV2aWNlSWQSSAoJb3duZXJzaGlwGAIgASgOMioua3VzaW50YS5pb3Qu'
    'Y29tbW9uLnYxLkRldmljZU93bmVyc2hpcFR5cGVSCW93bmVyc2hpcBJKChBpbml0aWFsX3NwYW'
    'NlX2lkGAMgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFIOaW5pdGlhbFNw'
    'YWNlSWQSKQoQcG9zc2Vzc2lvbl9wcm9vZhgEIAEoCVIPcG9zc2Vzc2lvblByb29m');

@$core.Deprecated('Use releaseDeviceDescriptor instead')
const ReleaseDevice$json = {
  '1': 'ReleaseDevice',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
  ],
};

/// Descriptor for `ReleaseDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List releaseDeviceDescriptor = $convert.base64Decode(
    'Cg1SZWxlYXNlRGV2aWNlEj4KCWRldmljZV9pZBgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLkRldmljZUlkUghkZXZpY2VJZA==');

@$core.Deprecated('Use provisionDeviceDescriptor instead')
const ProvisionDevice$json = {
  '1': 'ProvisionDevice',
  '2': [
    {
      '1': 'connector_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.ConnectorId',
      '10': 'connectorId'
    },
    {
      '1': 'lorawan',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.lorawan.v1.LorawanProvisioning',
      '9': 0,
      '10': 'lorawan'
    },
  ],
  '8': [
    {'1': 'credentials'},
  ],
};

/// Descriptor for `ProvisionDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List provisionDeviceDescriptor = $convert.base64Decode(
    'Cg9Qcm92aXNpb25EZXZpY2USRwoMY29ubmVjdG9yX2lkGAEgASgLMiQua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuQ29ubmVjdG9ySWRSC2Nvbm5lY3RvcklkEk4KB2xvcmF3YW4YAiABKAsyMi5r'
    'dXNpbnRhLmlvdC52ZW5kb3IubG9yYXdhbi52MS5Mb3Jhd2FuUHJvdmlzaW9uaW5nSABSB2xvcm'
    'F3YW5CDQoLY3JlZGVudGlhbHM=');

@$core.Deprecated('Use listSpacesDescriptor instead')
const ListSpaces$json = {
  '1': 'ListSpaces',
  '2': [
    {
      '1': 'root_space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'rootSpaceId'
    },
  ],
};

/// Descriptor for `ListSpaces`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpacesDescriptor = $convert.base64Decode(
    'CgpMaXN0U3BhY2VzEkQKDXJvb3Rfc3BhY2VfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5TcGFjZUlkUgtyb290U3BhY2VJZA==');

@$core.Deprecated('Use spaceTreeDescriptor instead')
const SpaceTree$json = {
  '1': 'SpaceTree',
  '2': [
    {
      '1': 'spaces',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.space.v1.Space',
      '10': 'spaces'
    },
  ],
};

/// Descriptor for `SpaceTree`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceTreeDescriptor = $convert.base64Decode(
    'CglTcGFjZVRyZWUSMwoGc3BhY2VzGAEgAygLMhsua3VzaW50YS5pb3Quc3BhY2UudjEuU3BhY2'
    'VSBnNwYWNlcw==');

@$core.Deprecated('Use managementAckDescriptor instead')
const ManagementAck$json = {
  '1': 'ManagementAck',
};

/// Descriptor for `ManagementAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List managementAckDescriptor =
    $convert.base64Decode('Cg1NYW5hZ2VtZW50QWNr');

@$core.Deprecated('Use createDeviceLinkDescriptor instead')
const CreateDeviceLink$json = {
  '1': 'CreateDeviceLink',
  '2': [
    {
      '1': 'sender',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'sender'
    },
    {
      '1': 'receiver',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'receiver'
    },
    {
      '1': 'function',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkFunction',
      '10': 'function'
    },
    {
      '1': 'mode',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkMode',
      '10': 'mode'
    },
    {
      '1': 'settings',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.link.v1.LinkSettings',
      '10': 'settings'
    },
  ],
};

/// Descriptor for `CreateDeviceLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceLinkDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVEZXZpY2VMaW5rEjkKBnNlbmRlchgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLkRldmljZUlkUgZzZW5kZXISPQoIcmVjZWl2ZXIYAiABKAsyIS5rdXNpbnRhLmlvdC5p'
    'ZGVudGl0eS52MS5EZXZpY2VJZFIIcmVjZWl2ZXISPQoIZnVuY3Rpb24YAyABKA4yIS5rdXNpbn'
    'RhLmlvdC5saW5rLnYxLkxpbmtGdW5jdGlvblIIZnVuY3Rpb24SMQoEbW9kZRgEIAEoDjIdLmt1'
    'c2ludGEuaW90LmxpbmsudjEuTGlua01vZGVSBG1vZGUSPQoIc2V0dGluZ3MYBSABKAsyIS5rdX'
    'NpbnRhLmlvdC5saW5rLnYxLkxpbmtTZXR0aW5nc1IIc2V0dGluZ3M=');

@$core.Deprecated('Use removeDeviceLinkDescriptor instead')
const RemoveDeviceLink$json = {
  '1': 'RemoveDeviceLink',
  '2': [
    {'1': 'link_id', '3': 1, '4': 1, '5': 9, '10': 'linkId'},
  ],
};

/// Descriptor for `RemoveDeviceLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDeviceLinkDescriptor = $convert.base64Decode(
    'ChBSZW1vdmVEZXZpY2VMaW5rEhcKB2xpbmtfaWQYASABKAlSBmxpbmtJZA==');

@$core.Deprecated('Use updateDeviceLinkDescriptor instead')
const UpdateDeviceLink$json = {
  '1': 'UpdateDeviceLink',
  '2': [
    {'1': 'link_id', '3': 1, '4': 1, '5': 9, '10': 'linkId'},
    {
      '1': 'settings',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.link.v1.LinkSettings',
      '10': 'settings'
    },
  ],
};

/// Descriptor for `UpdateDeviceLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDeviceLinkDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVEZXZpY2VMaW5rEhcKB2xpbmtfaWQYASABKAlSBmxpbmtJZBI9CghzZXR0aW5ncx'
    'gCIAEoCzIhLmt1c2ludGEuaW90LmxpbmsudjEuTGlua1NldHRpbmdzUghzZXR0aW5ncw==');

@$core.Deprecated('Use listDeviceLinksDescriptor instead')
const ListDeviceLinks$json = {
  '1': 'ListDeviceLinks',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
  ],
};

/// Descriptor for `ListDeviceLinks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceLinksDescriptor = $convert.base64Decode(
    'Cg9MaXN0RGV2aWNlTGlua3MSPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuRGV2aWNlSWRSCGRldmljZUlk');

@$core.Deprecated('Use setRoomTargetDescriptor instead')
const SetRoomTarget$json = {
  '1': 'SetRoomTarget',
  '2': [
    {
      '1': 'room_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {
      '1': 'target_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'targetCentidegrees',
      '17': true
    },
  ],
  '8': [
    {'1': '_target_centidegrees'},
  ],
};

/// Descriptor for `SetRoomTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRoomTargetDescriptor = $convert.base64Decode(
    'Cg1TZXRSb29tVGFyZ2V0EjkKB3Jvb21faWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgZyb29tSWQSNAoTdGFyZ2V0X2NlbnRpZGVncmVlcxgCIAEoEUgAUhJ0YXJn'
    'ZXRDZW50aWRlZ3JlZXOIAQFCFgoUX3RhcmdldF9jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use roomSensorsDescriptor instead')
const RoomSensors$json = {
  '1': 'RoomSensors',
  '2': [
    {
      '1': 'sensor_ids',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'sensorIds'
    },
  ],
};

/// Descriptor for `RoomSensors`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomSensorsDescriptor = $convert.base64Decode(
    'CgtSb29tU2Vuc29ycxJACgpzZW5zb3JfaWRzGAEgAygLMiEua3VzaW50YS5pb3QuaWRlbnRpdH'
    'kudjEuRGV2aWNlSWRSCXNlbnNvcklkcw==');

@$core.Deprecated('Use roomLimitsDescriptor instead')
const RoomLimits$json = {
  '1': 'RoomLimits',
  '2': [
    {
      '1': 'min_centidegrees',
      '3': 1,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'minCentidegrees',
      '17': true
    },
    {
      '1': 'max_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'maxCentidegrees',
      '17': true
    },
  ],
  '8': [
    {'1': '_min_centidegrees'},
    {'1': '_max_centidegrees'},
  ],
};

/// Descriptor for `RoomLimits`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomLimitsDescriptor = $convert.base64Decode(
    'CgpSb29tTGltaXRzEi4KEG1pbl9jZW50aWRlZ3JlZXMYASABKBFIAFIPbWluQ2VudGlkZWdyZW'
    'VziAEBEi4KEG1heF9jZW50aWRlZ3JlZXMYAiABKBFIAVIPbWF4Q2VudGlkZWdyZWVziAEBQhMK'
    'EV9taW5fY2VudGlkZWdyZWVzQhMKEV9tYXhfY2VudGlkZWdyZWVz');

@$core.Deprecated('Use configureRoomClimateDescriptor instead')
const ConfigureRoomClimate$json = {
  '1': 'ConfigureRoomClimate',
  '2': [
    {
      '1': 'room_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {
      '1': 'limits',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RoomLimits',
      '10': 'limits'
    },
    {
      '1': 'sensors',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RoomSensors',
      '10': 'sensors'
    },
    {
      '1': 'lock_device_controls',
      '3': 4,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'lockDeviceControls',
      '17': true
    },
  ],
  '8': [
    {'1': '_lock_device_controls'},
  ],
};

/// Descriptor for `ConfigureRoomClimate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureRoomClimateDescriptor = $convert.base64Decode(
    'ChRDb25maWd1cmVSb29tQ2xpbWF0ZRI5Cgdyb29tX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuU3BhY2VJZFIGcm9vbUlkEjkKBmxpbWl0cxgCIAEoCzIhLmt1c2ludGEuaW90'
    'LndlYnJ0Yy52MS5Sb29tTGltaXRzUgZsaW1pdHMSPAoHc2Vuc29ycxgDIAEoCzIiLmt1c2ludG'
    'EuaW90LndlYnJ0Yy52MS5Sb29tU2Vuc29yc1IHc2Vuc29ycxI1ChRsb2NrX2RldmljZV9jb250'
    'cm9scxgEIAEoCEgAUhJsb2NrRGV2aWNlQ29udHJvbHOIAQFCFwoVX2xvY2tfZGV2aWNlX2Nvbn'
    'Ryb2xz');

@$core.Deprecated('Use setClimateModeDescriptor instead')
const SetClimateMode$json = {
  '1': 'SetClimateMode',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateModeKind',
      '10': 'kind'
    },
    {
      '1': 'setback_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'setbackCentidegrees',
      '17': true
    },
    {
      '1': 'starts_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startsAt'
    },
    {
      '1': 'ends_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endsAt'
    },
  ],
  '8': [
    {'1': '_setback_centidegrees'},
  ],
};

/// Descriptor for `SetClimateMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setClimateModeDescriptor = $convert.base64Decode(
    'Cg5TZXRDbGltYXRlTW9kZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLlNwYWNlSWRSB3NwYWNlSWQSOwoEa2luZBgCIAEoDjInLmt1c2ludGEuaW90LmNsaW1h'
    'dGUudjEuQ2xpbWF0ZU1vZGVLaW5kUgRraW5kEjYKFHNldGJhY2tfY2VudGlkZWdyZWVzGAMgAS'
    'gRSABSE3NldGJhY2tDZW50aWRlZ3JlZXOIAQESNwoJc3RhcnRzX2F0GAQgASgLMhouZ29vZ2xl'
    'LnByb3RvYnVmLlRpbWVzdGFtcFIIc3RhcnRzQXQSMwoHZW5kc19hdBgFIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBSBmVuZHNBdEIXChVfc2V0YmFja19jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use listRoomClimatesDescriptor instead')
const ListRoomClimates$json = {
  '1': 'ListRoomClimates',
  '2': [
    {
      '1': 'root_space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'rootSpaceId'
    },
  ],
};

/// Descriptor for `ListRoomClimates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomClimatesDescriptor = $convert.base64Decode(
    'ChBMaXN0Um9vbUNsaW1hdGVzEkQKDXJvb3Rfc3BhY2VfaWQYASABKAsyIC5rdXNpbnRhLmlvdC'
    '5pZGVudGl0eS52MS5TcGFjZUlkUgtyb290U3BhY2VJZA==');

@$core.Deprecated('Use getRoomHistoryDescriptor instead')
const GetRoomHistory$json = {
  '1': 'GetRoomHistory',
  '2': [
    {
      '1': 'room_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {
      '1': 'from_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'fromTime'
    },
    {
      '1': 'to_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'toTime'
    },
  ],
};

/// Descriptor for `GetRoomHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomHistoryDescriptor = $convert.base64Decode(
    'Cg5HZXRSb29tSGlzdG9yeRI5Cgdyb29tX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdH'
    'kudjEuU3BhY2VJZFIGcm9vbUlkEjcKCWZyb21fdGltZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5UaW1lc3RhbXBSCGZyb21UaW1lEjMKB3RvX3RpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idW'
    'YuVGltZXN0YW1wUgZ0b1RpbWU=');

@$core.Deprecated('Use privacyDisclosureDescriptor instead')
const PrivacyDisclosure$json = {
  '1': 'PrivacyDisclosure',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'service_parties',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ServiceParty',
      '10': 'serviceParties'
    },
    {
      '1': 'climate_summary_period',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateSummaryPeriod',
      '10': 'climateSummaryPeriod'
    },
    {
      '1': 'owner_organisation_name',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'ownerOrganisationName'
    },
    {'1': 'names_withheld', '3': 7, '4': 1, '5': 8, '10': 'namesWithheld'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `PrivacyDisclosure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privacyDisclosureDescriptor = $convert.base64Decode(
    'ChFQcml2YWN5RGlzY2xvc3VyZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW'
    '50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSTAoPc2VydmljZV9wYXJ0aWVzGAUgAygLMiMua3Vz'
    'aW50YS5pb3Qud2VicnRjLnYxLlNlcnZpY2VQYXJ0eVIOc2VydmljZVBhcnRpZXMSYgoWY2xpbW'
    'F0ZV9zdW1tYXJ5X3BlcmlvZBgEIAEoDjIsLmt1c2ludGEuaW90LmNsaW1hdGUudjEuQ2xpbWF0'
    'ZVN1bW1hcnlQZXJpb2RSFGNsaW1hdGVTdW1tYXJ5UGVyaW9kEjYKF293bmVyX29yZ2FuaXNhdG'
    'lvbl9uYW1lGAYgASgJUhVvd25lck9yZ2FuaXNhdGlvbk5hbWUSJQoObmFtZXNfd2l0aGhlbGQY'
    'ByABKAhSDW5hbWVzV2l0aGhlbGRKBAgCEANKBAgDEAQ=');

@$core.Deprecated('Use servicePartyDescriptor instead')
const ServiceParty$json = {
  '1': 'ServiceParty',
  '2': [
    {
      '1': 'role',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'role'
    },
    {
      '1': 'signals',
      '3': 2,
      '4': 3,
      '5': 14,
      '6': '.kusinta.iot.access.v1.ServiceSignal',
      '10': 'signals'
    },
    {'1': 'names', '3': 3, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `ServiceParty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List servicePartyDescriptor = $convert.base64Decode(
    'CgxTZXJ2aWNlUGFydHkSLwoEcm9sZRgBIAEoDjIbLmt1c2ludGEuaW90LmFjY2Vzcy52MS5Sb2'
    'xlUgRyb2xlEj4KB3NpZ25hbHMYAiADKA4yJC5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuU2Vydmlj'
    'ZVNpZ25hbFIHc2lnbmFscxIUCgVuYW1lcxgDIAMoCVIFbmFtZXM=');

@$core.Deprecated('Use getPrivacyDisclosureDescriptor instead')
const GetPrivacyDisclosure$json = {
  '1': 'GetPrivacyDisclosure',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
  ],
};

/// Descriptor for `GetPrivacyDisclosure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPrivacyDisclosureDescriptor = $convert.base64Decode(
    'ChRHZXRQcml2YWN5RGlzY2xvc3VyZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90Lm'
    'lkZW50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQ=');

@$core.Deprecated('Use getApartmentClimateSummaryDescriptor instead')
const GetApartmentClimateSummary$json = {
  '1': 'GetApartmentClimateSummary',
  '2': [
    {
      '1': 'apartment_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'apartmentId'
    },
    {
      '1': 'period',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateSummaryPeriod',
      '10': 'period'
    },
    {
      '1': 'from_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'fromTime'
    },
    {
      '1': 'to_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'toTime'
    },
  ],
};

/// Descriptor for `GetApartmentClimateSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getApartmentClimateSummaryDescriptor = $convert.base64Decode(
    'ChpHZXRBcGFydG1lbnRDbGltYXRlU3VtbWFyeRJDCgxhcGFydG1lbnRfaWQYASABKAsyIC5rdX'
    'NpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgthcGFydG1lbnRJZBJECgZwZXJpb2QYAiAB'
    'KA4yLC5rdXNpbnRhLmlvdC5jbGltYXRlLnYxLkNsaW1hdGVTdW1tYXJ5UGVyaW9kUgZwZXJpb2'
    'QSNwoJZnJvbV90aW1lGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIZnJvbVRp'
    'bWUSMwoHdG9fdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnRvVGltZQ'
    '==');

@$core.Deprecated('Use reconnectConnectorDescriptor instead')
const ReconnectConnector$json = {
  '1': 'ReconnectConnector',
  '2': [
    {
      '1': 'connector_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.ConnectorId',
      '10': 'connectorId'
    },
  ],
};

/// Descriptor for `ReconnectConnector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reconnectConnectorDescriptor = $convert.base64Decode(
    'ChJSZWNvbm5lY3RDb25uZWN0b3ISRwoMY29ubmVjdG9yX2lkGAEgASgLMiQua3VzaW50YS5pb3'
    'QuaWRlbnRpdHkudjEuQ29ubmVjdG9ySWRSC2Nvbm5lY3Rvcklk');

@$core.Deprecated('Use listHeatingDescriptor instead')
const ListHeating$json = {
  '1': 'ListHeating',
  '2': [
    {
      '1': 'root_space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'rootSpaceId'
    },
  ],
};

/// Descriptor for `ListHeating`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHeatingDescriptor = $convert.base64Decode(
    'CgtMaXN0SGVhdGluZxJECg1yb290X3NwYWNlX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuU3BhY2VJZFILcm9vdFNwYWNlSWQ=');

@$core.Deprecated('Use putHeatingPlantDescriptor instead')
const PutHeatingPlant$json = {
  '1': 'PutHeatingPlant',
  '2': [
    {
      '1': 'plant',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingPlant',
      '10': 'plant'
    },
  ],
};

/// Descriptor for `PutHeatingPlant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putHeatingPlantDescriptor = $convert.base64Decode(
    'Cg9QdXRIZWF0aW5nUGxhbnQSOgoFcGxhbnQYASABKAsyJC5rdXNpbnRhLmlvdC5oZWF0aW5nLn'
    'YxLkhlYXRpbmdQbGFudFIFcGxhbnQ=');

@$core.Deprecated('Use removeHeatingPlantDescriptor instead')
const RemoveHeatingPlant$json = {
  '1': 'RemoveHeatingPlant',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
  ],
};

/// Descriptor for `RemoveHeatingPlant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeHeatingPlantDescriptor =
    $convert.base64Decode(
        'ChJSZW1vdmVIZWF0aW5nUGxhbnQSGQoIcGxhbnRfaWQYASABKAlSB3BsYW50SWQ=');

@$core.Deprecated('Use putComfortLoadDescriptor instead')
const PutComfortLoad$json = {
  '1': 'PutComfortLoad',
  '2': [
    {
      '1': 'comfort_load',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortLoad',
      '10': 'comfortLoad'
    },
  ],
};

/// Descriptor for `PutComfortLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putComfortLoadDescriptor = $convert.base64Decode(
    'Cg5QdXRDb21mb3J0TG9hZBJGCgxjb21mb3J0X2xvYWQYASABKAsyIy5rdXNpbnRhLmlvdC5oZW'
    'F0aW5nLnYxLkNvbWZvcnRMb2FkUgtjb21mb3J0TG9hZA==');

@$core.Deprecated('Use removeComfortLoadDescriptor instead')
const RemoveComfortLoad$json = {
  '1': 'RemoveComfortLoad',
  '2': [
    {'1': 'comfort_load_id', '3': 1, '4': 1, '5': 9, '10': 'comfortLoadId'},
  ],
};

/// Descriptor for `RemoveComfortLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeComfortLoadDescriptor = $convert.base64Decode(
    'ChFSZW1vdmVDb21mb3J0TG9hZBImCg9jb21mb3J0X2xvYWRfaWQYASABKAlSDWNvbWZvcnRMb2'
    'FkSWQ=');

@$core.Deprecated('Use setComfortWindowsDescriptor instead')
const SetComfortWindows$json = {
  '1': 'SetComfortWindows',
  '2': [
    {'1': 'comfort_load_id', '3': 1, '4': 1, '5': 9, '10': 'comfortLoadId'},
    {
      '1': 'windows',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortWindow',
      '10': 'windows'
    },
  ],
};

/// Descriptor for `SetComfortWindows`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setComfortWindowsDescriptor = $convert.base64Decode(
    'ChFTZXRDb21mb3J0V2luZG93cxImCg9jb21mb3J0X2xvYWRfaWQYASABKAlSDWNvbWZvcnRMb2'
    'FkSWQSPwoHd2luZG93cxgCIAMoCzIlLmt1c2ludGEuaW90LmhlYXRpbmcudjEuQ29tZm9ydFdp'
    'bmRvd1IHd2luZG93cw==');

@$core.Deprecated('Use managementRequestDescriptor instead')
const ManagementRequest$json = {
  '1': 'ManagementRequest',
  '2': [
    {
      '1': 'create_space',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.CreateSpace',
      '9': 0,
      '10': 'createSpace'
    },
    {
      '1': 'update_space',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.UpdateSpace',
      '9': 0,
      '10': 'updateSpace'
    },
    {
      '1': 'delete_space',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DeleteSpace',
      '9': 0,
      '10': 'deleteSpace'
    },
    {
      '1': 'assign_user_to_space',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.AssignUserToSpace',
      '9': 0,
      '10': 'assignUserToSpace'
    },
    {
      '1': 'remove_user_from_space',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RemoveUserFromSpace',
      '9': 0,
      '10': 'removeUserFromSpace'
    },
    {
      '1': 'place_device_in_space',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.PlaceDeviceInSpace',
      '9': 0,
      '10': 'placeDeviceInSpace'
    },
    {
      '1': 'remove_device_from_space',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RemoveDeviceFromSpace',
      '9': 0,
      '10': 'removeDeviceFromSpace'
    },
    {
      '1': 'claim_device',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ClaimDevice',
      '9': 0,
      '10': 'claimDevice'
    },
    {
      '1': 'release_device',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ReleaseDevice',
      '9': 0,
      '10': 'releaseDevice'
    },
    {
      '1': 'list_spaces',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListSpaces',
      '9': 0,
      '10': 'listSpaces'
    },
    {
      '1': 'create_device_link',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.CreateDeviceLink',
      '9': 0,
      '10': 'createDeviceLink'
    },
    {
      '1': 'remove_device_link',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RemoveDeviceLink',
      '9': 0,
      '10': 'removeDeviceLink'
    },
    {
      '1': 'list_device_links',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListDeviceLinks',
      '9': 0,
      '10': 'listDeviceLinks'
    },
    {
      '1': 'update_device_link',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.UpdateDeviceLink',
      '9': 0,
      '10': 'updateDeviceLink'
    },
    {
      '1': 'provision_device',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ProvisionDevice',
      '9': 0,
      '10': 'provisionDevice'
    },
    {
      '1': 'set_room_target',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.SetRoomTarget',
      '9': 0,
      '10': 'setRoomTarget'
    },
    {
      '1': 'configure_room_climate',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ConfigureRoomClimate',
      '9': 0,
      '10': 'configureRoomClimate'
    },
    {
      '1': 'set_climate_mode',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.SetClimateMode',
      '9': 0,
      '10': 'setClimateMode'
    },
    {
      '1': 'list_room_climates',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListRoomClimates',
      '9': 0,
      '10': 'listRoomClimates'
    },
    {
      '1': 'get_room_history',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.GetRoomHistory',
      '9': 0,
      '10': 'getRoomHistory'
    },
    {
      '1': 'get_privacy_disclosure',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.GetPrivacyDisclosure',
      '9': 0,
      '10': 'getPrivacyDisclosure'
    },
    {
      '1': 'get_apartment_climate_summary',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.GetApartmentClimateSummary',
      '9': 0,
      '10': 'getApartmentClimateSummary'
    },
    {
      '1': 'reconnect_connector',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ReconnectConnector',
      '9': 0,
      '10': 'reconnectConnector'
    },
    {
      '1': 'create_invite',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.CreateInvite',
      '9': 0,
      '10': 'createInvite'
    },
    {
      '1': 'resend_invite',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ResendInvite',
      '9': 0,
      '10': 'resendInvite'
    },
    {
      '1': 'revoke_invite',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RevokeInvite',
      '9': 0,
      '10': 'revokeInvite'
    },
    {
      '1': 'mark_invite_email_sent',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.MarkInviteEmailSent',
      '9': 0,
      '10': 'markInviteEmailSent'
    },
    {
      '1': 'list_space_invites',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListSpaceInvites',
      '9': 0,
      '10': 'listSpaceInvites'
    },
    {
      '1': 'approve_join_request',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ApproveJoinRequest',
      '9': 0,
      '10': 'approveJoinRequest'
    },
    {
      '1': 'deny_join_request',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DenyJoinRequest',
      '9': 0,
      '10': 'denyJoinRequest'
    },
    {
      '1': 'list_gateway_members',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListGatewayMembers',
      '9': 0,
      '10': 'listGatewayMembers'
    },
    {
      '1': 'set_member_role',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.SetMemberRole',
      '9': 0,
      '10': 'setMemberRole'
    },
    {
      '1': 'remove_from_gateway',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RemoveFromGateway',
      '9': 0,
      '10': 'removeFromGateway'
    },
    {
      '1': 'set_access_until',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.SetAccessUntil',
      '9': 0,
      '10': 'setAccessUntil'
    },
    {
      '1': 'set_owner_organisation',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.SetOwnerOrganisation',
      '8': {'3': true},
      '9': 0,
      '10': 'setOwnerOrganisation',
    },
    {
      '1': 'request_promotion',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RequestPromotion',
      '9': 0,
      '10': 'requestPromotion'
    },
    {
      '1': 'answer_promotion',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.AnswerPromotion',
      '9': 0,
      '10': 'answerPromotion'
    },
    {
      '1': 'list_promotion_requests',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListPromotionRequests',
      '9': 0,
      '10': 'listPromotionRequests'
    },
    {
      '1': 'list_heating',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ListHeating',
      '9': 0,
      '10': 'listHeating'
    },
    {
      '1': 'put_heating_plant',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.PutHeatingPlant',
      '9': 0,
      '10': 'putHeatingPlant'
    },
    {
      '1': 'remove_heating_plant',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RemoveHeatingPlant',
      '9': 0,
      '10': 'removeHeatingPlant'
    },
    {
      '1': 'put_comfort_load',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.PutComfortLoad',
      '9': 0,
      '10': 'putComfortLoad'
    },
    {
      '1': 'remove_comfort_load',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.RemoveComfortLoad',
      '9': 0,
      '10': 'removeComfortLoad'
    },
    {
      '1': 'set_comfort_windows',
      '3': 44,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.SetComfortWindows',
      '9': 0,
      '10': 'setComfortWindows'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `ManagementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List managementRequestDescriptor = $convert.base64Decode(
    'ChFNYW5hZ2VtZW50UmVxdWVzdBJHCgxjcmVhdGVfc3BhY2UYASABKAsyIi5rdXNpbnRhLmlvdC'
    '53ZWJydGMudjEuQ3JlYXRlU3BhY2VIAFILY3JlYXRlU3BhY2USRwoMdXBkYXRlX3NwYWNlGAIg'
    'ASgLMiIua3VzaW50YS5pb3Qud2VicnRjLnYxLlVwZGF0ZVNwYWNlSABSC3VwZGF0ZVNwYWNlEk'
    'cKDGRlbGV0ZV9zcGFjZRgDIAEoCzIiLmt1c2ludGEuaW90LndlYnJ0Yy52MS5EZWxldGVTcGFj'
    'ZUgAUgtkZWxldGVTcGFjZRJbChRhc3NpZ25fdXNlcl90b19zcGFjZRgEIAEoCzIoLmt1c2ludG'
    'EuaW90LndlYnJ0Yy52MS5Bc3NpZ25Vc2VyVG9TcGFjZUgAUhFhc3NpZ25Vc2VyVG9TcGFjZRJh'
    'ChZyZW1vdmVfdXNlcl9mcm9tX3NwYWNlGAUgASgLMioua3VzaW50YS5pb3Qud2VicnRjLnYxLl'
    'JlbW92ZVVzZXJGcm9tU3BhY2VIAFITcmVtb3ZlVXNlckZyb21TcGFjZRJeChVwbGFjZV9kZXZp'
    'Y2VfaW5fc3BhY2UYBiABKAsyKS5rdXNpbnRhLmlvdC53ZWJydGMudjEuUGxhY2VEZXZpY2VJbl'
    'NwYWNlSABSEnBsYWNlRGV2aWNlSW5TcGFjZRJnChhyZW1vdmVfZGV2aWNlX2Zyb21fc3BhY2UY'
    'ByABKAsyLC5rdXNpbnRhLmlvdC53ZWJydGMudjEuUmVtb3ZlRGV2aWNlRnJvbVNwYWNlSABSFX'
    'JlbW92ZURldmljZUZyb21TcGFjZRJHCgxjbGFpbV9kZXZpY2UYCCABKAsyIi5rdXNpbnRhLmlv'
    'dC53ZWJydGMudjEuQ2xhaW1EZXZpY2VIAFILY2xhaW1EZXZpY2USTQoOcmVsZWFzZV9kZXZpY2'
    'UYCSABKAsyJC5rdXNpbnRhLmlvdC53ZWJydGMudjEuUmVsZWFzZURldmljZUgAUg1yZWxlYXNl'
    'RGV2aWNlEkQKC2xpc3Rfc3BhY2VzGAogASgLMiEua3VzaW50YS5pb3Qud2VicnRjLnYxLkxpc3'
    'RTcGFjZXNIAFIKbGlzdFNwYWNlcxJXChJjcmVhdGVfZGV2aWNlX2xpbmsYCyABKAsyJy5rdXNp'
    'bnRhLmlvdC53ZWJydGMudjEuQ3JlYXRlRGV2aWNlTGlua0gAUhBjcmVhdGVEZXZpY2VMaW5rEl'
    'cKEnJlbW92ZV9kZXZpY2VfbGluaxgMIAEoCzInLmt1c2ludGEuaW90LndlYnJ0Yy52MS5SZW1v'
    'dmVEZXZpY2VMaW5rSABSEHJlbW92ZURldmljZUxpbmsSVAoRbGlzdF9kZXZpY2VfbGlua3MYDS'
    'ABKAsyJi5rdXNpbnRhLmlvdC53ZWJydGMudjEuTGlzdERldmljZUxpbmtzSABSD2xpc3REZXZp'
    'Y2VMaW5rcxJXChJ1cGRhdGVfZGV2aWNlX2xpbmsYDiABKAsyJy5rdXNpbnRhLmlvdC53ZWJydG'
    'MudjEuVXBkYXRlRGV2aWNlTGlua0gAUhB1cGRhdGVEZXZpY2VMaW5rElMKEHByb3Zpc2lvbl9k'
    'ZXZpY2UYDyABKAsyJi5rdXNpbnRhLmlvdC53ZWJydGMudjEuUHJvdmlzaW9uRGV2aWNlSABSD3'
    'Byb3Zpc2lvbkRldmljZRJOCg9zZXRfcm9vbV90YXJnZXQYECABKAsyJC5rdXNpbnRhLmlvdC53'
    'ZWJydGMudjEuU2V0Um9vbVRhcmdldEgAUg1zZXRSb29tVGFyZ2V0EmMKFmNvbmZpZ3VyZV9yb2'
    '9tX2NsaW1hdGUYESABKAsyKy5rdXNpbnRhLmlvdC53ZWJydGMudjEuQ29uZmlndXJlUm9vbUNs'
    'aW1hdGVIAFIUY29uZmlndXJlUm9vbUNsaW1hdGUSUQoQc2V0X2NsaW1hdGVfbW9kZRgSIAEoCz'
    'IlLmt1c2ludGEuaW90LndlYnJ0Yy52MS5TZXRDbGltYXRlTW9kZUgAUg5zZXRDbGltYXRlTW9k'
    'ZRJXChJsaXN0X3Jvb21fY2xpbWF0ZXMYEyABKAsyJy5rdXNpbnRhLmlvdC53ZWJydGMudjEuTG'
    'lzdFJvb21DbGltYXRlc0gAUhBsaXN0Um9vbUNsaW1hdGVzElEKEGdldF9yb29tX2hpc3RvcnkY'
    'FCABKAsyJS5rdXNpbnRhLmlvdC53ZWJydGMudjEuR2V0Um9vbUhpc3RvcnlIAFIOZ2V0Um9vbU'
    'hpc3RvcnkSYwoWZ2V0X3ByaXZhY3lfZGlzY2xvc3VyZRgVIAEoCzIrLmt1c2ludGEuaW90Lndl'
    'YnJ0Yy52MS5HZXRQcml2YWN5RGlzY2xvc3VyZUgAUhRnZXRQcml2YWN5RGlzY2xvc3VyZRJ2Ch'
    '1nZXRfYXBhcnRtZW50X2NsaW1hdGVfc3VtbWFyeRgWIAEoCzIxLmt1c2ludGEuaW90LndlYnJ0'
    'Yy52MS5HZXRBcGFydG1lbnRDbGltYXRlU3VtbWFyeUgAUhpnZXRBcGFydG1lbnRDbGltYXRlU3'
    'VtbWFyeRJcChNyZWNvbm5lY3RfY29ubmVjdG9yGBcgASgLMikua3VzaW50YS5pb3Qud2VicnRj'
    'LnYxLlJlY29ubmVjdENvbm5lY3RvckgAUhJyZWNvbm5lY3RDb25uZWN0b3ISSgoNY3JlYXRlX2'
    'ludml0ZRgYIAEoCzIjLmt1c2ludGEuaW90LndlYnJ0Yy52MS5DcmVhdGVJbnZpdGVIAFIMY3Jl'
    'YXRlSW52aXRlEkoKDXJlc2VuZF9pbnZpdGUYGSABKAsyIy5rdXNpbnRhLmlvdC53ZWJydGMudj'
    'EuUmVzZW5kSW52aXRlSABSDHJlc2VuZEludml0ZRJKCg1yZXZva2VfaW52aXRlGBogASgLMiMu'
    'a3VzaW50YS5pb3Qud2VicnRjLnYxLlJldm9rZUludml0ZUgAUgxyZXZva2VJbnZpdGUSYQoWbW'
    'Fya19pbnZpdGVfZW1haWxfc2VudBgbIAEoCzIqLmt1c2ludGEuaW90LndlYnJ0Yy52MS5NYXJr'
    'SW52aXRlRW1haWxTZW50SABSE21hcmtJbnZpdGVFbWFpbFNlbnQSVwoSbGlzdF9zcGFjZV9pbn'
    'ZpdGVzGBwgASgLMicua3VzaW50YS5pb3Qud2VicnRjLnYxLkxpc3RTcGFjZUludml0ZXNIAFIQ'
    'bGlzdFNwYWNlSW52aXRlcxJdChRhcHByb3ZlX2pvaW5fcmVxdWVzdBgdIAEoCzIpLmt1c2ludG'
    'EuaW90LndlYnJ0Yy52MS5BcHByb3ZlSm9pblJlcXVlc3RIAFISYXBwcm92ZUpvaW5SZXF1ZXN0'
    'ElQKEWRlbnlfam9pbl9yZXF1ZXN0GB4gASgLMiYua3VzaW50YS5pb3Qud2VicnRjLnYxLkRlbn'
    'lKb2luUmVxdWVzdEgAUg9kZW55Sm9pblJlcXVlc3QSXQoUbGlzdF9nYXRld2F5X21lbWJlcnMY'
    'HyABKAsyKS5rdXNpbnRhLmlvdC53ZWJydGMudjEuTGlzdEdhdGV3YXlNZW1iZXJzSABSEmxpc3'
    'RHYXRld2F5TWVtYmVycxJOCg9zZXRfbWVtYmVyX3JvbGUYICABKAsyJC5rdXNpbnRhLmlvdC53'
    'ZWJydGMudjEuU2V0TWVtYmVyUm9sZUgAUg1zZXRNZW1iZXJSb2xlEloKE3JlbW92ZV9mcm9tX2'
    'dhdGV3YXkYISABKAsyKC5rdXNpbnRhLmlvdC53ZWJydGMudjEuUmVtb3ZlRnJvbUdhdGV3YXlI'
    'AFIRcmVtb3ZlRnJvbUdhdGV3YXkSUQoQc2V0X2FjY2Vzc191bnRpbBgiIAEoCzIlLmt1c2ludG'
    'EuaW90LndlYnJ0Yy52MS5TZXRBY2Nlc3NVbnRpbEgAUg5zZXRBY2Nlc3NVbnRpbBJnChZzZXRf'
    'b3duZXJfb3JnYW5pc2F0aW9uGCMgASgLMisua3VzaW50YS5pb3Qud2VicnRjLnYxLlNldE93bm'
    'VyT3JnYW5pc2F0aW9uQgIYAUgAUhRzZXRPd25lck9yZ2FuaXNhdGlvbhJWChFyZXF1ZXN0X3By'
    'b21vdGlvbhgkIAEoCzInLmt1c2ludGEuaW90LndlYnJ0Yy52MS5SZXF1ZXN0UHJvbW90aW9uSA'
    'BSEHJlcXVlc3RQcm9tb3Rpb24SUwoQYW5zd2VyX3Byb21vdGlvbhglIAEoCzImLmt1c2ludGEu'
    'aW90LndlYnJ0Yy52MS5BbnN3ZXJQcm9tb3Rpb25IAFIPYW5zd2VyUHJvbW90aW9uEmYKF2xpc3'
    'RfcHJvbW90aW9uX3JlcXVlc3RzGCYgASgLMiwua3VzaW50YS5pb3Qud2VicnRjLnYxLkxpc3RQ'
    'cm9tb3Rpb25SZXF1ZXN0c0gAUhVsaXN0UHJvbW90aW9uUmVxdWVzdHMSRwoMbGlzdF9oZWF0aW'
    '5nGCcgASgLMiIua3VzaW50YS5pb3Qud2VicnRjLnYxLkxpc3RIZWF0aW5nSABSC2xpc3RIZWF0'
    'aW5nElQKEXB1dF9oZWF0aW5nX3BsYW50GCggASgLMiYua3VzaW50YS5pb3Qud2VicnRjLnYxLl'
    'B1dEhlYXRpbmdQbGFudEgAUg9wdXRIZWF0aW5nUGxhbnQSXQoUcmVtb3ZlX2hlYXRpbmdfcGxh'
    'bnQYKSABKAsyKS5rdXNpbnRhLmlvdC53ZWJydGMudjEuUmVtb3ZlSGVhdGluZ1BsYW50SABSEn'
    'JlbW92ZUhlYXRpbmdQbGFudBJRChBwdXRfY29tZm9ydF9sb2FkGCogASgLMiUua3VzaW50YS5p'
    'b3Qud2VicnRjLnYxLlB1dENvbWZvcnRMb2FkSABSDnB1dENvbWZvcnRMb2FkEloKE3JlbW92ZV'
    '9jb21mb3J0X2xvYWQYKyABKAsyKC5rdXNpbnRhLmlvdC53ZWJydGMudjEuUmVtb3ZlQ29tZm9y'
    'dExvYWRIAFIRcmVtb3ZlQ29tZm9ydExvYWQSWgoTc2V0X2NvbWZvcnRfd2luZG93cxgsIAEoCz'
    'IoLmt1c2ludGEuaW90LndlYnJ0Yy52MS5TZXRDb21mb3J0V2luZG93c0gAUhFzZXRDb21mb3J0'
    'V2luZG93c0IJCgdyZXF1ZXN0');
