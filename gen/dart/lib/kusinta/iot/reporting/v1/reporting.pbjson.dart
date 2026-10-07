// This is a generated file - do not edit.
//
// Generated from kusinta/iot/reporting/v1/reporting.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use problemKindDescriptor instead')
const ProblemKind$json = {
  '1': 'ProblemKind',
  '2': [
    {'1': 'PROBLEM_KIND_UNSPECIFIED', '2': 0},
    {'1': 'PROBLEM_KIND_DEVICE_OFFLINE', '2': 1},
    {'1': 'PROBLEM_KIND_BATTERY_LOW', '2': 2},
    {'1': 'PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED', '2': 3},
    {'1': 'PROBLEM_KIND_DEVICE_ERROR', '2': 4},
    {'1': 'PROBLEM_KIND_DEVICE_TAMPER', '2': 5},
    {'1': 'PROBLEM_KIND_CONNECTOR_OFFLINE', '2': 6},
    {'1': 'PROBLEM_KIND_CONNECTOR_ERROR', '2': 7},
    {'1': 'PROBLEM_KIND_UNFILED_DEVICES', '2': 8},
    {'1': 'PROBLEM_KIND_WINDOW_OPEN', '2': 9},
  ],
};

/// Descriptor for `ProblemKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List problemKindDescriptor = $convert.base64Decode(
    'CgtQcm9ibGVtS2luZBIcChhQUk9CTEVNX0tJTkRfVU5TUEVDSUZJRUQQABIfChtQUk9CTEVNX0'
    'tJTkRfREVWSUNFX09GRkxJTkUQARIcChhQUk9CTEVNX0tJTkRfQkFUVEVSWV9MT1cQAhIrCidQ'
    'Uk9CTEVNX0tJTkRfQkFUVEVSWV9SRVBMQUNFTUVOVF9ORUVERUQQAxIdChlQUk9CTEVNX0tJTk'
    'RfREVWSUNFX0VSUk9SEAQSHgoaUFJPQkxFTV9LSU5EX0RFVklDRV9UQU1QRVIQBRIiCh5QUk9C'
    'TEVNX0tJTkRfQ09OTkVDVE9SX09GRkxJTkUQBhIgChxQUk9CTEVNX0tJTkRfQ09OTkVDVE9SX0'
    'VSUk9SEAcSIAocUFJPQkxFTV9LSU5EX1VORklMRURfREVWSUNFUxAIEhwKGFBST0JMRU1fS0lO'
    'RF9XSU5ET1dfT1BFThAJ');

@$core.Deprecated('Use clearReasonDescriptor instead')
const ClearReason$json = {
  '1': 'ClearReason',
  '2': [
    {'1': 'CLEAR_REASON_UNSPECIFIED', '2': 0},
    {'1': 'CLEAR_REASON_RECOVERED', '2': 1},
    {'1': 'CLEAR_REASON_FILED', '2': 2},
    {'1': 'CLEAR_REASON_DEVICE_REMOVED', '2': 3},
    {'1': 'CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE', '2': 4},
    {'1': 'CLEAR_REASON_NO_LONGER_REPORTED', '2': 5},
    {'1': 'CLEAR_REASON_MOVED', '2': 6},
  ],
};

/// Descriptor for `ClearReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List clearReasonDescriptor = $convert.base64Decode(
    'CgtDbGVhclJlYXNvbhIcChhDTEVBUl9SRUFTT05fVU5TUEVDSUZJRUQQABIaChZDTEVBUl9SRU'
    'FTT05fUkVDT1ZFUkVEEAESFgoSQ0xFQVJfUkVBU09OX0ZJTEVEEAISHwobQ0xFQVJfUkVBU09O'
    'X0RFVklDRV9SRU1PVkVEEAMSMAosQ0xFQVJfUkVBU09OX1NVUEVSU0VERURfQllfQ09OTkVDVE'
    '9SX09GRkxJTkUQBBIjCh9DTEVBUl9SRUFTT05fTk9fTE9OR0VSX1JFUE9SVEVEEAUSFgoSQ0xF'
    'QVJfUkVBU09OX01PVkVEEAY=');

@$core.Deprecated('Use ackStatusDescriptor instead')
const AckStatus$json = {
  '1': 'AckStatus',
  '2': [
    {'1': 'ACK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'ACK_STATUS_APPLIED', '2': 1},
    {'1': 'ACK_STATUS_DUPLICATE', '2': 2},
    {'1': 'ACK_STATUS_REJECTED', '2': 3},
    {'1': 'ACK_STATUS_HELD', '2': 4},
  ],
};

/// Descriptor for `AckStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ackStatusDescriptor = $convert.base64Decode(
    'CglBY2tTdGF0dXMSGgoWQUNLX1NUQVRVU19VTlNQRUNJRklFRBAAEhYKEkFDS19TVEFUVVNfQV'
    'BQTElFRBABEhgKFEFDS19TVEFUVVNfRFVQTElDQVRFEAISFwoTQUNLX1NUQVRVU19SRUpFQ1RF'
    'RBADEhMKD0FDS19TVEFUVVNfSEVMRBAE');

@$core.Deprecated('Use snapshotPartDescriptor instead')
const SnapshotPart$json = {
  '1': 'SnapshotPart',
  '2': [
    {'1': 'snapshot_id', '3': 1, '4': 1, '5': 9, '10': 'snapshotId'},
    {'1': 'part', '3': 2, '4': 1, '5': 13, '10': 'part'},
    {'1': 'last', '3': 3, '4': 1, '5': 8, '10': 'last'},
  ],
};

/// Descriptor for `SnapshotPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotPartDescriptor = $convert.base64Decode(
    'CgxTbmFwc2hvdFBhcnQSHwoLc25hcHNob3RfaWQYASABKAlSCnNuYXBzaG90SWQSEgoEcGFydB'
    'gCIAEoDVIEcGFydBISCgRsYXN0GAMgASgIUgRsYXN0');

@$core.Deprecated('Use problemSubjectDescriptor instead')
const ProblemSubject$json = {
  '1': 'ProblemSubject',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '9': 0,
      '10': 'deviceId'
    },
    {
      '1': 'connector_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.ConnectorId',
      '9': 0,
      '10': 'connectorId'
    },
    {
      '1': 'room_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '9': 0,
      '10': 'roomId'
    },
    {'1': 'gateway', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'gateway'},
  ],
  '8': [
    {'1': 'subject'},
  ],
};

/// Descriptor for `ProblemSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List problemSubjectDescriptor = $convert.base64Decode(
    'Cg5Qcm9ibGVtU3ViamVjdBJACglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5EZXZpY2VJZEgAUghkZXZpY2VJZBJJCgxjb25uZWN0b3JfaWQYAiABKAsyJC5rdXNp'
    'bnRhLmlvdC5pZGVudGl0eS52MS5Db25uZWN0b3JJZEgAUgtjb25uZWN0b3JJZBI7Cgdyb29tX2'
    'lkGAMgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZEgAUgZyb29tSWQSGgoH'
    'Z2F0ZXdheRgEIAEoCEgAUgdnYXRld2F5QgkKB3N1YmplY3Q=');

@$core.Deprecated('Use problemDescriptor instead')
const Problem$json = {
  '1': 'Problem',
  '2': [
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.reporting.v1.ProblemKind',
      '10': 'kind'
    },
    {
      '1': 'subject',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.ProblemSubject',
      '10': 'subject'
    },
    {
      '1': 'space_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'opened_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'openedAt'
    },
    {
      '1': 'battery_percent',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'batteryPercent',
      '17': true
    },
    {'1': 'device_count', '3': 7, '4': 1, '5': 13, '10': 'deviceCount'},
  ],
  '8': [
    {'1': '_battery_percent'},
  ],
};

/// Descriptor for `Problem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List problemDescriptor = $convert.base64Decode(
    'CgdQcm9ibGVtEjkKBGtpbmQYAiABKA4yJS5rdXNpbnRhLmlvdC5yZXBvcnRpbmcudjEuUHJvYm'
    'xlbUtpbmRSBGtpbmQSQgoHc3ViamVjdBgDIAEoCzIoLmt1c2ludGEuaW90LnJlcG9ydGluZy52'
    'MS5Qcm9ibGVtU3ViamVjdFIHc3ViamVjdBI7CghzcGFjZV9pZBgEIAEoCzIgLmt1c2ludGEuaW'
    '90LmlkZW50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSNwoJb3BlbmVkX2F0GAUgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIb3BlbmVkQXQSLAoPYmF0dGVyeV9wZXJjZW50GAYgAS'
    'gNSABSDmJhdHRlcnlQZXJjZW50iAEBEiEKDGRldmljZV9jb3VudBgHIAEoDVILZGV2aWNlQ291'
    'bnRCEgoQX2JhdHRlcnlfcGVyY2VudA==');

@$core.Deprecated('Use problemClearedDescriptor instead')
const ProblemCleared$json = {
  '1': 'ProblemCleared',
  '2': [
    {
      '1': 'cleared_at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'clearedAt'
    },
    {
      '1': 'reason',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.reporting.v1.ClearReason',
      '10': 'reason'
    },
  ],
};

/// Descriptor for `ProblemCleared`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List problemClearedDescriptor = $convert.base64Decode(
    'Cg5Qcm9ibGVtQ2xlYXJlZBI5CgpjbGVhcmVkX2F0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcFIJY2xlYXJlZEF0Ej0KBnJlYXNvbhgCIAEoDjIlLmt1c2ludGEuaW90LnJlcG9y'
    'dGluZy52MS5DbGVhclJlYXNvblIGcmVhc29u');

@$core.Deprecated('Use problemTransitionDescriptor instead')
const ProblemTransition$json = {
  '1': 'ProblemTransition',
  '2': [
    {'1': 'problem_id', '3': 1, '4': 1, '5': 9, '10': 'problemId'},
    {'1': 'seq', '3': 2, '4': 1, '5': 4, '10': 'seq'},
    {
      '1': 'open',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.Problem',
      '9': 0,
      '10': 'open'
    },
    {
      '1': 'cleared',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.ProblemCleared',
      '9': 0,
      '10': 'cleared'
    },
  ],
  '8': [
    {'1': 'change'},
  ],
};

/// Descriptor for `ProblemTransition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List problemTransitionDescriptor = $convert.base64Decode(
    'ChFQcm9ibGVtVHJhbnNpdGlvbhIdCgpwcm9ibGVtX2lkGAEgASgJUglwcm9ibGVtSWQSEAoDc2'
    'VxGAIgASgEUgNzZXESNwoEb3BlbhgDIAEoCzIhLmt1c2ludGEuaW90LnJlcG9ydGluZy52MS5Q'
    'cm9ibGVtSABSBG9wZW4SRAoHY2xlYXJlZBgEIAEoCzIoLmt1c2ludGEuaW90LnJlcG9ydGluZy'
    '52MS5Qcm9ibGVtQ2xlYXJlZEgAUgdjbGVhcmVkQggKBmNoYW5nZQ==');

@$core.Deprecated('Use reportProblemsRequestDescriptor instead')
const ReportProblemsRequest$json = {
  '1': 'ReportProblemsRequest',
  '2': [
    {'1': 'stream_id', '3': 3, '4': 1, '5': 9, '10': 'streamId'},
    {
      '1': 'previous_stream_ids',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'previousStreamIds'
    },
    {'1': 'seq', '3': 4, '4': 1, '5': 4, '10': 'seq'},
    {
      '1': 'transitions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.ProblemTransition',
      '10': 'transitions'
    },
    {
      '1': 'snapshot',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.SnapshotPart',
      '10': 'snapshot'
    },
  ],
};

/// Descriptor for `ReportProblemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportProblemsRequestDescriptor = $convert.base64Decode(
    'ChVSZXBvcnRQcm9ibGVtc1JlcXVlc3QSGwoJc3RyZWFtX2lkGAMgASgJUghzdHJlYW1JZBIuCh'
    'NwcmV2aW91c19zdHJlYW1faWRzGAUgAygJUhFwcmV2aW91c1N0cmVhbUlkcxIQCgNzZXEYBCAB'
    'KARSA3NlcRJNCgt0cmFuc2l0aW9ucxgBIAMoCzIrLmt1c2ludGEuaW90LnJlcG9ydGluZy52MS'
    '5Qcm9ibGVtVHJhbnNpdGlvblILdHJhbnNpdGlvbnMSQgoIc25hcHNob3QYAiABKAsyJi5rdXNp'
    'bnRhLmlvdC5yZXBvcnRpbmcudjEuU25hcHNob3RQYXJ0UghzbmFwc2hvdA==');

@$core.Deprecated('Use transitionAckDescriptor instead')
const TransitionAck$json = {
  '1': 'TransitionAck',
  '2': [
    {'1': 'problem_id', '3': 1, '4': 1, '5': 9, '10': 'problemId'},
    {'1': 'seq', '3': 2, '4': 1, '5': 4, '10': 'seq'},
    {
      '1': 'status',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.reporting.v1.AckStatus',
      '10': 'status'
    },
  ],
};

/// Descriptor for `TransitionAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transitionAckDescriptor = $convert.base64Decode(
    'Cg1UcmFuc2l0aW9uQWNrEh0KCnByb2JsZW1faWQYASABKAlSCXByb2JsZW1JZBIQCgNzZXEYAi'
    'ABKARSA3NlcRI7CgZzdGF0dXMYAyABKA4yIy5rdXNpbnRhLmlvdC5yZXBvcnRpbmcudjEuQWNr'
    'U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use reportProblemsResponseDescriptor instead')
const ReportProblemsResponse$json = {
  '1': 'ReportProblemsResponse',
  '2': [
    {
      '1': 'acks',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.TransitionAck',
      '10': 'acks'
    },
    {'1': 'applied_seq', '3': 3, '4': 1, '5': 4, '10': 'appliedSeq'},
    {'1': 'resync_required', '3': 2, '4': 1, '5': 8, '10': 'resyncRequired'},
  ],
};

/// Descriptor for `ReportProblemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportProblemsResponseDescriptor = $convert.base64Decode(
    'ChZSZXBvcnRQcm9ibGVtc1Jlc3BvbnNlEjsKBGFja3MYASADKAsyJy5rdXNpbnRhLmlvdC5yZX'
    'BvcnRpbmcudjEuVHJhbnNpdGlvbkFja1IEYWNrcxIfCgthcHBsaWVkX3NlcRgDIAEoBFIKYXBw'
    'bGllZFNlcRInCg9yZXN5bmNfcmVxdWlyZWQYAiABKAhSDnJlc3luY1JlcXVpcmVk');

@$core.Deprecated('Use serviceReachDescriptor instead')
const ServiceReach$json = {
  '1': 'ServiceReach',
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
      '1': 'spaces',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.ReachedSpace',
      '10': 'spaces'
    },
  ],
};

/// Descriptor for `ServiceReach`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceReachDescriptor = $convert.base64Decode(
    'CgxTZXJ2aWNlUmVhY2gSOAoHdXNlcl9pZBgBIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlVzZXJJZFIGdXNlcklkEj4KBnNwYWNlcxgDIAMoCzImLmt1c2ludGEuaW90LnJlcG9ydGlu'
    'Zy52MS5SZWFjaGVkU3BhY2VSBnNwYWNlcw==');

@$core.Deprecated('Use reachedSpaceDescriptor instead')
const ReachedSpace$json = {
  '1': 'ReachedSpace',
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
      '1': 'since',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'since'
    },
  ],
};

/// Descriptor for `ReachedSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reachedSpaceDescriptor = $convert.base64Decode(
    'CgxSZWFjaGVkU3BhY2USOwoIc3BhY2VfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgdzcGFjZUlkEjAKBXNpbmNlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRp'
    'bWVzdGFtcFIFc2luY2U=');

@$core.Deprecated('Use reportServiceReachRequestDescriptor instead')
const ReportServiceReachRequest$json = {
  '1': 'ReportServiceReachRequest',
  '2': [
    {'1': 'stream_id', '3': 5, '4': 1, '5': 9, '10': 'streamId'},
    {
      '1': 'previous_stream_ids',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'previousStreamIds'
    },
    {'1': 'seq', '3': 1, '4': 1, '5': 4, '10': 'seq'},
    {
      '1': 'reach',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.ServiceReach',
      '10': 'reach'
    },
    {
      '1': 'removed_user_ids',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'removedUserIds'
    },
    {
      '1': 'snapshot',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.SnapshotPart',
      '10': 'snapshot'
    },
  ],
};

/// Descriptor for `ReportServiceReachRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportServiceReachRequestDescriptor = $convert.base64Decode(
    'ChlSZXBvcnRTZXJ2aWNlUmVhY2hSZXF1ZXN0EhsKCXN0cmVhbV9pZBgFIAEoCVIIc3RyZWFtSW'
    'QSLgoTcHJldmlvdXNfc3RyZWFtX2lkcxgGIAMoCVIRcHJldmlvdXNTdHJlYW1JZHMSEAoDc2Vx'
    'GAEgASgEUgNzZXESPAoFcmVhY2gYAiADKAsyJi5rdXNpbnRhLmlvdC5yZXBvcnRpbmcudjEuU2'
    'VydmljZVJlYWNoUgVyZWFjaBJJChByZW1vdmVkX3VzZXJfaWRzGAMgAygLMh8ua3VzaW50YS5p'
    'b3QuaWRlbnRpdHkudjEuVXNlcklkUg5yZW1vdmVkVXNlcklkcxJCCghzbmFwc2hvdBgEIAEoCz'
    'ImLmt1c2ludGEuaW90LnJlcG9ydGluZy52MS5TbmFwc2hvdFBhcnRSCHNuYXBzaG90');

@$core.Deprecated('Use reportServiceReachResponseDescriptor instead')
const ReportServiceReachResponse$json = {
  '1': 'ReportServiceReachResponse',
  '2': [
    {'1': 'applied_seq', '3': 1, '4': 1, '5': 4, '10': 'appliedSeq'},
    {'1': 'resync_required', '3': 2, '4': 1, '5': 8, '10': 'resyncRequired'},
  ],
};

/// Descriptor for `ReportServiceReachResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportServiceReachResponseDescriptor =
    $convert.base64Decode(
        'ChpSZXBvcnRTZXJ2aWNlUmVhY2hSZXNwb25zZRIfCgthcHBsaWVkX3NlcRgBIAEoBFIKYXBwbG'
        'llZFNlcRInCg9yZXN5bmNfcmVxdWlyZWQYAiABKAhSDnJlc3luY1JlcXVpcmVk');

@$core.Deprecated('Use servedSpaceDescriptor instead')
const ServedSpace$json = {
  '1': 'ServedSpace',
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
      '10': 'spaceType'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'parent_space_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'parentSpaceId'
    },
    {'1': 'floor', '3': 5, '4': 1, '5': 5, '10': 'floor'},
    {'1': 'time_zone', '3': 6, '4': 1, '5': 9, '10': 'timeZone'},
  ],
};

/// Descriptor for `ServedSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List servedSpaceDescriptor = $convert.base64Decode(
    'CgtTZXJ2ZWRTcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlNwYWNlSWRSB3NwYWNlSWQSPwoKc3BhY2VfdHlwZRgCIAEoDjIgLmt1c2ludGEuaW90LmNv'
    'bW1vbi52MS5TcGFjZVR5cGVSCXNwYWNlVHlwZRISCgRuYW1lGAMgASgJUgRuYW1lEkgKD3Bhcm'
    'VudF9zcGFjZV9pZBgEIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSDXBh'
    'cmVudFNwYWNlSWQSFAoFZmxvb3IYBSABKAVSBWZsb29yEhsKCXRpbWVfem9uZRgGIAEoCVIIdG'
    'ltZVpvbmU=');

@$core.Deprecated('Use reportServedSpacesRequestDescriptor instead')
const ReportServedSpacesRequest$json = {
  '1': 'ReportServedSpacesRequest',
  '2': [
    {'1': 'stream_id', '3': 5, '4': 1, '5': 9, '10': 'streamId'},
    {
      '1': 'previous_stream_ids',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'previousStreamIds'
    },
    {'1': 'seq', '3': 1, '4': 1, '5': 4, '10': 'seq'},
    {
      '1': 'spaces',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.ServedSpace',
      '10': 'spaces'
    },
    {
      '1': 'removed_space_ids',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'removedSpaceIds'
    },
    {
      '1': 'snapshot',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.reporting.v1.SnapshotPart',
      '10': 'snapshot'
    },
  ],
};

/// Descriptor for `ReportServedSpacesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportServedSpacesRequestDescriptor = $convert.base64Decode(
    'ChlSZXBvcnRTZXJ2ZWRTcGFjZXNSZXF1ZXN0EhsKCXN0cmVhbV9pZBgFIAEoCVIIc3RyZWFtSW'
    'QSLgoTcHJldmlvdXNfc3RyZWFtX2lkcxgGIAMoCVIRcHJldmlvdXNTdHJlYW1JZHMSEAoDc2Vx'
    'GAEgASgEUgNzZXESPQoGc3BhY2VzGAIgAygLMiUua3VzaW50YS5pb3QucmVwb3J0aW5nLnYxLl'
    'NlcnZlZFNwYWNlUgZzcGFjZXMSTAoRcmVtb3ZlZF9zcGFjZV9pZHMYAyADKAsyIC5rdXNpbnRh'
    'LmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUg9yZW1vdmVkU3BhY2VJZHMSQgoIc25hcHNob3QYBC'
    'ABKAsyJi5rdXNpbnRhLmlvdC5yZXBvcnRpbmcudjEuU25hcHNob3RQYXJ0UghzbmFwc2hvdA==');

@$core.Deprecated('Use reportServedSpacesResponseDescriptor instead')
const ReportServedSpacesResponse$json = {
  '1': 'ReportServedSpacesResponse',
  '2': [
    {'1': 'applied_seq', '3': 1, '4': 1, '5': 4, '10': 'appliedSeq'},
    {'1': 'resync_required', '3': 2, '4': 1, '5': 8, '10': 'resyncRequired'},
  ],
};

/// Descriptor for `ReportServedSpacesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportServedSpacesResponseDescriptor =
    $convert.base64Decode(
        'ChpSZXBvcnRTZXJ2ZWRTcGFjZXNSZXNwb25zZRIfCgthcHBsaWVkX3NlcRgBIAEoBFIKYXBwbG'
        'llZFNlcRInCg9yZXN5bmNfcmVxdWlyZWQYAiABKAhSDnJlc3luY1JlcXVpcmVk');
