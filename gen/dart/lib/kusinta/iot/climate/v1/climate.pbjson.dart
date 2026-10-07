// This is a generated file - do not edit.
//
// Generated from kusinta/iot/climate/v1/climate.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roomClimateConditionDescriptor instead')
const RoomClimateCondition$json = {
  '1': 'RoomClimateCondition',
  '2': [
    {'1': 'ROOM_CLIMATE_CONDITION_UNSPECIFIED', '2': 0},
    {'1': 'ROOM_CLIMATE_CONDITION_HOLDING', '2': 1},
    {'1': 'ROOM_CLIMATE_CONDITION_NO_TARGET', '2': 2},
    {'1': 'ROOM_CLIMATE_CONDITION_SENSOR_LOST', '2': 3},
    {'1': 'ROOM_CLIMATE_CONDITION_WINDOW_OPEN', '2': 4},
    {'1': 'ROOM_CLIMATE_CONDITION_NO_HEATING', '2': 5},
    {'1': 'ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE', '2': 6},
    {'1': 'ROOM_CLIMATE_CONDITION_NO_SENSOR', '2': 7},
  ],
};

/// Descriptor for `RoomClimateCondition`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomClimateConditionDescriptor = $convert.base64Decode(
    'ChRSb29tQ2xpbWF0ZUNvbmRpdGlvbhImCiJST09NX0NMSU1BVEVfQ09ORElUSU9OX1VOU1BFQ0'
    'lGSUVEEAASIgoeUk9PTV9DTElNQVRFX0NPTkRJVElPTl9IT0xESU5HEAESJAogUk9PTV9DTElN'
    'QVRFX0NPTkRJVElPTl9OT19UQVJHRVQQAhImCiJST09NX0NMSU1BVEVfQ09ORElUSU9OX1NFTl'
    'NPUl9MT1NUEAMSJgoiUk9PTV9DTElNQVRFX0NPTkRJVElPTl9XSU5ET1dfT1BFThAEEiUKIVJP'
    'T01fQ0xJTUFURV9DT05ESVRJT05fTk9fSEVBVElORxAFEi4KKlJPT01fQ0xJTUFURV9DT05ESV'
    'RJT05fSEVBVElOR19VTlJFQUNIQUJMRRAGEiQKIFJPT01fQ0xJTUFURV9DT05ESVRJT05fTk9f'
    'U0VOU09SEAc=');

@$core.Deprecated('Use climateModeKindDescriptor instead')
const ClimateModeKind$json = {
  '1': 'ClimateModeKind',
  '2': [
    {'1': 'CLIMATE_MODE_KIND_UNSPECIFIED', '2': 0},
    {'1': 'CLIMATE_MODE_KIND_AWAY', '2': 1},
    {'1': 'CLIMATE_MODE_KIND_HOLIDAY', '2': 2},
  ],
};

/// Descriptor for `ClimateModeKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List climateModeKindDescriptor = $convert.base64Decode(
    'Cg9DbGltYXRlTW9kZUtpbmQSIQodQ0xJTUFURV9NT0RFX0tJTkRfVU5TUEVDSUZJRUQQABIaCh'
    'ZDTElNQVRFX01PREVfS0lORF9BV0FZEAESHQoZQ0xJTUFURV9NT0RFX0tJTkRfSE9MSURBWRAC');

@$core.Deprecated('Use climateSummaryPeriodDescriptor instead')
const ClimateSummaryPeriod$json = {
  '1': 'ClimateSummaryPeriod',
  '2': [
    {'1': 'CLIMATE_SUMMARY_PERIOD_UNSPECIFIED', '2': 0},
    {'1': 'CLIMATE_SUMMARY_PERIOD_DAY', '2': 1},
    {'1': 'CLIMATE_SUMMARY_PERIOD_WEEK', '2': 2},
    {'1': 'CLIMATE_SUMMARY_PERIOD_MONTH', '2': 3},
  ],
};

/// Descriptor for `ClimateSummaryPeriod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List climateSummaryPeriodDescriptor = $convert.base64Decode(
    'ChRDbGltYXRlU3VtbWFyeVBlcmlvZBImCiJDTElNQVRFX1NVTU1BUllfUEVSSU9EX1VOU1BFQ0'
    'lGSUVEEAASHgoaQ0xJTUFURV9TVU1NQVJZX1BFUklPRF9EQVkQARIfChtDTElNQVRFX1NVTU1B'
    'UllfUEVSSU9EX1dFRUsQAhIgChxDTElNQVRFX1NVTU1BUllfUEVSSU9EX01PTlRIEAM=');

@$core.Deprecated('Use climateSummaryWeightingDescriptor instead')
const ClimateSummaryWeighting$json = {
  '1': 'ClimateSummaryWeighting',
  '2': [
    {'1': 'CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED', '2': 0},
    {'1': 'CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL', '2': 1},
  ],
};

/// Descriptor for `ClimateSummaryWeighting`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List climateSummaryWeightingDescriptor = $convert.base64Decode(
    'ChdDbGltYXRlU3VtbWFyeVdlaWdodGluZxIpCiVDTElNQVRFX1NVTU1BUllfV0VJR0hUSU5HX1'
    'VOU1BFQ0lGSUVEEAASKQolQ0xJTUFURV9TVU1NQVJZX1dFSUdIVElOR19ST09NU19FUVVBTBAB');

@$core.Deprecated('Use targetChangeDescriptor instead')
const TargetChange$json = {
  '1': 'TargetChange',
  '2': [
    {
      '1': 'at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'user',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '9': 0,
      '10': 'user'
    },
    {
      '1': 'device',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '9': 0,
      '10': 'device'
    },
  ],
  '8': [
    {'1': 'by'},
  ],
};

/// Descriptor for `TargetChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List targetChangeDescriptor = $convert.base64Decode(
    'CgxUYXJnZXRDaGFuZ2USKgoCYXQYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    'JhdBI1CgR1c2VyGAIgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuVXNlcklkSABSBHVz'
    'ZXISOwoGZGV2aWNlGAMgASgLMiEua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuRGV2aWNlSWRIAF'
    'IGZGV2aWNlQgQKAmJ5');

@$core.Deprecated('Use roomClimateDescriptor instead')
const RoomClimate$json = {
  '1': 'RoomClimate',
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
      '1': 'target_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'targetCentidegrees',
      '17': true
    },
    {
      '1': 'target_change',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.TargetChange',
      '10': 'targetChange'
    },
    {
      '1': 'effective_target_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'effectiveTargetCentidegrees',
      '17': true
    },
    {'1': 'overrides_mode', '3': 5, '4': 1, '5': 8, '10': 'overridesMode'},
    {
      '1': 'mode_space_id',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'modeSpaceId'
    },
    {
      '1': 'min_centidegrees',
      '3': 6,
      '4': 1,
      '5': 17,
      '9': 2,
      '10': 'minCentidegrees',
      '17': true
    },
    {
      '1': 'max_centidegrees',
      '3': 7,
      '4': 1,
      '5': 17,
      '9': 3,
      '10': 'maxCentidegrees',
      '17': true
    },
    {
      '1': 'sensor_ids',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'sensorIds'
    },
    {
      '1': 'sensors_configured',
      '3': 14,
      '4': 1,
      '5': 8,
      '10': 'sensorsConfigured'
    },
    {
      '1': 'measured_centidegrees',
      '3': 9,
      '4': 1,
      '5': 17,
      '9': 4,
      '10': 'measuredCentidegrees',
      '17': true
    },
    {
      '1': 'measured_by',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'measuredBy'
    },
    {
      '1': 'condition',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.RoomClimateCondition',
      '10': 'condition'
    },
    {
      '1': 'lock_device_controls',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'lockDeviceControls'
    },
    {'1': 'state_withheld', '3': 15, '4': 1, '5': 8, '10': 'stateWithheld'},
  ],
  '8': [
    {'1': '_target_centidegrees'},
    {'1': '_effective_target_centidegrees'},
    {'1': '_min_centidegrees'},
    {'1': '_max_centidegrees'},
    {'1': '_measured_centidegrees'},
  ],
};

/// Descriptor for `RoomClimate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomClimateDescriptor = $convert.base64Decode(
    'CgtSb29tQ2xpbWF0ZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlNwYWNlSWRSB3NwYWNlSWQSNAoTdGFyZ2V0X2NlbnRpZGVncmVlcxgCIAEoEUgAUhJ0YXJn'
    'ZXRDZW50aWRlZ3JlZXOIAQESSQoNdGFyZ2V0X2NoYW5nZRgDIAEoCzIkLmt1c2ludGEuaW90Lm'
    'NsaW1hdGUudjEuVGFyZ2V0Q2hhbmdlUgx0YXJnZXRDaGFuZ2USRwodZWZmZWN0aXZlX3Rhcmdl'
    'dF9jZW50aWRlZ3JlZXMYBCABKBFIAVIbZWZmZWN0aXZlVGFyZ2V0Q2VudGlkZWdyZWVziAEBEi'
    'UKDm92ZXJyaWRlc19tb2RlGAUgASgIUg1vdmVycmlkZXNNb2RlEkQKDW1vZGVfc3BhY2VfaWQY'
    'DSABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgttb2RlU3BhY2VJZBIuCh'
    'BtaW5fY2VudGlkZWdyZWVzGAYgASgRSAJSD21pbkNlbnRpZGVncmVlc4gBARIuChBtYXhfY2Vu'
    'dGlkZWdyZWVzGAcgASgRSANSD21heENlbnRpZGVncmVlc4gBARJACgpzZW5zb3JfaWRzGAggAy'
    'gLMiEua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuRGV2aWNlSWRSCXNlbnNvcklkcxItChJzZW5z'
    'b3JzX2NvbmZpZ3VyZWQYDiABKAhSEXNlbnNvcnNDb25maWd1cmVkEjgKFW1lYXN1cmVkX2Nlbn'
    'RpZGVncmVlcxgJIAEoEUgEUhRtZWFzdXJlZENlbnRpZGVncmVlc4gBARJCCgttZWFzdXJlZF9i'
    'eRgKIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLkRldmljZUlkUgptZWFzdXJlZEJ5Ek'
    'oKCWNvbmRpdGlvbhgLIAEoDjIsLmt1c2ludGEuaW90LmNsaW1hdGUudjEuUm9vbUNsaW1hdGVD'
    'b25kaXRpb25SCWNvbmRpdGlvbhIwChRsb2NrX2RldmljZV9jb250cm9scxgMIAEoCFISbG9ja0'
    'RldmljZUNvbnRyb2xzEiUKDnN0YXRlX3dpdGhoZWxkGA8gASgIUg1zdGF0ZVdpdGhoZWxkQhYK'
    'FF90YXJnZXRfY2VudGlkZWdyZWVzQiAKHl9lZmZlY3RpdmVfdGFyZ2V0X2NlbnRpZGVncmVlc0'
    'ITChFfbWluX2NlbnRpZGVncmVlc0ITChFfbWF4X2NlbnRpZGVncmVlc0IYChZfbWVhc3VyZWRf'
    'Y2VudGlkZWdyZWVz');

@$core.Deprecated('Use climateModeDescriptor instead')
const ClimateMode$json = {
  '1': 'ClimateMode',
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
    {
      '1': 'set_by',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'setBy'
    },
    {
      '1': 'warm_from',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'warmFrom',
      '17': true
    },
  ],
  '8': [
    {'1': '_setback_centidegrees'},
    {'1': '_warm_from'},
  ],
};

/// Descriptor for `ClimateMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List climateModeDescriptor = $convert.base64Decode(
    'CgtDbGltYXRlTW9kZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlNwYWNlSWRSB3NwYWNlSWQSOwoEa2luZBgCIAEoDjInLmt1c2ludGEuaW90LmNsaW1hdGUu'
    'djEuQ2xpbWF0ZU1vZGVLaW5kUgRraW5kEjYKFHNldGJhY2tfY2VudGlkZWdyZWVzGAMgASgRSA'
    'BSE3NldGJhY2tDZW50aWRlZ3JlZXOIAQESNwoJc3RhcnRzX2F0GAQgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFIIc3RhcnRzQXQSMwoHZW5kc19hdBgFIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSBmVuZHNBdBI2CgZzZXRfYnkYBiABKAsyHy5rdXNpbnRhLmlvdC5p'
    'ZGVudGl0eS52MS5Vc2VySWRSBXNldEJ5EjwKCXdhcm1fZnJvbRgHIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBIAVIId2FybUZyb22IAQFCFwoVX3NldGJhY2tfY2VudGlkZWdyZWVz'
    'QgwKCl93YXJtX2Zyb20=');

@$core.Deprecated('Use roomClimateListDescriptor instead')
const RoomClimateList$json = {
  '1': 'RoomClimateList',
  '2': [
    {
      '1': 'rooms',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.RoomClimate',
      '10': 'rooms'
    },
    {
      '1': 'modes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.ClimateMode',
      '10': 'modes'
    },
  ],
};

/// Descriptor for `RoomClimateList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomClimateListDescriptor = $convert.base64Decode(
    'Cg9Sb29tQ2xpbWF0ZUxpc3QSOQoFcm9vbXMYASADKAsyIy5rdXNpbnRhLmlvdC5jbGltYXRlLn'
    'YxLlJvb21DbGltYXRlUgVyb29tcxI5CgVtb2RlcxgCIAMoCzIjLmt1c2ludGEuaW90LmNsaW1h'
    'dGUudjEuQ2xpbWF0ZU1vZGVSBW1vZGVz');

@$core.Deprecated('Use roomHistorySampleDescriptor instead')
const RoomHistorySample$json = {
  '1': 'RoomHistorySample',
  '2': [
    {
      '1': 'at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'measured_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'measuredCentidegrees',
      '17': true
    },
    {
      '1': 'target_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'targetCentidegrees',
      '17': true
    },
    {
      '1': 'effective_target_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '9': 2,
      '10': 'effectiveTargetCentidegrees',
      '17': true
    },
    {
      '1': 'valve_open_permille',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'valveOpenPermille',
      '17': true
    },
    {
      '1': 'valve_open_seconds',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 4,
      '10': 'valveOpenSeconds',
      '17': true
    },
  ],
  '8': [
    {'1': '_measured_centidegrees'},
    {'1': '_target_centidegrees'},
    {'1': '_effective_target_centidegrees'},
    {'1': '_valve_open_permille'},
    {'1': '_valve_open_seconds'},
  ],
};

/// Descriptor for `RoomHistorySample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomHistorySampleDescriptor = $convert.base64Decode(
    'ChFSb29tSGlzdG9yeVNhbXBsZRIqCgJhdBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSAmF0EjgKFW1lYXN1cmVkX2NlbnRpZGVncmVlcxgCIAEoEUgAUhRtZWFzdXJlZENlbnRp'
    'ZGVncmVlc4gBARI0ChN0YXJnZXRfY2VudGlkZWdyZWVzGAMgASgRSAFSEnRhcmdldENlbnRpZG'
    'VncmVlc4gBARJHCh1lZmZlY3RpdmVfdGFyZ2V0X2NlbnRpZGVncmVlcxgEIAEoEUgCUhtlZmZl'
    'Y3RpdmVUYXJnZXRDZW50aWRlZ3JlZXOIAQESMwoTdmFsdmVfb3Blbl9wZXJtaWxsZRgFIAEoDU'
    'gDUhF2YWx2ZU9wZW5QZXJtaWxsZYgBARIxChJ2YWx2ZV9vcGVuX3NlY29uZHMYBiABKA1IBFIQ'
    'dmFsdmVPcGVuU2Vjb25kc4gBAUIYChZfbWVhc3VyZWRfY2VudGlkZWdyZWVzQhYKFF90YXJnZX'
    'RfY2VudGlkZWdyZWVzQiAKHl9lZmZlY3RpdmVfdGFyZ2V0X2NlbnRpZGVncmVlc0IWChRfdmFs'
    'dmVfb3Blbl9wZXJtaWxsZUIVChNfdmFsdmVfb3Blbl9zZWNvbmRz');

@$core.Deprecated('Use roomHistoryDescriptor instead')
const RoomHistory$json = {
  '1': 'RoomHistory',
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
      '1': 'kept_from',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'keptFrom'
    },
    {
      '1': 'samples',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.RoomHistorySample',
      '10': 'samples'
    },
  ],
};

/// Descriptor for `RoomHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomHistoryDescriptor = $convert.base64Decode(
    'CgtSb29tSGlzdG9yeRI5Cgdyb29tX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudj'
    'EuU3BhY2VJZFIGcm9vbUlkEjcKCWtlcHRfZnJvbRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBSCGtlcHRGcm9tEkMKB3NhbXBsZXMYAyADKAsyKS5rdXNpbnRhLmlvdC5jbGltYX'
    'RlLnYxLlJvb21IaXN0b3J5U2FtcGxlUgdzYW1wbGVz');

@$core.Deprecated('Use climatePeriodMeanDescriptor instead')
const ClimatePeriodMean$json = {
  '1': 'ClimatePeriodMean',
  '2': [
    {
      '1': 'starts_at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startsAt'
    },
    {
      '1': 'ends_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endsAt'
    },
    {
      '1': 'measured_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'measuredCentidegrees',
      '17': true
    },
    {
      '1': 'target_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'targetCentidegrees',
      '17': true
    },
    {
      '1': 'measured_coverage_permille',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'measuredCoveragePermille'
    },
    {
      '1': 'target_coverage_permille',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'targetCoveragePermille'
    },
    {'1': 'rooms_measured', '3': 7, '4': 1, '5': 13, '10': 'roomsMeasured'},
    {'1': 'rooms', '3': 8, '4': 1, '5': 13, '10': 'rooms'},
  ],
  '8': [
    {'1': '_measured_centidegrees'},
    {'1': '_target_centidegrees'},
  ],
};

/// Descriptor for `ClimatePeriodMean`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List climatePeriodMeanDescriptor = $convert.base64Decode(
    'ChFDbGltYXRlUGVyaW9kTWVhbhI3CglzdGFydHNfYXQYASABKAsyGi5nb29nbGUucHJvdG9idW'
    'YuVGltZXN0YW1wUghzdGFydHNBdBIzCgdlbmRzX2F0GAIgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFIGZW5kc0F0EjgKFW1lYXN1cmVkX2NlbnRpZGVncmVlcxgDIAEoEUgAUhRtZW'
    'FzdXJlZENlbnRpZGVncmVlc4gBARI0ChN0YXJnZXRfY2VudGlkZWdyZWVzGAQgASgRSAFSEnRh'
    'cmdldENlbnRpZGVncmVlc4gBARI8ChptZWFzdXJlZF9jb3ZlcmFnZV9wZXJtaWxsZRgFIAEoDV'
    'IYbWVhc3VyZWRDb3ZlcmFnZVBlcm1pbGxlEjgKGHRhcmdldF9jb3ZlcmFnZV9wZXJtaWxsZRgG'
    'IAEoDVIWdGFyZ2V0Q292ZXJhZ2VQZXJtaWxsZRIlCg5yb29tc19tZWFzdXJlZBgHIAEoDVINcm'
    '9vbXNNZWFzdXJlZBIUCgVyb29tcxgIIAEoDVIFcm9vbXNCGAoWX21lYXN1cmVkX2NlbnRpZGVn'
    'cmVlc0IWChRfdGFyZ2V0X2NlbnRpZGVncmVlcw==');

@$core.Deprecated('Use apartmentClimateSummaryDescriptor instead')
const ApartmentClimateSummary$json = {
  '1': 'ApartmentClimateSummary',
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
      '1': 'weighting',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateSummaryWeighting',
      '10': 'weighting'
    },
    {
      '1': 'kept_from',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'keptFrom'
    },
    {
      '1': 'periods',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.ClimatePeriodMean',
      '10': 'periods'
    },
  ],
};

/// Descriptor for `ApartmentClimateSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apartmentClimateSummaryDescriptor = $convert.base64Decode(
    'ChdBcGFydG1lbnRDbGltYXRlU3VtbWFyeRJDCgxhcGFydG1lbnRfaWQYASABKAsyIC5rdXNpbn'
    'RhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgthcGFydG1lbnRJZBJECgZwZXJpb2QYAiABKA4y'
    'LC5rdXNpbnRhLmlvdC5jbGltYXRlLnYxLkNsaW1hdGVTdW1tYXJ5UGVyaW9kUgZwZXJpb2QSTQ'
    'oJd2VpZ2h0aW5nGAMgASgOMi8ua3VzaW50YS5pb3QuY2xpbWF0ZS52MS5DbGltYXRlU3VtbWFy'
    'eVdlaWdodGluZ1IJd2VpZ2h0aW5nEjcKCWtlcHRfZnJvbRgEIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBSCGtlcHRGcm9tEkMKB3BlcmlvZHMYBSADKAsyKS5rdXNpbnRhLmlvdC5j'
    'bGltYXRlLnYxLkNsaW1hdGVQZXJpb2RNZWFuUgdwZXJpb2Rz');
