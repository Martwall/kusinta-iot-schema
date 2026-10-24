// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/household.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use staffAppointmentKindDescriptor instead')
const StaffAppointmentKind$json = {
  '1': 'StaffAppointmentKind',
  '2': [
    {'1': 'STAFF_APPOINTMENT_KIND_UNSPECIFIED', '2': 0},
    {'1': 'STAFF_APPOINTMENT_KIND_INVITE', '2': 1},
    {'1': 'STAFF_APPOINTMENT_KIND_PROMOTION', '2': 2},
  ],
};

/// Descriptor for `StaffAppointmentKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List staffAppointmentKindDescriptor = $convert.base64Decode(
    'ChRTdGFmZkFwcG9pbnRtZW50S2luZBImCiJTVEFGRl9BUFBPSU5UTUVOVF9LSU5EX1VOU1BFQ0'
    'lGSUVEEAASIQodU1RBRkZfQVBQT0lOVE1FTlRfS0lORF9JTlZJVEUQARIkCiBTVEFGRl9BUFBP'
    'SU5UTUVOVF9LSU5EX1BST01PVElPThAC');

@$core.Deprecated('Use householdHandoverStateDescriptor instead')
const HouseholdHandoverState$json = {
  '1': 'HouseholdHandoverState',
  '2': [
    {'1': 'HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED', '2': 0},
    {'1': 'HOUSEHOLD_HANDOVER_STATE_PENDING', '2': 1},
    {'1': 'HOUSEHOLD_HANDOVER_STATE_CANCELLED', '2': 2},
    {'1': 'HOUSEHOLD_HANDOVER_STATE_DONE', '2': 3},
  ],
};

/// Descriptor for `HouseholdHandoverState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List householdHandoverStateDescriptor = $convert.base64Decode(
    'ChZIb3VzZWhvbGRIYW5kb3ZlclN0YXRlEigKJEhPVVNFSE9MRF9IQU5ET1ZFUl9TVEFURV9VTl'
    'NQRUNJRklFRBAAEiQKIEhPVVNFSE9MRF9IQU5ET1ZFUl9TVEFURV9QRU5ESU5HEAESJgoiSE9V'
    'U0VIT0xEX0hBTkRPVkVSX1NUQVRFX0NBTkNFTExFRBACEiEKHUhPVVNFSE9MRF9IQU5ET1ZFUl'
    '9TVEFURV9ET05FEAM=');

@$core.Deprecated('Use demoteHouseholdAdminDescriptor instead')
const DemoteHouseholdAdmin$json = {
  '1': 'DemoteHouseholdAdmin',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
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

/// Descriptor for `DemoteHouseholdAdmin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List demoteHouseholdAdminDescriptor = $convert.base64Decode(
    'ChREZW1vdGVIb3VzZWhvbGRBZG1pbhI5Cgdob21lX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuU3BhY2VJZFIGaG9tZUlkEjgKB3VzZXJfaWQYAiABKAsyHy5rdXNpbnRhLmlv'
    'dC5pZGVudGl0eS52MS5Vc2VySWRSBnVzZXJJZA==');

@$core.Deprecated('Use staffAppointmentDescriptor instead')
const StaffAppointment$json = {
  '1': 'StaffAppointment',
  '2': [
    {
      '1': 'appointee',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'appointee'
    },
    {
      '1': 'appointed_by',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'appointedBy'
    },
    {'1': 'appointed_by_name', '3': 3, '4': 1, '5': 9, '10': 'appointedByName'},
    {
      '1': 'at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'kind',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.webrtc.v1.StaffAppointmentKind',
      '10': 'kind'
    },
  ],
};

/// Descriptor for `StaffAppointment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffAppointmentDescriptor = $convert.base64Decode(
    'ChBTdGFmZkFwcG9pbnRtZW50Ej0KCWFwcG9pbnRlZRgBIAEoCzIfLmt1c2ludGEuaW90LmlkZW'
    '50aXR5LnYxLlVzZXJJZFIJYXBwb2ludGVlEkIKDGFwcG9pbnRlZF9ieRgCIAEoCzIfLmt1c2lu'
    'dGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFILYXBwb2ludGVkQnkSKgoRYXBwb2ludGVkX2J5X2'
    '5hbWUYAyABKAlSD2FwcG9pbnRlZEJ5TmFtZRIqCgJhdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5UaW1lc3RhbXBSAmF0Ej8KBGtpbmQYBSABKA4yKy5rdXNpbnRhLmlvdC53ZWJydGMudjEuU3'
    'RhZmZBcHBvaW50bWVudEtpbmRSBGtpbmQ=');

@$core.Deprecated('Use startHouseholdHandoverDescriptor instead')
const StartHouseholdHandover$json = {
  '1': 'StartHouseholdHandover',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
  ],
};

/// Descriptor for `StartHouseholdHandover`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startHouseholdHandoverDescriptor =
    $convert.base64Decode(
        'ChZTdGFydEhvdXNlaG9sZEhhbmRvdmVyEjkKB2hvbWVfaWQYASABKAsyIC5rdXNpbnRhLmlvdC'
        '5pZGVudGl0eS52MS5TcGFjZUlkUgZob21lSWQ=');

@$core.Deprecated('Use confirmHouseholdHandoverDescriptor instead')
const ConfirmHouseholdHandover$json = {
  '1': 'ConfirmHouseholdHandover',
  '2': [
    {'1': 'handover_id', '3': 1, '4': 1, '5': 9, '10': 'handoverId'},
  ],
};

/// Descriptor for `ConfirmHouseholdHandover`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmHouseholdHandoverDescriptor =
    $convert.base64Decode(
        'ChhDb25maXJtSG91c2Vob2xkSGFuZG92ZXISHwoLaGFuZG92ZXJfaWQYASABKAlSCmhhbmRvdm'
        'VySWQ=');

@$core.Deprecated('Use cancelHouseholdHandoverDescriptor instead')
const CancelHouseholdHandover$json = {
  '1': 'CancelHouseholdHandover',
  '2': [
    {'1': 'handover_id', '3': 1, '4': 1, '5': 9, '10': 'handoverId'},
  ],
};

/// Descriptor for `CancelHouseholdHandover`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelHouseholdHandoverDescriptor =
    $convert.base64Decode(
        'ChdDYW5jZWxIb3VzZWhvbGRIYW5kb3ZlchIfCgtoYW5kb3Zlcl9pZBgBIAEoCVIKaGFuZG92ZX'
        'JJZA==');

@$core.Deprecated('Use listHouseholdHandoversDescriptor instead')
const ListHouseholdHandovers$json = {
  '1': 'ListHouseholdHandovers',
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

/// Descriptor for `ListHouseholdHandovers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHouseholdHandoversDescriptor =
    $convert.base64Decode(
        'ChZMaXN0SG91c2Vob2xkSGFuZG92ZXJzEkQKDXJvb3Rfc3BhY2VfaWQYASABKAsyIC5rdXNpbn'
        'RhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgtyb290U3BhY2VJZA==');

@$core.Deprecated('Use householdHandoverDescriptor instead')
const HouseholdHandover$json = {
  '1': 'HouseholdHandover',
  '2': [
    {'1': 'handover_id', '3': 1, '4': 1, '5': 9, '10': 'handoverId'},
    {
      '1': 'home_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {
      '1': 'state',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.webrtc.v1.HouseholdHandoverState',
      '10': 'state'
    },
    {
      '1': 'started_by',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'startedBy'
    },
    {'1': 'started_by_name', '3': 5, '4': 1, '5': 9, '10': 'startedByName'},
    {'1': 'started_by_staff', '3': 6, '4': 1, '5': 8, '10': 'startedByStaff'},
    {
      '1': 'started_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startedAt'
    },
    {
      '1': 'staff_confirmable_from',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'staffConfirmableFrom'
    },
    {
      '1': 'ended_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endedAt'
    },
    {'1': 'vacated', '3': 10, '4': 1, '5': 8, '10': 'vacated'},
    {
      '1': 'recipient_in_household',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'recipientInHousehold'
    },
    {
      '1': 'recipient_household_admin',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'recipientHouseholdAdmin'
    },
  ],
};

/// Descriptor for `HouseholdHandover`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List householdHandoverDescriptor = $convert.base64Decode(
    'ChFIb3VzZWhvbGRIYW5kb3ZlchIfCgtoYW5kb3Zlcl9pZBgBIAEoCVIKaGFuZG92ZXJJZBI5Cg'
    'dob21lX2lkGAIgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFIGaG9tZUlk'
    'EkMKBXN0YXRlGAMgASgOMi0ua3VzaW50YS5pb3Qud2VicnRjLnYxLkhvdXNlaG9sZEhhbmRvdm'
    'VyU3RhdGVSBXN0YXRlEj4KCnN0YXJ0ZWRfYnkYBCABKAsyHy5rdXNpbnRhLmlvdC5pZGVudGl0'
    'eS52MS5Vc2VySWRSCXN0YXJ0ZWRCeRImCg9zdGFydGVkX2J5X25hbWUYBSABKAlSDXN0YXJ0ZW'
    'RCeU5hbWUSKAoQc3RhcnRlZF9ieV9zdGFmZhgGIAEoCFIOc3RhcnRlZEJ5U3RhZmYSOQoKc3Rh'
    'cnRlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YXJ0ZWRBdBJQCh'
    'ZzdGFmZl9jb25maXJtYWJsZV9mcm9tGAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFt'
    'cFIUc3RhZmZDb25maXJtYWJsZUZyb20SNQoIZW5kZWRfYXQYCSABKAsyGi5nb29nbGUucHJvdG'
    '9idWYuVGltZXN0YW1wUgdlbmRlZEF0EhgKB3ZhY2F0ZWQYCiABKAhSB3ZhY2F0ZWQSNAoWcmVj'
    'aXBpZW50X2luX2hvdXNlaG9sZBgLIAEoCFIUcmVjaXBpZW50SW5Ib3VzZWhvbGQSOgoZcmVjaX'
    'BpZW50X2hvdXNlaG9sZF9hZG1pbhgMIAEoCFIXcmVjaXBpZW50SG91c2Vob2xkQWRtaW4=');

@$core.Deprecated('Use setHomeNameDescriptor instead')
const SetHomeName$json = {
  '1': 'SetHomeName',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SetHomeName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setHomeNameDescriptor = $convert.base64Decode(
    'CgtTZXRIb21lTmFtZRI5Cgdob21lX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudj'
    'EuU3BhY2VJZFIGaG9tZUlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use householdHandoversDescriptor instead')
const HouseholdHandovers$json = {
  '1': 'HouseholdHandovers',
  '2': [
    {
      '1': 'handovers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.HouseholdHandover',
      '10': 'handovers'
    },
  ],
};

/// Descriptor for `HouseholdHandovers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List householdHandoversDescriptor = $convert.base64Decode(
    'ChJIb3VzZWhvbGRIYW5kb3ZlcnMSRgoJaGFuZG92ZXJzGAEgAygLMigua3VzaW50YS5pb3Qud2'
    'VicnRjLnYxLkhvdXNlaG9sZEhhbmRvdmVyUgloYW5kb3ZlcnM=');

@$core.Deprecated('Use exportHouseholdDataDescriptor instead')
const ExportHouseholdData$json = {
  '1': 'ExportHouseholdData',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {'1': 'part_token', '3': 2, '4': 1, '5': 9, '10': 'partToken'},
  ],
};

/// Descriptor for `ExportHouseholdData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportHouseholdDataDescriptor = $convert.base64Decode(
    'ChNFeHBvcnRIb3VzZWhvbGREYXRhEjkKB2hvbWVfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZG'
    'VudGl0eS52MS5TcGFjZUlkUgZob21lSWQSHQoKcGFydF90b2tlbhgCIAEoCVIJcGFydFRva2Vu');

@$core.Deprecated('Use householdExportDescriptor instead')
const HouseholdExport$json = {
  '1': 'HouseholdExport',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {
      '1': 'room_climates',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.RoomClimateList',
      '9': 0,
      '10': 'roomClimates'
    },
    {
      '1': 'room_history',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.RoomHistory',
      '9': 0,
      '10': 'roomHistory'
    },
    {
      '1': 'climate_summary',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.ApartmentClimateSummary',
      '9': 0,
      '10': 'climateSummary'
    },
    {
      '1': 'commissioning',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.CommissioningProfile',
      '9': 0,
      '10': 'commissioning'
    },
    {
      '1': 'heating',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingLayout',
      '9': 0,
      '10': 'heating'
    },
    {'1': 'next_part_token', '3': 7, '4': 1, '5': 9, '10': 'nextPartToken'},
  ],
  '8': [
    {'1': 'part'},
  ],
};

/// Descriptor for `HouseholdExport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List householdExportDescriptor = $convert.base64Decode(
    'Cg9Ib3VzZWhvbGRFeHBvcnQSOQoHaG9tZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLlNwYWNlSWRSBmhvbWVJZBJOCg1yb29tX2NsaW1hdGVzGAIgASgLMicua3VzaW50YS5p'
    'b3QuY2xpbWF0ZS52MS5Sb29tQ2xpbWF0ZUxpc3RIAFIMcm9vbUNsaW1hdGVzEkgKDHJvb21faG'
    'lzdG9yeRgDIAEoCzIjLmt1c2ludGEuaW90LmNsaW1hdGUudjEuUm9vbUhpc3RvcnlIAFILcm9v'
    'bUhpc3RvcnkSWgoPY2xpbWF0ZV9zdW1tYXJ5GAQgASgLMi8ua3VzaW50YS5pb3QuY2xpbWF0ZS'
    '52MS5BcGFydG1lbnRDbGltYXRlU3VtbWFyeUgAUg5jbGltYXRlU3VtbWFyeRJaCg1jb21taXNz'
    'aW9uaW5nGAUgASgLMjIua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5Db21taXNzaW9uaW'
    '5nUHJvZmlsZUgAUg1jb21taXNzaW9uaW5nEkEKB2hlYXRpbmcYBiABKAsyJS5rdXNpbnRhLmlv'
    'dC5oZWF0aW5nLnYxLkhlYXRpbmdMYXlvdXRIAFIHaGVhdGluZxImCg9uZXh0X3BhcnRfdG9rZW'
    '4YByABKAlSDW5leHRQYXJ0VG9rZW5CBgoEcGFydA==');
