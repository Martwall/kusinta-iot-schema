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

@$core.Deprecated('Use outerLimitKindDescriptor instead')
const OuterLimitKind$json = {
  '1': 'OuterLimitKind',
  '2': [
    {'1': 'OUTER_LIMIT_KIND_UNSPECIFIED', '2': 0},
    {'1': 'OUTER_LIMIT_KIND_MIN', '2': 1},
    {'1': 'OUTER_LIMIT_KIND_MAX', '2': 2},
    {'1': 'OUTER_LIMIT_KIND_AWAY_MIN', '2': 3},
  ],
};

/// Descriptor for `OuterLimitKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List outerLimitKindDescriptor = $convert.base64Decode(
    'Cg5PdXRlckxpbWl0S2luZBIgChxPVVRFUl9MSU1JVF9LSU5EX1VOU1BFQ0lGSUVEEAASGAoUT1'
    'VURVJfTElNSVRfS0lORF9NSU4QARIYChRPVVRFUl9MSU1JVF9LSU5EX01BWBACEh0KGU9VVEVS'
    'X0xJTUlUX0tJTkRfQVdBWV9NSU4QAw==');

@$core.Deprecated('Use outerLimitsCoverageDescriptor instead')
const OuterLimitsCoverage$json = {
  '1': 'OuterLimitsCoverage',
  '2': [
    {'1': 'OUTER_LIMITS_COVERAGE_UNSPECIFIED', '2': 0},
    {'1': 'OUTER_LIMITS_COVERAGE_NONE', '2': 1},
    {'1': 'OUTER_LIMITS_COVERAGE_SOME', '2': 2},
    {'1': 'OUTER_LIMITS_COVERAGE_ALL', '2': 3},
  ],
};

/// Descriptor for `OuterLimitsCoverage`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List outerLimitsCoverageDescriptor = $convert.base64Decode(
    'ChNPdXRlckxpbWl0c0NvdmVyYWdlEiUKIU9VVEVSX0xJTUlUU19DT1ZFUkFHRV9VTlNQRUNJRk'
    'lFRBAAEh4KGk9VVEVSX0xJTUlUU19DT1ZFUkFHRV9OT05FEAESHgoaT1VURVJfTElNSVRTX0NP'
    'VkVSQUdFX1NPTUUQAhIdChlPVVRFUl9MSU1JVFNfQ09WRVJBR0VfQUxMEAM=');

@$core.Deprecated('Use roomPlanningDescriptor instead')
const RoomPlanning$json = {
  '1': 'RoomPlanning',
  '2': [
    {'1': 'ROOM_PLANNING_UNSPECIFIED', '2': 0},
    {'1': 'ROOM_PLANNING_PLANNED', '2': 1},
    {'1': 'ROOM_PLANNING_NOT_PLANNED', '2': 2},
    {'1': 'ROOM_PLANNING_UNAVAILABLE', '2': 3},
  ],
};

/// Descriptor for `RoomPlanning`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomPlanningDescriptor = $convert.base64Decode(
    'CgxSb29tUGxhbm5pbmcSHQoZUk9PTV9QTEFOTklOR19VTlNQRUNJRklFRBAAEhkKFVJPT01fUE'
    'xBTk5JTkdfUExBTk5FRBABEh0KGVJPT01fUExBTk5JTkdfTk9UX1BMQU5ORUQQAhIdChlST09N'
    'X1BMQU5OSU5HX1VOQVZBSUxBQkxFEAM=');

@$core.Deprecated('Use climateExplanationKindDescriptor instead')
const ClimateExplanationKind$json = {
  '1': 'ClimateExplanationKind',
  '2': [
    {'1': 'CLIMATE_EXPLANATION_KIND_UNSPECIFIED', '2': 0},
    {'1': 'CLIMATE_EXPLANATION_KIND_PRE_HEAT', '2': 1},
    {'1': 'CLIMATE_EXPLANATION_KIND_COASTING', '2': 2},
    {'1': 'CLIMATE_EXPLANATION_KIND_PRICE_HIGH', '2': 3},
    {'1': 'CLIMATE_EXPLANATION_KIND_PEAK_GUARD', '2': 4},
    {'1': 'CLIMATE_EXPLANATION_KIND_HOT_WATER_PRIORITY', '2': 5},
    {'1': 'CLIMATE_EXPLANATION_KIND_SHARED_POWER_BUDGET', '2': 6},
    {'1': 'CLIMATE_EXPLANATION_KIND_DISTRICT_HEATING_PEAK', '2': 7},
    {'1': 'CLIMATE_EXPLANATION_KIND_AT_COMFORT_CEILING', '2': 8},
    {'1': 'CLIMATE_EXPLANATION_KIND_NO_READING', '2': 9},
    {'1': 'CLIMATE_EXPLANATION_KIND_OUTSIDE_WINDOW', '2': 10},
  ],
};

/// Descriptor for `ClimateExplanationKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List climateExplanationKindDescriptor = $convert.base64Decode(
    'ChZDbGltYXRlRXhwbGFuYXRpb25LaW5kEigKJENMSU1BVEVfRVhQTEFOQVRJT05fS0lORF9VTl'
    'NQRUNJRklFRBAAEiUKIUNMSU1BVEVfRVhQTEFOQVRJT05fS0lORF9QUkVfSEVBVBABEiUKIUNM'
    'SU1BVEVfRVhQTEFOQVRJT05fS0lORF9DT0FTVElORxACEicKI0NMSU1BVEVfRVhQTEFOQVRJT0'
    '5fS0lORF9QUklDRV9ISUdIEAMSJwojQ0xJTUFURV9FWFBMQU5BVElPTl9LSU5EX1BFQUtfR1VB'
    'UkQQBBIvCitDTElNQVRFX0VYUExBTkFUSU9OX0tJTkRfSE9UX1dBVEVSX1BSSU9SSVRZEAUSMA'
    'osQ0xJTUFURV9FWFBMQU5BVElPTl9LSU5EX1NIQVJFRF9QT1dFUl9CVURHRVQQBhIyCi5DTElN'
    'QVRFX0VYUExBTkFUSU9OX0tJTkRfRElTVFJJQ1RfSEVBVElOR19QRUFLEAcSLworQ0xJTUFURV'
    '9FWFBMQU5BVElPTl9LSU5EX0FUX0NPTUZPUlRfQ0VJTElORxAIEicKI0NMSU1BVEVfRVhQTEFO'
    'QVRJT05fS0lORF9OT19SRUFESU5HEAkSKwonQ0xJTUFURV9FWFBMQU5BVElPTl9LSU5EX09VVF'
    'NJREVfV0lORE9XEAo=');

@$core.Deprecated('Use climateExplanationSubjectDescriptor instead')
const ClimateExplanationSubject$json = {
  '1': 'ClimateExplanationSubject',
  '2': [
    {'1': 'CLIMATE_EXPLANATION_SUBJECT_UNSPECIFIED', '2': 0},
    {'1': 'CLIMATE_EXPLANATION_SUBJECT_ROOM', '2': 1},
    {'1': 'CLIMATE_EXPLANATION_SUBJECT_FLOOR_ZONE', '2': 2},
    {'1': 'CLIMATE_EXPLANATION_SUBJECT_COMFORT_LOAD', '2': 3},
    {'1': 'CLIMATE_EXPLANATION_SUBJECT_ADD_ON_HEATER', '2': 4},
  ],
};

/// Descriptor for `ClimateExplanationSubject`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List climateExplanationSubjectDescriptor = $convert.base64Decode(
    'ChlDbGltYXRlRXhwbGFuYXRpb25TdWJqZWN0EisKJ0NMSU1BVEVfRVhQTEFOQVRJT05fU1VCSk'
    'VDVF9VTlNQRUNJRklFRBAAEiQKIENMSU1BVEVfRVhQTEFOQVRJT05fU1VCSkVDVF9ST09NEAES'
    'KgomQ0xJTUFURV9FWFBMQU5BVElPTl9TVUJKRUNUX0ZMT09SX1pPTkUQAhIsCihDTElNQVRFX0'
    'VYUExBTkFUSU9OX1NVQkpFQ1RfQ09NRk9SVF9MT0FEEAMSLQopQ0xJTUFURV9FWFBMQU5BVElP'
    'Tl9TVUJKRUNUX0FERF9PTl9IRUFURVIQBA==');

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

@$core.Deprecated('Use roomHistoryResolutionDescriptor instead')
const RoomHistoryResolution$json = {
  '1': 'RoomHistoryResolution',
  '2': [
    {'1': 'ROOM_HISTORY_RESOLUTION_UNSPECIFIED', '2': 0},
    {'1': 'ROOM_HISTORY_RESOLUTION_QUARTER_HOUR', '2': 1},
    {'1': 'ROOM_HISTORY_RESOLUTION_HOUR', '2': 2},
  ],
};

/// Descriptor for `RoomHistoryResolution`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomHistoryResolutionDescriptor = $convert.base64Decode(
    'ChVSb29tSGlzdG9yeVJlc29sdXRpb24SJwojUk9PTV9ISVNUT1JZX1JFU09MVVRJT05fVU5TUE'
    'VDSUZJRUQQABIoCiRST09NX0hJU1RPUllfUkVTT0xVVElPTl9RVUFSVEVSX0hPVVIQARIgChxS'
    'T09NX0hJU1RPUllfUkVTT0xVVElPTl9IT1VSEAI=');

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
    {'1': 'move_in', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'moveIn'},
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
    'IGZGV2aWNlEhkKB21vdmVfaW4YBCABKAhIAFIGbW92ZUluQgQKAmJ5');

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
    {
      '1': 'explanations',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.ClimateExplanation',
      '10': 'explanations'
    },
    {
      '1': 'target_held_until',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'targetHeldUntil'
    },
    {
      '1': 'planning',
      '3': 18,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.RoomPlanning',
      '10': 'planning'
    },
    {
      '1': 'comfort_band_low_centidegrees',
      '3': 19,
      '4': 1,
      '5': 17,
      '9': 5,
      '10': 'comfortBandLowCentidegrees',
      '17': true
    },
    {
      '1': 'comfort_band_high_centidegrees',
      '3': 20,
      '4': 1,
      '5': 17,
      '9': 6,
      '10': 'comfortBandHighCentidegrees',
      '17': true
    },
    {
      '1': 'outer_limits',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.OuterRoomLimits',
      '10': 'outerLimits'
    },
    {
      '1': 'inner_limits',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.InnerRoomLimits',
      '10': 'innerLimits'
    },
    {
      '1': 'outer_limit_clamp',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.OuterLimitClamp',
      '10': 'outerLimitClamp'
    },
    {
      '1': 'outer_limits_coverage',
      '3': 24,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.OuterLimitsCoverage',
      '10': 'outerLimitsCoverage'
    },
  ],
  '8': [
    {'1': '_target_centidegrees'},
    {'1': '_effective_target_centidegrees'},
    {'1': '_min_centidegrees'},
    {'1': '_max_centidegrees'},
    {'1': '_measured_centidegrees'},
    {'1': '_comfort_band_low_centidegrees'},
    {'1': '_comfort_band_high_centidegrees'},
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
    'RldmljZUNvbnRyb2xzEiUKDnN0YXRlX3dpdGhoZWxkGA8gASgIUg1zdGF0ZVdpdGhoZWxkEk4K'
    'DGV4cGxhbmF0aW9ucxgQIAMoCzIqLmt1c2ludGEuaW90LmNsaW1hdGUudjEuQ2xpbWF0ZUV4cG'
    'xhbmF0aW9uUgxleHBsYW5hdGlvbnMSRgoRdGFyZ2V0X2hlbGRfdW50aWwYESABKAsyGi5nb29n'
    'bGUucHJvdG9idWYuVGltZXN0YW1wUg90YXJnZXRIZWxkVW50aWwSQAoIcGxhbm5pbmcYEiABKA'
    '4yJC5rdXNpbnRhLmlvdC5jbGltYXRlLnYxLlJvb21QbGFubmluZ1IIcGxhbm5pbmcSRgodY29t'
    'Zm9ydF9iYW5kX2xvd19jZW50aWRlZ3JlZXMYEyABKBFIBVIaY29tZm9ydEJhbmRMb3dDZW50aW'
    'RlZ3JlZXOIAQESSAoeY29tZm9ydF9iYW5kX2hpZ2hfY2VudGlkZWdyZWVzGBQgASgRSAZSG2Nv'
    'bWZvcnRCYW5kSGlnaENlbnRpZGVncmVlc4gBARJKCgxvdXRlcl9saW1pdHMYFSABKAsyJy5rdX'
    'NpbnRhLmlvdC5jbGltYXRlLnYxLk91dGVyUm9vbUxpbWl0c1ILb3V0ZXJMaW1pdHMSSgoMaW5u'
    'ZXJfbGltaXRzGBYgASgLMicua3VzaW50YS5pb3QuY2xpbWF0ZS52MS5Jbm5lclJvb21MaW1pdH'
    'NSC2lubmVyTGltaXRzElMKEW91dGVyX2xpbWl0X2NsYW1wGBcgASgLMicua3VzaW50YS5pb3Qu'
    'Y2xpbWF0ZS52MS5PdXRlckxpbWl0Q2xhbXBSD291dGVyTGltaXRDbGFtcBJfChVvdXRlcl9saW'
    '1pdHNfY292ZXJhZ2UYGCABKA4yKy5rdXNpbnRhLmlvdC5jbGltYXRlLnYxLk91dGVyTGltaXRz'
    'Q292ZXJhZ2VSE291dGVyTGltaXRzQ292ZXJhZ2VCFgoUX3RhcmdldF9jZW50aWRlZ3JlZXNCIA'
    'oeX2VmZmVjdGl2ZV90YXJnZXRfY2VudGlkZWdyZWVzQhMKEV9taW5fY2VudGlkZWdyZWVzQhMK'
    'EV9tYXhfY2VudGlkZWdyZWVzQhgKFl9tZWFzdXJlZF9jZW50aWRlZ3JlZXNCIAoeX2NvbWZvcn'
    'RfYmFuZF9sb3dfY2VudGlkZWdyZWVzQiEKH19jb21mb3J0X2JhbmRfaGlnaF9jZW50aWRlZ3Jl'
    'ZXM=');

@$core.Deprecated('Use outerLimitDescriptor instead')
const OuterLimit$json = {
  '1': 'OuterLimit',
  '2': [
    {'1': 'centidegrees', '3': 1, '4': 1, '5': 17, '10': 'centidegrees'},
    {
      '1': 'set_by_role',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'setByRole'
    },
    {
      '1': 'set_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'setAt'
    },
  ],
};

/// Descriptor for `OuterLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outerLimitDescriptor = $convert.base64Decode(
    'CgpPdXRlckxpbWl0EiIKDGNlbnRpZGVncmVlcxgBIAEoEVIMY2VudGlkZWdyZWVzEjsKC3NldF'
    '9ieV9yb2xlGAIgASgOMhsua3VzaW50YS5pb3QuYWNjZXNzLnYxLlJvbGVSCXNldEJ5Um9sZRIx'
    'CgZzZXRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVzZXRBdA==');

@$core.Deprecated('Use outerRoomLimitsDescriptor instead')
const OuterRoomLimits$json = {
  '1': 'OuterRoomLimits',
  '2': [
    {
      '1': 'min',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.OuterLimit',
      '10': 'min'
    },
    {
      '1': 'max',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.OuterLimit',
      '10': 'max'
    },
    {
      '1': 'away_min',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.OuterLimit',
      '10': 'awayMin'
    },
    {
      '1': 'move_in_target',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.climate.v1.OuterLimit',
      '10': 'moveInTarget'
    },
    {
      '1': 'min_accepted_threshold_centidegrees',
      '3': 5,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'minAcceptedThresholdCentidegrees',
      '17': true
    },
  ],
  '8': [
    {'1': '_min_accepted_threshold_centidegrees'},
  ],
};

/// Descriptor for `OuterRoomLimits`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outerRoomLimitsDescriptor = $convert.base64Decode(
    'Cg9PdXRlclJvb21MaW1pdHMSNAoDbWluGAEgASgLMiIua3VzaW50YS5pb3QuY2xpbWF0ZS52MS'
    '5PdXRlckxpbWl0UgNtaW4SNAoDbWF4GAIgASgLMiIua3VzaW50YS5pb3QuY2xpbWF0ZS52MS5P'
    'dXRlckxpbWl0UgNtYXgSPQoIYXdheV9taW4YAyABKAsyIi5rdXNpbnRhLmlvdC5jbGltYXRlLn'
    'YxLk91dGVyTGltaXRSB2F3YXlNaW4SSAoObW92ZV9pbl90YXJnZXQYBCABKAsyIi5rdXNpbnRh'
    'LmlvdC5jbGltYXRlLnYxLk91dGVyTGltaXRSDG1vdmVJblRhcmdldBJSCiNtaW5fYWNjZXB0ZW'
    'RfdGhyZXNob2xkX2NlbnRpZGVncmVlcxgFIAEoEUgAUiBtaW5BY2NlcHRlZFRocmVzaG9sZENl'
    'bnRpZGVncmVlc4gBAUImCiRfbWluX2FjY2VwdGVkX3RocmVzaG9sZF9jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use innerRoomLimitsDescriptor instead')
const InnerRoomLimits$json = {
  '1': 'InnerRoomLimits',
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

/// Descriptor for `InnerRoomLimits`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innerRoomLimitsDescriptor = $convert.base64Decode(
    'Cg9Jbm5lclJvb21MaW1pdHMSLgoQbWluX2NlbnRpZGVncmVlcxgBIAEoEUgAUg9taW5DZW50aW'
    'RlZ3JlZXOIAQESLgoQbWF4X2NlbnRpZGVncmVlcxgCIAEoEUgBUg9tYXhDZW50aWRlZ3JlZXOI'
    'AQFCEwoRX21pbl9jZW50aWRlZ3JlZXNCEwoRX21heF9jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use outerLimitClampDescriptor instead')
const OuterLimitClamp$json = {
  '1': 'OuterLimitClamp',
  '2': [
    {
      '1': 'limit',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.OuterLimitKind',
      '10': 'limit'
    },
    {
      '1': 'unclamped_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'unclampedCentidegrees',
      '17': true
    },
  ],
  '8': [
    {'1': '_unclamped_centidegrees'},
  ],
};

/// Descriptor for `OuterLimitClamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outerLimitClampDescriptor = $convert.base64Decode(
    'Cg9PdXRlckxpbWl0Q2xhbXASPAoFbGltaXQYASABKA4yJi5rdXNpbnRhLmlvdC5jbGltYXRlLn'
    'YxLk91dGVyTGltaXRLaW5kUgVsaW1pdBI6ChZ1bmNsYW1wZWRfY2VudGlkZWdyZWVzGAIgASgR'
    'SABSFXVuY2xhbXBlZENlbnRpZGVncmVlc4gBAUIZChdfdW5jbGFtcGVkX2NlbnRpZGVncmVlcw'
    '==');

@$core.Deprecated('Use climateExplanationDescriptor instead')
const ClimateExplanation$json = {
  '1': 'ClimateExplanation',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateExplanationKind',
      '10': 'kind'
    },
    {
      '1': 'subject',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateExplanationSubject',
      '10': 'subject'
    },
    {
      '1': 'ends_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endsAt'
    },
  ],
};

/// Descriptor for `ClimateExplanation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List climateExplanationDescriptor = $convert.base64Decode(
    'ChJDbGltYXRlRXhwbGFuYXRpb24SQgoEa2luZBgBIAEoDjIuLmt1c2ludGEuaW90LmNsaW1hdG'
    'UudjEuQ2xpbWF0ZUV4cGxhbmF0aW9uS2luZFIEa2luZBJLCgdzdWJqZWN0GAIgASgOMjEua3Vz'
    'aW50YS5pb3QuY2xpbWF0ZS52MS5DbGltYXRlRXhwbGFuYXRpb25TdWJqZWN0UgdzdWJqZWN0Ej'
    'MKB2VuZHNfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgZlbmRzQXQ=');

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
    {
      '1': 'floor_heating_seconds',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 5,
      '10': 'floorHeatingSeconds',
      '17': true
    },
  ],
  '8': [
    {'1': '_measured_centidegrees'},
    {'1': '_target_centidegrees'},
    {'1': '_effective_target_centidegrees'},
    {'1': '_valve_open_permille'},
    {'1': '_valve_open_seconds'},
    {'1': '_floor_heating_seconds'},
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
    'dmFsdmVPcGVuU2Vjb25kc4gBARI3ChVmbG9vcl9oZWF0aW5nX3NlY29uZHMYByABKA1IBVITZm'
    'xvb3JIZWF0aW5nU2Vjb25kc4gBAUIYChZfbWVhc3VyZWRfY2VudGlkZWdyZWVzQhYKFF90YXJn'
    'ZXRfY2VudGlkZWdyZWVzQiAKHl9lZmZlY3RpdmVfdGFyZ2V0X2NlbnRpZGVncmVlc0IWChRfdm'
    'FsdmVfb3Blbl9wZXJtaWxsZUIVChNfdmFsdmVfb3Blbl9zZWNvbmRzQhgKFl9mbG9vcl9oZWF0'
    'aW5nX3NlY29uZHM=');

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
    {
      '1': 'resolution',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.RoomHistoryResolution',
      '10': 'resolution'
    },
    {
      '1': 'covered_from',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'coveredFrom'
    },
    {
      '1': 'covered_to',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'coveredTo'
    },
  ],
};

/// Descriptor for `RoomHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomHistoryDescriptor = $convert.base64Decode(
    'CgtSb29tSGlzdG9yeRI5Cgdyb29tX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudj'
    'EuU3BhY2VJZFIGcm9vbUlkEjcKCWtlcHRfZnJvbRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBSCGtlcHRGcm9tEkMKB3NhbXBsZXMYAyADKAsyKS5rdXNpbnRhLmlvdC5jbGltYX'
    'RlLnYxLlJvb21IaXN0b3J5U2FtcGxlUgdzYW1wbGVzEk0KCnJlc29sdXRpb24YBCABKA4yLS5r'
    'dXNpbnRhLmlvdC5jbGltYXRlLnYxLlJvb21IaXN0b3J5UmVzb2x1dGlvblIKcmVzb2x1dGlvbh'
    'I9Cgxjb3ZlcmVkX2Zyb20YBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtjb3Zl'
    'cmVkRnJvbRI5Cgpjb3ZlcmVkX3RvGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcF'
    'IJY292ZXJlZFRv');

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
