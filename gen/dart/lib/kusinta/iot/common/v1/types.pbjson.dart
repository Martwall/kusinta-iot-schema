// This is a generated file - do not edit.
//
// Generated from kusinta/iot/common/v1/types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use spaceTypeDescriptor instead')
const SpaceType$json = {
  '1': 'SpaceType',
  '2': [
    {'1': 'SPACE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'SPACE_TYPE_BUILDING', '2': 1},
    {'1': 'SPACE_TYPE_FLOOR', '2': 2},
    {'1': 'SPACE_TYPE_APARTMENT', '2': 3},
    {'1': 'SPACE_TYPE_ROOM', '2': 4},
    {'1': 'SPACE_TYPE_COMMON_AREA', '2': 5},
  ],
};

/// Descriptor for `SpaceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceTypeDescriptor = $convert.base64Decode(
    'CglTcGFjZVR5cGUSGgoWU1BBQ0VfVFlQRV9VTlNQRUNJRklFRBAAEhcKE1NQQUNFX1RZUEVfQl'
    'VJTERJTkcQARIUChBTUEFDRV9UWVBFX0ZMT09SEAISGAoUU1BBQ0VfVFlQRV9BUEFSVE1FTlQQ'
    'AxITCg9TUEFDRV9UWVBFX1JPT00QBBIaChZTUEFDRV9UWVBFX0NPTU1PTl9BUkVBEAU=');

@$core.Deprecated('Use deviceOwnershipTypeDescriptor instead')
const DeviceOwnershipType$json = {
  '1': 'DeviceOwnershipType',
  '2': [
    {'1': 'DEVICE_OWNERSHIP_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'DEVICE_OWNERSHIP_TYPE_COMPANY', '2': 1},
    {'1': 'DEVICE_OWNERSHIP_TYPE_RESIDENT', '2': 2},
  ],
};

/// Descriptor for `DeviceOwnershipType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceOwnershipTypeDescriptor = $convert.base64Decode(
    'ChNEZXZpY2VPd25lcnNoaXBUeXBlEiUKIURFVklDRV9PV05FUlNISVBfVFlQRV9VTlNQRUNJRk'
    'lFRBAAEiEKHURFVklDRV9PV05FUlNISVBfVFlQRV9DT01QQU5ZEAESIgoeREVWSUNFX09XTkVS'
    'U0hJUF9UWVBFX1JFU0lERU5UEAI=');

@$core.Deprecated('Use deviceLifecycleStateDescriptor instead')
const DeviceLifecycleState$json = {
  '1': 'DeviceLifecycleState',
  '2': [
    {'1': 'DEVICE_LIFECYCLE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'DEVICE_LIFECYCLE_STATE_PENDING_CLAIM', '2': 1},
    {'1': 'DEVICE_LIFECYCLE_STATE_OWNED', '2': 2},
    {'1': 'DEVICE_LIFECYCLE_STATE_PENDING_TRANSFER', '2': 3},
    {'1': 'DEVICE_LIFECYCLE_STATE_BUILDING_POOL', '2': 4},
  ],
};

/// Descriptor for `DeviceLifecycleState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceLifecycleStateDescriptor = $convert.base64Decode(
    'ChREZXZpY2VMaWZlY3ljbGVTdGF0ZRImCiJERVZJQ0VfTElGRUNZQ0xFX1NUQVRFX1VOU1BFQ0'
    'lGSUVEEAASKAokREVWSUNFX0xJRkVDWUNMRV9TVEFURV9QRU5ESU5HX0NMQUlNEAESIAocREVW'
    'SUNFX0xJRkVDWUNMRV9TVEFURV9PV05FRBACEisKJ0RFVklDRV9MSUZFQ1lDTEVfU1RBVEVfUE'
    'VORElOR19UUkFOU0ZFUhADEigKJERFVklDRV9MSUZFQ1lDTEVfU1RBVEVfQlVJTERJTkdfUE9P'
    'TBAE');

@$core.Deprecated('Use connectorTransportDescriptor instead')
const ConnectorTransport$json = {
  '1': 'ConnectorTransport',
  '2': [
    {'1': 'CONNECTOR_TRANSPORT_UNSPECIFIED', '2': 0},
    {'1': 'CONNECTOR_TRANSPORT_UNIX_SOCKET', '2': 1},
    {'1': 'CONNECTOR_TRANSPORT_MTLS_TCP', '2': 2},
  ],
};

/// Descriptor for `ConnectorTransport`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectorTransportDescriptor = $convert.base64Decode(
    'ChJDb25uZWN0b3JUcmFuc3BvcnQSIwofQ09OTkVDVE9SX1RSQU5TUE9SVF9VTlNQRUNJRklFRB'
    'AAEiMKH0NPTk5FQ1RPUl9UUkFOU1BPUlRfVU5JWF9TT0NLRVQQARIgChxDT05ORUNUT1JfVFJB'
    'TlNQT1JUX01UTFNfVENQEAI=');

@$core.Deprecated('Use errorDetailDescriptor instead')
const ErrorDetail$json = {
  '1': 'ErrorDetail',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.common.v1.ErrorDetail.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': [ErrorDetail_MetadataEntry$json],
};

@$core.Deprecated('Use errorDetailDescriptor instead')
const ErrorDetail_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ErrorDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDetailDescriptor = $convert.base64Decode(
    'CgtFcnJvckRldGFpbBISCgRjb2RlGAEgASgJUgRjb2RlEhgKB21lc3NhZ2UYAiABKAlSB21lc3'
    'NhZ2USTAoIbWV0YWRhdGEYAyADKAsyMC5rdXNpbnRhLmlvdC5jb21tb24udjEuRXJyb3JEZXRh'
    'aWwuTWV0YWRhdGFFbnRyeVIIbWV0YWRhdGEaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKA'
    'lSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
