// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use redeemOutcomeDescriptor instead')
const RedeemOutcome$json = {
  '1': 'RedeemOutcome',
  '2': [
    {'1': 'REDEEM_OUTCOME_UNSPECIFIED', '2': 0},
    {'1': 'REDEEM_OUTCOME_JOINED', '2': 1},
    {'1': 'REDEEM_OUTCOME_PENDING_APPROVAL', '2': 2},
    {'1': 'REDEEM_OUTCOME_INVALID', '2': 3},
    {'1': 'REDEEM_OUTCOME_WRONG_ACCOUNT', '2': 4},
  ],
};

/// Descriptor for `RedeemOutcome`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List redeemOutcomeDescriptor = $convert.base64Decode(
    'Cg1SZWRlZW1PdXRjb21lEh4KGlJFREVFTV9PVVRDT01FX1VOU1BFQ0lGSUVEEAASGQoVUkVERU'
    'VNX09VVENPTUVfSk9JTkVEEAESIwofUkVERUVNX09VVENPTUVfUEVORElOR19BUFBST1ZBTBAC'
    'EhoKFlJFREVFTV9PVVRDT01FX0lOVkFMSUQQAxIgChxSRURFRU1fT1VUQ09NRV9XUk9OR19BQ0'
    'NPVU5UEAQ=');

@$core.Deprecated('Use wipeScopeDescriptor instead')
const WipeScope$json = {
  '1': 'WipeScope',
  '2': [
    {'1': 'WIPE_SCOPE_UNSPECIFIED', '2': 0},
    {'1': 'WIPE_SCOPE_PEOPLE_AND_HISTORY', '2': 1},
    {'1': 'WIPE_SCOPE_FACTORY_RESET', '2': 2},
  ],
};

/// Descriptor for `WipeScope`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wipeScopeDescriptor = $convert.base64Decode(
    'CglXaXBlU2NvcGUSGgoWV0lQRV9TQ09QRV9VTlNQRUNJRklFRBAAEiEKHVdJUEVfU0NPUEVfUE'
    'VPUExFX0FORF9ISVNUT1JZEAESHAoYV0lQRV9TQ09QRV9GQUNUT1JZX1JFU0VUEAI=');

@$core.Deprecated('Use outgoingStaffChoiceDescriptor instead')
const OutgoingStaffChoice$json = {
  '1': 'OutgoingStaffChoice',
  '2': [
    {'1': 'OUTGOING_STAFF_CHOICE_UNSPECIFIED', '2': 0},
    {'1': 'OUTGOING_STAFF_CHOICE_LEAVE', '2': 1},
    {'1': 'OUTGOING_STAFF_CHOICE_STAY_AS_TECHNICIAN', '2': 2},
  ],
};

/// Descriptor for `OutgoingStaffChoice`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List outgoingStaffChoiceDescriptor = $convert.base64Decode(
    'ChNPdXRnb2luZ1N0YWZmQ2hvaWNlEiUKIU9VVEdPSU5HX1NUQUZGX0NIT0lDRV9VTlNQRUNJRk'
    'lFRBAAEh8KG09VVEdPSU5HX1NUQUZGX0NIT0lDRV9MRUFWRRABEiwKKE9VVEdPSU5HX1NUQUZG'
    'X0NIT0lDRV9TVEFZX0FTX1RFQ0hOSUNJQU4QAg==');

@$core.Deprecated('Use sdpOfferDescriptor instead')
const SdpOffer$json = {
  '1': 'SdpOffer',
  '2': [
    {'1': 'sdp', '3': 1, '4': 1, '5': 9, '10': 'sdp'},
  ],
};

/// Descriptor for `SdpOffer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sdpOfferDescriptor =
    $convert.base64Decode('CghTZHBPZmZlchIQCgNzZHAYASABKAlSA3NkcA==');

@$core.Deprecated('Use sdpAnswerDescriptor instead')
const SdpAnswer$json = {
  '1': 'SdpAnswer',
  '2': [
    {'1': 'sdp', '3': 1, '4': 1, '5': 9, '10': 'sdp'},
  ],
};

/// Descriptor for `SdpAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sdpAnswerDescriptor =
    $convert.base64Decode('CglTZHBBbnN3ZXISEAoDc2RwGAEgASgJUgNzZHA=');

@$core.Deprecated('Use iceCandidateDescriptor instead')
const IceCandidate$json = {
  '1': 'IceCandidate',
  '2': [
    {'1': 'candidate', '3': 1, '4': 1, '5': 9, '10': 'candidate'},
    {'1': 'sdp_mid', '3': 2, '4': 1, '5': 9, '10': 'sdpMid'},
    {'1': 'sdp_mline_index', '3': 3, '4': 1, '5': 5, '10': 'sdpMlineIndex'},
  ],
};

/// Descriptor for `IceCandidate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iceCandidateDescriptor = $convert.base64Decode(
    'CgxJY2VDYW5kaWRhdGUSHAoJY2FuZGlkYXRlGAEgASgJUgljYW5kaWRhdGUSFwoHc2RwX21pZB'
    'gCIAEoCVIGc2RwTWlkEiYKD3NkcF9tbGluZV9pbmRleBgDIAEoBVINc2RwTWxpbmVJbmRleA==');

@$core.Deprecated('Use heartBeatDescriptor instead')
const HeartBeat$json = {
  '1': 'HeartBeat',
};

/// Descriptor for `HeartBeat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartBeatDescriptor =
    $convert.base64Decode('CglIZWFydEJlYXQ=');

@$core.Deprecated('Use userHandshakeDescriptor instead')
const UserHandshake$json = {
  '1': 'UserHandshake',
  '2': [
    {
      '1': 'target_gateway_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.GatewayId',
      '10': 'targetGatewayId'
    },
  ],
};

/// Descriptor for `UserHandshake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userHandshakeDescriptor = $convert.base64Decode(
    'Cg1Vc2VySGFuZHNoYWtlEk4KEXRhcmdldF9nYXRld2F5X2lkGAEgASgLMiIua3VzaW50YS5pb3'
    'QuaWRlbnRpdHkudjEuR2F0ZXdheUlkUg90YXJnZXRHYXRld2F5SWQ=');

@$core.Deprecated('Use userHandshakeAckDescriptor instead')
const UserHandshakeAck$json = {
  '1': 'UserHandshakeAck',
  '2': [
    {'1': 'accepted', '3': 1, '4': 1, '5': 8, '10': 'accepted'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {
      '1': 'heartbeat_interval_ms',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'heartbeatIntervalMs'
    },
  ],
};

/// Descriptor for `UserHandshakeAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userHandshakeAckDescriptor = $convert.base64Decode(
    'ChBVc2VySGFuZHNoYWtlQWNrEhoKCGFjY2VwdGVkGAEgASgIUghhY2NlcHRlZBIWCgZyZWFzb2'
    '4YAiABKAlSBnJlYXNvbhIyChVoZWFydGJlYXRfaW50ZXJ2YWxfbXMYAyABKA1SE2hlYXJ0YmVh'
    'dEludGVydmFsTXM=');

@$core.Deprecated('Use gatewayConnectRequestDescriptor instead')
const GatewayConnectRequest$json = {
  '1': 'GatewayConnectRequest',
  '2': [
    {
      '1': 'target_user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'targetUserId'
    },
    {'1': 'session_id', '3': 5, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'answer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpAnswer',
      '9': 0,
      '10': 'answer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
    {
      '1': 'heartbeat',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.HeartBeat',
      '9': 0,
      '10': 'heartbeat'
    },
    {
      '1': 'redeem_invite_result',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.RedeemInviteResult',
      '9': 0,
      '10': 'redeemInviteResult'
    },
    {
      '1': 'vouched_administrators_applied',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.VouchedAdministratorsApplied',
      '9': 0,
      '10': 'vouchedAdministratorsApplied'
    },
    {
      '1': 'transfer_outcome_applied',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.TransferOutcomeApplied',
      '9': 0,
      '10': 'transferOutcomeApplied'
    },
    {
      '1': 'wiped',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.GatewayWiped',
      '9': 0,
      '10': 'wiped'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `GatewayConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayConnectRequestDescriptor = $convert.base64Decode(
    'ChVHYXRld2F5Q29ubmVjdFJlcXVlc3QSRQoOdGFyZ2V0X3VzZXJfaWQYASABKAsyHy5rdXNpbn'
    'RhLmlvdC5pZGVudGl0eS52MS5Vc2VySWRSDHRhcmdldFVzZXJJZBIdCgpzZXNzaW9uX2lkGAUg'
    'ASgJUglzZXNzaW9uSWQSPQoGYW5zd2VyGAIgASgLMiMua3VzaW50YS5pb3Quc2lnbmFsaW5nLn'
    'YxLlNkcEFuc3dlckgAUgZhbnN3ZXISTQoNaWNlX2NhbmRpZGF0ZRgDIAEoCzImLmt1c2ludGEu'
    'aW90LnNpZ25hbGluZy52MS5JY2VDYW5kaWRhdGVIAFIMaWNlQ2FuZGlkYXRlEkMKCWhlYXJ0Ym'
    'VhdBgEIAEoCzIjLmt1c2ludGEuaW90LnNpZ25hbGluZy52MS5IZWFydEJlYXRIAFIJaGVhcnRi'
    'ZWF0EmAKFHJlZGVlbV9pbnZpdGVfcmVzdWx0GAYgASgLMiwua3VzaW50YS5pb3Quc2lnbmFsaW'
    '5nLnYxLlJlZGVlbUludml0ZVJlc3VsdEgAUhJyZWRlZW1JbnZpdGVSZXN1bHQSfgoedm91Y2hl'
    'ZF9hZG1pbmlzdHJhdG9yc19hcHBsaWVkGAcgASgLMjYua3VzaW50YS5pb3Quc2lnbmFsaW5nLn'
    'YxLlZvdWNoZWRBZG1pbmlzdHJhdG9yc0FwcGxpZWRIAFIcdm91Y2hlZEFkbWluaXN0cmF0b3Jz'
    'QXBwbGllZBJsChh0cmFuc2Zlcl9vdXRjb21lX2FwcGxpZWQYCCABKAsyMC5rdXNpbnRhLmlvdC'
    '5zaWduYWxpbmcudjEuVHJhbnNmZXJPdXRjb21lQXBwbGllZEgAUhZ0cmFuc2Zlck91dGNvbWVB'
    'cHBsaWVkEj4KBXdpcGVkGAkgASgLMiYua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLkdhdGV3YX'
    'lXaXBlZEgAUgV3aXBlZEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use gatewayConnectResponseDescriptor instead')
const GatewayConnectResponse$json = {
  '1': 'GatewayConnectResponse',
  '2': [
    {
      '1': 'from_user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'fromUserId'
    },
    {'1': 'session_id', '3': 4, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'offer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpOffer',
      '9': 0,
      '10': 'offer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
    {
      '1': 'redeem_invite',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.RedeemInvite',
      '9': 0,
      '10': 'redeemInvite'
    },
    {
      '1': 'vouched_administrators',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.VouchedAdministrators',
      '9': 0,
      '10': 'vouchedAdministrators'
    },
    {
      '1': 'transfer_outcome',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.TransferOutcome',
      '9': 0,
      '10': 'transferOutcome'
    },
    {
      '1': 'stream_opened',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.GatewayStreamOpened',
      '9': 0,
      '10': 'streamOpened'
    },
    {
      '1': 'gateway_deleted',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.GatewayDeleted',
      '9': 0,
      '10': 'gatewayDeleted'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `GatewayConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayConnectResponseDescriptor = $convert.base64Decode(
    'ChZHYXRld2F5Q29ubmVjdFJlc3BvbnNlEkEKDGZyb21fdXNlcl9pZBgBIAEoCzIfLmt1c2ludG'
    'EuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIKZnJvbVVzZXJJZBIdCgpzZXNzaW9uX2lkGAQgASgJ'
    'UglzZXNzaW9uSWQSOgoFb2ZmZXIYAiABKAsyIi5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuU2'
    'RwT2ZmZXJIAFIFb2ZmZXISTQoNaWNlX2NhbmRpZGF0ZRgDIAEoCzImLmt1c2ludGEuaW90LnNp'
    'Z25hbGluZy52MS5JY2VDYW5kaWRhdGVIAFIMaWNlQ2FuZGlkYXRlEk0KDXJlZGVlbV9pbnZpdG'
    'UYBSABKAsyJi5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuUmVkZWVtSW52aXRlSABSDHJlZGVl'
    'bUludml0ZRJoChZ2b3VjaGVkX2FkbWluaXN0cmF0b3JzGAYgASgLMi8ua3VzaW50YS5pb3Quc2'
    'lnbmFsaW5nLnYxLlZvdWNoZWRBZG1pbmlzdHJhdG9yc0gAUhV2b3VjaGVkQWRtaW5pc3RyYXRv'
    'cnMSVgoQdHJhbnNmZXJfb3V0Y29tZRgHIAEoCzIpLmt1c2ludGEuaW90LnNpZ25hbGluZy52MS'
    '5UcmFuc2Zlck91dGNvbWVIAFIPdHJhbnNmZXJPdXRjb21lElQKDXN0cmVhbV9vcGVuZWQYCCAB'
    'KAsyLS5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuR2F0ZXdheVN0cmVhbU9wZW5lZEgAUgxzdH'
    'JlYW1PcGVuZWQSUwoPZ2F0ZXdheV9kZWxldGVkGAkgASgLMigua3VzaW50YS5pb3Quc2lnbmFs'
    'aW5nLnYxLkdhdGV3YXlEZWxldGVkSABSDmdhdGV3YXlEZWxldGVkQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use redeemInviteDescriptor instead')
const RedeemInvite$json = {
  '1': 'RedeemInvite',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'token'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'code'},
    {'1': 'display_name', '3': 4, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'verified_email', '3': 5, '4': 1, '5': 9, '10': 'verifiedEmail'},
  ],
  '8': [
    {'1': 'secret'},
  ],
};

/// Descriptor for `RedeemInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redeemInviteDescriptor = $convert.base64Decode(
    'CgxSZWRlZW1JbnZpdGUSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEhYKBXRva2VuGA'
    'IgASgJSABSBXRva2VuEhQKBGNvZGUYAyABKAlIAFIEY29kZRIhCgxkaXNwbGF5X25hbWUYBCAB'
    'KAlSC2Rpc3BsYXlOYW1lEiUKDnZlcmlmaWVkX2VtYWlsGAUgASgJUg12ZXJpZmllZEVtYWlsQg'
    'gKBnNlY3JldA==');

@$core.Deprecated('Use redeemInviteResultDescriptor instead')
const RedeemInviteResult$json = {
  '1': 'RedeemInviteResult',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'outcome',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.signaling.v1.RedeemOutcome',
      '10': 'outcome'
    },
  ],
};

/// Descriptor for `RedeemInviteResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List redeemInviteResultDescriptor = $convert.base64Decode(
    'ChJSZWRlZW1JbnZpdGVSZXN1bHQSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEkEKB2'
    '91dGNvbWUYAiABKA4yJy5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuUmVkZWVtT3V0Y29tZVIH'
    'b3V0Y29tZQ==');

@$core.Deprecated('Use gatewayStreamOpenedDescriptor instead')
const GatewayStreamOpened$json = {
  '1': 'GatewayStreamOpened',
  '2': [
    {'1': 'ownership_epoch', '3': 1, '4': 1, '5': 9, '10': 'ownershipEpoch'},
  ],
};

/// Descriptor for `GatewayStreamOpened`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayStreamOpenedDescriptor = $convert.base64Decode(
    'ChNHYXRld2F5U3RyZWFtT3BlbmVkEicKD293bmVyc2hpcF9lcG9jaBgBIAEoCVIOb3duZXJzaG'
    'lwRXBvY2g=');

@$core.Deprecated('Use gatewayDeletedDescriptor instead')
const GatewayDeleted$json = {
  '1': 'GatewayDeleted',
  '2': [
    {'1': 'ownership_epoch', '3': 1, '4': 1, '5': 9, '10': 'ownershipEpoch'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.signaling.v1.WipeScope',
      '10': 'scope'
    },
  ],
};

/// Descriptor for `GatewayDeleted`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayDeletedDescriptor = $convert.base64Decode(
    'Cg5HYXRld2F5RGVsZXRlZBInCg9vd25lcnNoaXBfZXBvY2gYASABKAlSDm93bmVyc2hpcEVwb2'
    'NoEjkKBXNjb3BlGAIgASgOMiMua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLldpcGVTY29wZVIF'
    'c2NvcGU=');

@$core.Deprecated('Use gatewayWipedDescriptor instead')
const GatewayWiped$json = {
  '1': 'GatewayWiped',
  '2': [
    {'1': 'ownership_epoch', '3': 1, '4': 1, '5': 9, '10': 'ownershipEpoch'},
    {
      '1': 'scope',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.signaling.v1.WipeScope',
      '10': 'scope'
    },
    {
      '1': 'left_behind',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.PairingsLeftBehind',
      '10': 'leftBehind'
    },
  ],
};

/// Descriptor for `GatewayWiped`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayWipedDescriptor = $convert.base64Decode(
    'CgxHYXRld2F5V2lwZWQSJwoPb3duZXJzaGlwX2Vwb2NoGAEgASgJUg5vd25lcnNoaXBFcG9jaB'
    'I5CgVzY29wZRgCIAEoDjIjLmt1c2ludGEuaW90LnNpZ25hbGluZy52MS5XaXBlU2NvcGVSBXNj'
    'b3BlEk0KC2xlZnRfYmVoaW5kGAMgAygLMiwua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLlBhaX'
    'JpbmdzTGVmdEJlaGluZFIKbGVmdEJlaGluZA==');

@$core.Deprecated('Use pairingsLeftBehindDescriptor instead')
const PairingsLeftBehind$json = {
  '1': 'PairingsLeftBehind',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.ConnectorKind',
      '10': 'kind'
    },
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

/// Descriptor for `PairingsLeftBehind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairingsLeftBehindDescriptor = $convert.base64Decode(
    'ChJQYWlyaW5nc0xlZnRCZWhpbmQSOAoEa2luZBgBIAEoDjIkLmt1c2ludGEuaW90LmNvbW1vbi'
    '52MS5Db25uZWN0b3JLaW5kUgRraW5kEiEKDGRpc3BsYXlfbmFtZRgCIAEoCVILZGlzcGxheU5h'
    'bWU=');

@$core.Deprecated('Use vouchedAdministratorsDescriptor instead')
const VouchedAdministrators$json = {
  '1': 'VouchedAdministrators',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 4, '10': 'version'},
    {
      '1': 'administrators',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'administrators'
    },
    {
      '1': 'organisation_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'organisationName'
    },
    {
      '1': 'issued_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'issuedAt'
    },
  ],
};

/// Descriptor for `VouchedAdministrators`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vouchedAdministratorsDescriptor = $convert.base64Decode(
    'ChVWb3VjaGVkQWRtaW5pc3RyYXRvcnMSGAoHdmVyc2lvbhgBIAEoBFIHdmVyc2lvbhJHCg5hZG'
    '1pbmlzdHJhdG9ycxgCIAMoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIOYWRt'
    'aW5pc3RyYXRvcnMSKwoRb3JnYW5pc2F0aW9uX25hbWUYAyABKAlSEG9yZ2FuaXNhdGlvbk5hbW'
    'USNwoJaXNzdWVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIaXNzdWVk'
    'QXQ=');

@$core.Deprecated('Use vouchedAdministratorsAppliedDescriptor instead')
const VouchedAdministratorsApplied$json = {
  '1': 'VouchedAdministratorsApplied',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 4, '10': 'version'},
  ],
};

/// Descriptor for `VouchedAdministratorsApplied`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vouchedAdministratorsAppliedDescriptor =
    $convert.base64Decode(
        'ChxWb3VjaGVkQWRtaW5pc3RyYXRvcnNBcHBsaWVkEhgKB3ZlcnNpb24YASABKARSB3ZlcnNpb2'
        '4=');

@$core.Deprecated('Use transferOutcomeDescriptor instead')
const TransferOutcome$json = {
  '1': 'TransferOutcome',
  '2': [
    {'1': 'transfer_id', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
    {
      '1': 'administrators',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.VouchedAdministrators',
      '10': 'administrators'
    },
    {
      '1': 'outgoing',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.OutgoingChoice',
      '10': 'outgoing'
    },
  ],
};

/// Descriptor for `TransferOutcome`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferOutcomeDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2Zlck91dGNvbWUSHwoLdHJhbnNmZXJfaWQYASABKAlSCnRyYW5zZmVySWQSVwoOYW'
    'RtaW5pc3RyYXRvcnMYAiABKAsyLy5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuVm91Y2hlZEFk'
    'bWluaXN0cmF0b3JzUg5hZG1pbmlzdHJhdG9ycxJECghvdXRnb2luZxgDIAMoCzIoLmt1c2ludG'
    'EuaW90LnNpZ25hbGluZy52MS5PdXRnb2luZ0Nob2ljZVIIb3V0Z29pbmc=');

@$core.Deprecated('Use outgoingChoiceDescriptor instead')
const OutgoingChoice$json = {
  '1': 'OutgoingChoice',
  '2': [
    {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
    {
      '1': 'choice',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.signaling.v1.OutgoingStaffChoice',
      '10': 'choice'
    },
    {
      '1': 'access_until',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'accessUntil'
    },
  ],
};

/// Descriptor for `OutgoingChoice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outgoingChoiceDescriptor = $convert.base64Decode(
    'Cg5PdXRnb2luZ0Nob2ljZRI4Cgd1c2VyX2lkGAEgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdH'
    'kudjEuVXNlcklkUgZ1c2VySWQSRQoGY2hvaWNlGAIgASgOMi0ua3VzaW50YS5pb3Quc2lnbmFs'
    'aW5nLnYxLk91dGdvaW5nU3RhZmZDaG9pY2VSBmNob2ljZRI9CgxhY2Nlc3NfdW50aWwYAyABKA'
    'syGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgthY2Nlc3NVbnRpbA==');

@$core.Deprecated('Use transferOutcomeAppliedDescriptor instead')
const TransferOutcomeApplied$json = {
  '1': 'TransferOutcomeApplied',
  '2': [
    {'1': 'transfer_id', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
  ],
};

/// Descriptor for `TransferOutcomeApplied`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferOutcomeAppliedDescriptor =
    $convert.base64Decode(
        'ChZUcmFuc2Zlck91dGNvbWVBcHBsaWVkEh8KC3RyYW5zZmVyX2lkGAEgASgJUgp0cmFuc2Zlck'
        'lk');

@$core.Deprecated('Use userConnectRequestDescriptor instead')
const UserConnectRequest$json = {
  '1': 'UserConnectRequest',
  '2': [
    {'1': 'session_id', '3': 4, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'handshake',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.UserHandshake',
      '9': 0,
      '10': 'handshake'
    },
    {
      '1': 'offer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpOffer',
      '9': 0,
      '10': 'offer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `UserConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userConnectRequestDescriptor = $convert.base64Decode(
    'ChJVc2VyQ29ubmVjdFJlcXVlc3QSHQoKc2Vzc2lvbl9pZBgEIAEoCVIJc2Vzc2lvbklkEkcKCW'
    'hhbmRzaGFrZRgBIAEoCzInLmt1c2ludGEuaW90LnNpZ25hbGluZy52MS5Vc2VySGFuZHNoYWtl'
    'SABSCWhhbmRzaGFrZRI6CgVvZmZlchgCIAEoCzIiLmt1c2ludGEuaW90LnNpZ25hbGluZy52MS'
    '5TZHBPZmZlckgAUgVvZmZlchJNCg1pY2VfY2FuZGlkYXRlGAMgASgLMiYua3VzaW50YS5pb3Qu'
    'c2lnbmFsaW5nLnYxLkljZUNhbmRpZGF0ZUgAUgxpY2VDYW5kaWRhdGVCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use userConnectResponseDescriptor instead')
const UserConnectResponse$json = {
  '1': 'UserConnectResponse',
  '2': [
    {'1': 'session_id', '3': 4, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'handshake_ack',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.UserHandshakeAck',
      '9': 0,
      '10': 'handshakeAck'
    },
    {
      '1': 'answer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpAnswer',
      '9': 0,
      '10': 'answer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
    {
      '1': 'heartbeat',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.HeartBeat',
      '9': 0,
      '10': 'heartbeat'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `UserConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userConnectResponseDescriptor = $convert.base64Decode(
    'ChNVc2VyQ29ubmVjdFJlc3BvbnNlEh0KCnNlc3Npb25faWQYBCABKAlSCXNlc3Npb25JZBJRCg'
    '1oYW5kc2hha2VfYWNrGAEgASgLMioua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLlVzZXJIYW5k'
    'c2hha2VBY2tIAFIMaGFuZHNoYWtlQWNrEj0KBmFuc3dlchgCIAEoCzIjLmt1c2ludGEuaW90Ln'
    'NpZ25hbGluZy52MS5TZHBBbnN3ZXJIAFIGYW5zd2VyEk0KDWljZV9jYW5kaWRhdGUYAyABKAsy'
    'Ji5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuSWNlQ2FuZGlkYXRlSABSDGljZUNhbmRpZGF0ZR'
    'JDCgloZWFydGJlYXQYBSABKAsyIy5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuSGVhcnRCZWF0'
    'SABSCWhlYXJ0YmVhdEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use userListenRequestDescriptor instead')
const UserListenRequest$json = {
  '1': 'UserListenRequest',
  '2': [
    {
      '1': 'handshake',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.UserHandshake',
      '10': 'handshake'
    },
    {'1': 'session_id', '3': 4, '4': 1, '5': 9, '10': 'sessionId'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `UserListenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListenRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyTGlzdGVuUmVxdWVzdBJFCgloYW5kc2hha2UYASABKAsyJy5rdXNpbnRhLmlvdC5zaW'
    'duYWxpbmcudjEuVXNlckhhbmRzaGFrZVIJaGFuZHNoYWtlEh0KCnNlc3Npb25faWQYBCABKAlS'
    'CXNlc3Npb25JZEoECAIQA0oECAMQBA==');

@$core.Deprecated('Use userListenResponseDescriptor instead')
const UserListenResponse$json = {
  '1': 'UserListenResponse',
  '2': [
    {
      '1': 'response',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.UserConnectResponse',
      '10': 'response'
    },
  ],
};

/// Descriptor for `UserListenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListenResponseDescriptor = $convert.base64Decode(
    'ChJVc2VyTGlzdGVuUmVzcG9uc2USSQoIcmVzcG9uc2UYASABKAsyLS5rdXNpbnRhLmlvdC5zaW'
    'duYWxpbmcudjEuVXNlckNvbm5lY3RSZXNwb25zZVIIcmVzcG9uc2U=');

@$core.Deprecated('Use userSendRequestDescriptor instead')
const UserSendRequest$json = {
  '1': 'UserSendRequest',
  '2': [
    {'1': 'session_id', '3': 4, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'offer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpOffer',
      '9': 0,
      '10': 'offer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
  '10': ['handshake'],
};

/// Descriptor for `UserSendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSendRequestDescriptor = $convert.base64Decode(
    'Cg9Vc2VyU2VuZFJlcXVlc3QSHQoKc2Vzc2lvbl9pZBgEIAEoCVIJc2Vzc2lvbklkEjoKBW9mZm'
    'VyGAIgASgLMiIua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLlNkcE9mZmVySABSBW9mZmVyEk0K'
    'DWljZV9jYW5kaWRhdGUYAyABKAsyJi5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuSWNlQ2FuZG'
    'lkYXRlSABSDGljZUNhbmRpZGF0ZUIJCgdwYXlsb2FkSgQIARACUgloYW5kc2hha2U=');

@$core.Deprecated('Use userSendResponseDescriptor instead')
const UserSendResponse$json = {
  '1': 'UserSendResponse',
};

/// Descriptor for `UserSendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSendResponseDescriptor =
    $convert.base64Decode('ChBVc2VyU2VuZFJlc3BvbnNl');
