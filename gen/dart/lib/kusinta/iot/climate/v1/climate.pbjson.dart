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
    'RldmljZUNvbnRyb2xzQhYKFF90YXJnZXRfY2VudGlkZWdyZWVzQiAKHl9lZmZlY3RpdmVfdGFy'
    'Z2V0X2NlbnRpZGVncmVlc0ITChFfbWluX2NlbnRpZGVncmVlc0ITChFfbWF4X2NlbnRpZGVncm'
    'Vlc0IYChZfbWVhc3VyZWRfY2VudGlkZWdyZWVz');

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
  ],
  '8': [
    {'1': '_setback_centidegrees'},
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
    'ZGVudGl0eS52MS5Vc2VySWRSBXNldEJ5QhcKFV9zZXRiYWNrX2NlbnRpZGVncmVlcw==');

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
