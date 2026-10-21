// This is a generated file - do not edit.
//
// Generated from kusinta/iot/heating/v1/heating.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use commissioningStateDescriptor instead')
const CommissioningState$json = {
  '1': 'CommissioningState',
  '2': [
    {'1': 'COMMISSIONING_STATE_UNSPECIFIED', '2': 0},
    {'1': 'COMMISSIONING_STATE_NOT_TESTED', '2': 1},
    {'1': 'COMMISSIONING_STATE_PASSED', '2': 2},
    {'1': 'COMMISSIONING_STATE_FAILED', '2': 3},
  ],
};

/// Descriptor for `CommissioningState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commissioningStateDescriptor = $convert.base64Decode(
    'ChJDb21taXNzaW9uaW5nU3RhdGUSIwofQ09NTUlTU0lPTklOR19TVEFURV9VTlNQRUNJRklFRB'
    'AAEiIKHkNPTU1JU1NJT05JTkdfU1RBVEVfTk9UX1RFU1RFRBABEh4KGkNPTU1JU1NJT05JTkdf'
    'U1RBVEVfUEFTU0VEEAISHgoaQ09NTUlTU0lPTklOR19TVEFURV9GQUlMRUQQAw==');

@$core.Deprecated('Use heatSourceKindDescriptor instead')
const HeatSourceKind$json = {
  '1': 'HeatSourceKind',
  '2': [
    {'1': 'HEAT_SOURCE_KIND_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP', '2': 1},
    {'1': 'HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP', '2': 2},
    {'1': 'HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP', '2': 3},
    {'1': 'HEAT_SOURCE_KIND_DISTRICT_HEATING', '2': 4},
    {'1': 'HEAT_SOURCE_KIND_ELECTRIC_BOILER', '2': 5},
    {'1': 'HEAT_SOURCE_KIND_FUEL_BOILER', '2': 6},
  ],
};

/// Descriptor for `HeatSourceKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatSourceKindDescriptor = $convert.base64Decode(
    'Cg5IZWF0U291cmNlS2luZBIgChxIRUFUX1NPVVJDRV9LSU5EX1VOU1BFQ0lGSUVEEAASKgomSE'
    'VBVF9TT1VSQ0VfS0lORF9FWEhBVVNUX0FJUl9IRUFUX1BVTVAQARIsCihIRUFUX1NPVVJDRV9L'
    'SU5EX0dST1VORF9TT1VSQ0VfSEVBVF9QVU1QEAISKAokSEVBVF9TT1VSQ0VfS0lORF9BSVJfV0'
    'FURVJfSEVBVF9QVU1QEAMSJQohSEVBVF9TT1VSQ0VfS0lORF9ESVNUUklDVF9IRUFUSU5HEAQS'
    'JAogSEVBVF9TT1VSQ0VfS0lORF9FTEVDVFJJQ19CT0lMRVIQBRIgChxIRUFUX1NPVVJDRV9LSU'
    '5EX0ZVRUxfQk9JTEVSEAY=');

@$core.Deprecated('Use circuitKindDescriptor instead')
const CircuitKind$json = {
  '1': 'CircuitKind',
  '2': [
    {'1': 'CIRCUIT_KIND_UNSPECIFIED', '2': 0},
    {'1': 'CIRCUIT_KIND_RADIATOR', '2': 1},
    {'1': 'CIRCUIT_KIND_FLOOR', '2': 2},
  ],
};

/// Descriptor for `CircuitKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List circuitKindDescriptor = $convert.base64Decode(
    'CgtDaXJjdWl0S2luZBIcChhDSVJDVUlUX0tJTkRfVU5TUEVDSUZJRUQQABIZChVDSVJDVUlUX0'
    'tJTkRfUkFESUFUT1IQARIWChJDSVJDVUlUX0tJTkRfRkxPT1IQAg==');

@$core.Deprecated('Use contactBindingDescriptor instead')
const ContactBinding$json = {
  '1': 'ContactBinding',
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
      '1': 'output',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'output'
    },
    {
      '1': 'closed_value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'closedValue'
    },
    {
      '1': 'commissioning',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.CommissioningState',
      '10': 'commissioning'
    },
  ],
};

/// Descriptor for `ContactBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactBindingDescriptor = $convert.base64Decode(
    'Cg5Db250YWN0QmluZGluZxI+CglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQSOwoGb3V0cHV0GAIgASgLMiMua3VzaW50YS5pb3Qu'
    'YWNjZXNzLnYxLkF0dHJpYnV0ZVJlZlIGb3V0cHV0EkgKDGNsb3NlZF92YWx1ZRgDIAEoCzIlLm'
    't1c2ludGEuaW90LmRldmljZS52MS5BdHRyaWJ1dGVWYWx1ZVILY2xvc2VkVmFsdWUSUAoNY29t'
    'bWlzc2lvbmluZxgEIAEoDjIqLmt1c2ludGEuaW90LmhlYXRpbmcudjEuQ29tbWlzc2lvbmluZ1'
    'N0YXRlUg1jb21taXNzaW9uaW5n');

@$core.Deprecated('Use readingBindingDescriptor instead')
const ReadingBinding$json = {
  '1': 'ReadingBinding',
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
      '1': 'reading',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'reading'
    },
  ],
};

/// Descriptor for `ReadingBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readingBindingDescriptor = $convert.base64Decode(
    'Cg5SZWFkaW5nQmluZGluZxI+CglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQSPQoHcmVhZGluZxgCIAEoCzIjLmt1c2ludGEuaW90'
    'LmFjY2Vzcy52MS5BdHRyaWJ1dGVSZWZSB3JlYWRpbmc=');

@$core.Deprecated('Use heatingPlantDescriptor instead')
const HeatingPlant$json = {
  '1': 'HeatingPlant',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'source',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatSourceKind',
      '10': 'source'
    },
    {
      '1': 'heat_source_device_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'heatSourceDeviceId'
    },
    {
      '1': 'sg_ready_block',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'sgReadyBlock'
    },
    {
      '1': 'sg_ready_boost',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'sgReadyBoost'
    },
    {
      '1': 'add_heat_block',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'addHeatBlock'
    },
    {
      '1': 'meter',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ReadingBinding',
      '10': 'meter'
    },
    {
      '1': 'circuits',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingCircuit',
      '10': 'circuits'
    },
    {'1': 'revision', '3': 11, '4': 1, '5': 4, '10': 'revision'},
  ],
};

/// Descriptor for `HeatingPlant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingPlantDescriptor = $convert.base64Decode(
    'CgxIZWF0aW5nUGxhbnQSGQoIcGxhbnRfaWQYASABKAlSB3BsYW50SWQSOwoIc3BhY2VfaWQYAi'
    'ABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEhIKBG5hbWUY'
    'AyABKAlSBG5hbWUSPgoGc291cmNlGAQgASgOMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZW'
    'F0U291cmNlS2luZFIGc291cmNlElQKFWhlYXRfc291cmNlX2RldmljZV9pZBgFIAEoCzIhLmt1'
    'c2ludGEuaW90LmlkZW50aXR5LnYxLkRldmljZUlkUhJoZWF0U291cmNlRGV2aWNlSWQSTAoOc2'
    'dfcmVhZHlfYmxvY2sYBiABKAsyJi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNvbnRhY3RCaW5k'
    'aW5nUgxzZ1JlYWR5QmxvY2sSTAoOc2dfcmVhZHlfYm9vc3QYByABKAsyJi5rdXNpbnRhLmlvdC'
    '5oZWF0aW5nLnYxLkNvbnRhY3RCaW5kaW5nUgxzZ1JlYWR5Qm9vc3QSTAoOYWRkX2hlYXRfYmxv'
    'Y2sYCCABKAsyJi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNvbnRhY3RCaW5kaW5nUgxhZGRIZW'
    'F0QmxvY2sSPAoFbWV0ZXIYCSABKAsyJi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLlJlYWRpbmdC'
    'aW5kaW5nUgVtZXRlchJCCghjaXJjdWl0cxgKIAMoCzImLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuSGVhdGluZ0NpcmN1aXRSCGNpcmN1aXRzEhoKCHJldmlzaW9uGAsgASgEUghyZXZpc2lvbg==');

@$core.Deprecated('Use heatingCircuitDescriptor instead')
const HeatingCircuit$json = {
  '1': 'HeatingCircuit',
  '2': [
    {'1': 'circuit_id', '3': 1, '4': 1, '5': 9, '10': 'circuitId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'kind',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.CircuitKind',
      '10': 'kind'
    },
    {'1': 'mixing_valve', '3': 4, '4': 1, '5': 8, '10': 'mixingValve'},
    {
      '1': 'supply_cap_centidegrees',
      '3': 5,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'supplyCapCentidegrees',
      '17': true
    },
    {
      '1': 'supply_probe',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ReadingBinding',
      '10': 'supplyProbe'
    },
    {
      '1': 'return_probe',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ReadingBinding',
      '10': 'returnProbe'
    },
    {
      '1': 'zones',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZone',
      '10': 'zones'
    },
  ],
  '8': [
    {'1': '_supply_cap_centidegrees'},
  ],
};

/// Descriptor for `HeatingCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingCircuitDescriptor = $convert.base64Decode(
    'Cg5IZWF0aW5nQ2lyY3VpdBIdCgpjaXJjdWl0X2lkGAEgASgJUgljaXJjdWl0SWQSEgoEbmFtZR'
    'gCIAEoCVIEbmFtZRI3CgRraW5kGAMgASgOMiMua3VzaW50YS5pb3QuaGVhdGluZy52MS5DaXJj'
    'dWl0S2luZFIEa2luZBIhCgxtaXhpbmdfdmFsdmUYBCABKAhSC21peGluZ1ZhbHZlEjsKF3N1cH'
    'BseV9jYXBfY2VudGlkZWdyZWVzGAUgASgRSABSFXN1cHBseUNhcENlbnRpZGVncmVlc4gBARJJ'
    'CgxzdXBwbHlfcHJvYmUYBiABKAsyJi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLlJlYWRpbmdCaW'
    '5kaW5nUgtzdXBwbHlQcm9iZRJJCgxyZXR1cm5fcHJvYmUYByABKAsyJi5rdXNpbnRhLmlvdC5o'
    'ZWF0aW5nLnYxLlJlYWRpbmdCaW5kaW5nUgtyZXR1cm5Qcm9iZRI3CgV6b25lcxgIIAMoCzIhLm'
    't1c2ludGEuaW90LmhlYXRpbmcudjEuRmxvb3Jab25lUgV6b25lc0IaChhfc3VwcGx5X2NhcF9j'
    'ZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use floorZoneDescriptor instead')
const FloorZone$json = {
  '1': 'FloorZone',
  '2': [
    {'1': 'zone_id', '3': 1, '4': 1, '5': 9, '10': 'zoneId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'output',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'output'
    },
    {
      '1': 'rooms',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZoneRoom',
      '10': 'rooms'
    },
  ],
};

/// Descriptor for `FloorZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneDescriptor = $convert.base64Decode(
    'CglGbG9vclpvbmUSFwoHem9uZV9pZBgBIAEoCVIGem9uZUlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USPgoGb3V0cHV0GAMgASgLMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5Db250YWN0QmluZGlu'
    'Z1IGb3V0cHV0EjsKBXJvb21zGAQgAygLMiUua3VzaW50YS5pb3QuaGVhdGluZy52MS5GbG9vcl'
    'pvbmVSb29tUgVyb29tcw==');

@$core.Deprecated('Use floorZoneRoomDescriptor instead')
const FloorZoneRoom$json = {
  '1': 'FloorZoneRoom',
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
      '1': 'area_share_permille',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'areaSharePermille'
    },
    {'1': 'is_control', '3': 3, '4': 1, '5': 8, '10': 'isControl'},
  ],
};

/// Descriptor for `FloorZoneRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneRoomDescriptor = $convert.base64Decode(
    'Cg1GbG9vclpvbmVSb29tEjkKB3Jvb21faWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgZyb29tSWQSLgoTYXJlYV9zaGFyZV9wZXJtaWxsZRgCIAEoDVIRYXJlYVNo'
    'YXJlUGVybWlsbGUSHQoKaXNfY29udHJvbBgDIAEoCFIJaXNDb250cm9s');

@$core.Deprecated('Use comfortLoadDescriptor instead')
const ComfortLoad$json = {
  '1': 'ComfortLoad',
  '2': [
    {'1': 'comfort_load_id', '3': 1, '4': 1, '5': 9, '10': 'comfortLoadId'},
    {
      '1': 'room_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'output',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'output'
    },
    {
      '1': 'windows',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortWindow',
      '10': 'windows'
    },
  ],
};

/// Descriptor for `ComfortLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comfortLoadDescriptor = $convert.base64Decode(
    'CgtDb21mb3J0TG9hZBImCg9jb21mb3J0X2xvYWRfaWQYASABKAlSDWNvbWZvcnRMb2FkSWQSOQ'
    'oHcm9vbV9pZBgCIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSBnJvb21J'
    'ZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2ludGEuaW90LmhlYX'
    'RpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI/Cgd3aW5kb3dzGAUgAygLMiUua3VzaW50'
    'YS5pb3QuaGVhdGluZy52MS5Db21mb3J0V2luZG93Ugd3aW5kb3dz');

@$core.Deprecated('Use comfortWindowDescriptor instead')
const ComfortWindow$json = {
  '1': 'ComfortWindow',
  '2': [
    {'1': 'weekdays', '3': 1, '4': 1, '5': 13, '10': 'weekdays'},
    {'1': 'start_minute', '3': 2, '4': 1, '5': 13, '10': 'startMinute'},
    {'1': 'end_minute', '3': 3, '4': 1, '5': 13, '10': 'endMinute'},
  ],
};

/// Descriptor for `ComfortWindow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comfortWindowDescriptor = $convert.base64Decode(
    'Cg1Db21mb3J0V2luZG93EhoKCHdlZWtkYXlzGAEgASgNUgh3ZWVrZGF5cxIhCgxzdGFydF9taW'
    '51dGUYAiABKA1SC3N0YXJ0TWludXRlEh0KCmVuZF9taW51dGUYAyABKA1SCWVuZE1pbnV0ZQ==');

@$core.Deprecated('Use heatingLayoutDescriptor instead')
const HeatingLayout$json = {
  '1': 'HeatingLayout',
  '2': [
    {
      '1': 'plants',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingPlant',
      '10': 'plants'
    },
    {
      '1': 'comfort_loads',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortLoad',
      '10': 'comfortLoads'
    },
  ],
};

/// Descriptor for `HeatingLayout`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingLayoutDescriptor = $convert.base64Decode(
    'Cg1IZWF0aW5nTGF5b3V0EjwKBnBsYW50cxgBIAMoCzIkLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuSGVhdGluZ1BsYW50UgZwbGFudHMSSAoNY29tZm9ydF9sb2FkcxgCIAMoCzIjLmt1c2ludGEu'
    'aW90LmhlYXRpbmcudjEuQ29tZm9ydExvYWRSDGNvbWZvcnRMb2Fkcw==');
