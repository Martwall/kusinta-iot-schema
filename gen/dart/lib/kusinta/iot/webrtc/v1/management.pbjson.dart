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
  ],
};

/// Descriptor for `CreateSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSpaceDescriptor = $convert.base64Decode(
    'CgtDcmVhdGVTcGFjZRI/CgpzcGFjZV90eXBlGAEgASgOMiAua3VzaW50YS5pb3QuY29tbW9uLn'
    'YxLlNwYWNlVHlwZVIJc3BhY2VUeXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRp'
    'b24YAyABKAlSC2Rlc2NyaXB0aW9uEhQKBWZsb29yGAQgASgFUgVmbG9vchJICg9wYXJlbnRfc3'
    'BhY2VfaWQYBSABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUg1wYXJlbnRT'
    'cGFjZUlk');

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
  ],
  '8': [
    {'1': 'parent_change'},
    {'1': '_space_type'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_floor'},
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
    'dGFjaEIPCg1wYXJlbnRfY2hhbmdlQg0KC19zcGFjZV90eXBlQgcKBV9uYW1lQg4KDF9kZXNjcm'
    'lwdGlvbkIICgZfZmxvb3I=');

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
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `AssignUserToSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignUserToSpaceDescriptor = $convert.base64Decode(
    'ChFBc3NpZ25Vc2VyVG9TcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW'
    '50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSOAoHdXNlcl9pZBgCIAEoCzIfLmt1c2ludGEuaW90'
    'LmlkZW50aXR5LnYxLlVzZXJJZFIGdXNlcklkSgQIAxAE');

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
  ],
};

/// Descriptor for `CreateDeviceLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceLinkDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVEZXZpY2VMaW5rEjkKBnNlbmRlchgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLkRldmljZUlkUgZzZW5kZXISPQoIcmVjZWl2ZXIYAiABKAsyIS5rdXNpbnRhLmlvdC5p'
    'ZGVudGl0eS52MS5EZXZpY2VJZFIIcmVjZWl2ZXISPQoIZnVuY3Rpb24YAyABKA4yIS5rdXNpbn'
    'RhLmlvdC5saW5rLnYxLkxpbmtGdW5jdGlvblIIZnVuY3Rpb24SMQoEbW9kZRgEIAEoDjIdLmt1'
    'c2ludGEuaW90LmxpbmsudjEuTGlua01vZGVSBG1vZGU=');

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
  ],
  '8': [
    {'1': 'request'},
  ],
  '9': [
    {'1': 14, '2': 15},
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
    'Y2VMaW5rc0IJCgdyZXF1ZXN0SgQIDhAP');
