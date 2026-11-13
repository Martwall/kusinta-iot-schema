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

@$core.Deprecated('Use priceRuleDescriptor instead')
const PriceRule$json = {
  '1': 'PriceRule',
  '2': [
    {'1': 'PRICE_RULE_UNSPECIFIED', '2': 0},
    {'1': 'PRICE_RULE_ADD_ON_HEATER_BLOCK', '2': 1},
    {'1': 'PRICE_RULE_FLOOR_PRE_HEAT', '2': 2},
    {'1': 'PRICE_RULE_HOT_WATER', '2': 3},
  ],
};

/// Descriptor for `PriceRule`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List priceRuleDescriptor = $convert.base64Decode(
    'CglQcmljZVJ1bGUSGgoWUFJJQ0VfUlVMRV9VTlNQRUNJRklFRBAAEiIKHlBSSUNFX1JVTEVfQU'
    'REX09OX0hFQVRFUl9CTE9DSxABEh0KGVBSSUNFX1JVTEVfRkxPT1JfUFJFX0hFQVQQAhIYChRQ'
    'UklDRV9SVUxFX0hPVF9XQVRFUhAD');

@$core.Deprecated('Use priceRuleModeDescriptor instead')
const PriceRuleMode$json = {
  '1': 'PriceRuleMode',
  '2': [
    {'1': 'PRICE_RULE_MODE_UNSPECIFIED', '2': 0},
    {'1': 'PRICE_RULE_MODE_OFF', '2': 1},
    {'1': 'PRICE_RULE_MODE_SHADOW', '2': 2},
    {'1': 'PRICE_RULE_MODE_LIVE', '2': 3},
  ],
};

/// Descriptor for `PriceRuleMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List priceRuleModeDescriptor = $convert.base64Decode(
    'Cg1QcmljZVJ1bGVNb2RlEh8KG1BSSUNFX1JVTEVfTU9ERV9VTlNQRUNJRklFRBAAEhcKE1BSSU'
    'NFX1JVTEVfTU9ERV9PRkYQARIaChZQUklDRV9SVUxFX01PREVfU0hBRE9XEAISGAoUUFJJQ0Vf'
    'UlVMRV9NT0RFX0xJVkUQAw==');

@$core.Deprecated('Use heatBlockEndDescriptor instead')
const HeatBlockEnd$json = {
  '1': 'HeatBlockEnd',
  '2': [
    {'1': 'HEAT_BLOCK_END_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_BLOCK_END_PLANNED', '2': 1},
    {'1': 'HEAT_BLOCK_END_ROOM_BELOW_BAND', '2': 2},
    {'1': 'HEAT_BLOCK_END_HOT_WATER_LOW', '2': 3},
    {'1': 'HEAT_BLOCK_END_RELEASED', '2': 4},
    {'1': 'HEAT_BLOCK_END_RULE_SWITCHED', '2': 5},
    {'1': 'HEAT_BLOCK_END_INTERRUPTED', '2': 6},
    {'1': 'HEAT_BLOCK_END_UNSTATED', '2': 7},
  ],
};

/// Descriptor for `HeatBlockEnd`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatBlockEndDescriptor = $convert.base64Decode(
    'CgxIZWF0QmxvY2tFbmQSHgoaSEVBVF9CTE9DS19FTkRfVU5TUEVDSUZJRUQQABIaChZIRUFUX0'
    'JMT0NLX0VORF9QTEFOTkVEEAESIgoeSEVBVF9CTE9DS19FTkRfUk9PTV9CRUxPV19CQU5EEAIS'
    'IAocSEVBVF9CTE9DS19FTkRfSE9UX1dBVEVSX0xPVxADEhsKF0hFQVRfQkxPQ0tfRU5EX1JFTE'
    'VBU0VEEAQSIAocSEVBVF9CTE9DS19FTkRfUlVMRV9TV0lUQ0hFRBAFEh4KGkhFQVRfQkxPQ0tf'
    'RU5EX0lOVEVSUlVQVEVEEAYSGwoXSEVBVF9CTE9DS19FTkRfVU5TVEFURUQQBw==');

@$core.Deprecated('Use deviceAttributeDescriptor instead')
const DeviceAttribute$json = {
  '1': 'DeviceAttribute',
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
      '1': 'attribute',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'attribute'
    },
  ],
};

/// Descriptor for `DeviceAttribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAttributeDescriptor = $convert.base64Decode(
    'Cg9EZXZpY2VBdHRyaWJ1dGUSPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuRGV2aWNlSWRSCGRldmljZUlkEkEKCWF0dHJpYnV0ZRgCIAEoCzIjLmt1c2ludGEu'
    'aW90LmFjY2Vzcy52MS5BdHRyaWJ1dGVSZWZSCWF0dHJpYnV0ZQ==');

@$core.Deprecated('Use contactBindingDescriptor instead')
const ContactBinding$json = {
  '1': 'ContactBinding',
  '2': [
    {
      '1': 'output',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'output'
    },
    {
      '1': 'closed_value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'closedValue'
    },
  ],
};

/// Descriptor for `ContactBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactBindingDescriptor = $convert.base64Decode(
    'Cg5Db250YWN0QmluZGluZxI/CgZvdXRwdXQYASABKAsyJy5rdXNpbnRhLmlvdC5oZWF0aW5nLn'
    'YxLkRldmljZUF0dHJpYnV0ZVIGb3V0cHV0EkgKDGNsb3NlZF92YWx1ZRgCIAEoCzIlLmt1c2lu'
    'dGEuaW90LmRldmljZS52MS5BdHRyaWJ1dGVWYWx1ZVILY2xvc2VkVmFsdWU=');

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
      '1': 'readings_device_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'readingsDeviceId'
    },
    {
      '1': 'heat_pump',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatPumpControl',
      '9': 0,
      '10': 'heatPump'
    },
    {
      '1': 'meter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'meter'
    },
    {'1': 'revision', '3': 8, '4': 1, '5': 4, '10': 'revision'},
    {
      '1': 'price_rules',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.PriceRuleChange',
      '10': 'priceRules'
    },
    {
      '1': 'price_rules_revision',
      '3': 10,
      '4': 1,
      '5': 4,
      '10': 'priceRulesRevision'
    },
  ],
  '8': [
    {'1': 'control'},
  ],
};

/// Descriptor for `HeatingPlant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingPlantDescriptor = $convert.base64Decode(
    'CgxIZWF0aW5nUGxhbnQSGQoIcGxhbnRfaWQYASABKAlSB3BsYW50SWQSOwoIc3BhY2VfaWQYAi'
    'ABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEhIKBG5hbWUY'
    'AyABKAlSBG5hbWUSPgoGc291cmNlGAQgASgOMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZW'
    'F0U291cmNlS2luZFIGc291cmNlEk8KEnJlYWRpbmdzX2RldmljZV9pZBgFIAEoCzIhLmt1c2lu'
    'dGEuaW90LmlkZW50aXR5LnYxLkRldmljZUlkUhByZWFkaW5nc0RldmljZUlkEkYKCWhlYXRfcH'
    'VtcBgGIAEoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuSGVhdFB1bXBDb250cm9sSABSCGhl'
    'YXRQdW1wEj0KBW1ldGVyGAcgASgLMicua3VzaW50YS5pb3QuaGVhdGluZy52MS5EZXZpY2VBdH'
    'RyaWJ1dGVSBW1ldGVyEhoKCHJldmlzaW9uGAggASgEUghyZXZpc2lvbhJICgtwcmljZV9ydWxl'
    'cxgJIAMoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuUHJpY2VSdWxlQ2hhbmdlUgpwcmljZV'
    'J1bGVzEjAKFHByaWNlX3J1bGVzX3JldmlzaW9uGAogASgEUhJwcmljZVJ1bGVzUmV2aXNpb25C'
    'CQoHY29udHJvbA==');

@$core.Deprecated('Use heatPumpControlDescriptor instead')
const HeatPumpControl$json = {
  '1': 'HeatPumpControl',
  '2': [
    {
      '1': 'sg_ready_block',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'sgReadyBlock'
    },
    {
      '1': 'sg_ready_boost',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'sgReadyBoost'
    },
    {
      '1': 'add_on_heater_block',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'addOnHeaterBlock'
    },
  ],
};

/// Descriptor for `HeatPumpControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatPumpControlDescriptor = $convert.base64Decode(
    'Cg9IZWF0UHVtcENvbnRyb2wSTAoOc2dfcmVhZHlfYmxvY2sYASABKAsyJi5rdXNpbnRhLmlvdC'
    '5oZWF0aW5nLnYxLkNvbnRhY3RCaW5kaW5nUgxzZ1JlYWR5QmxvY2sSTAoOc2dfcmVhZHlfYm9v'
    'c3QYAiABKAsyJi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNvbnRhY3RCaW5kaW5nUgxzZ1JlYW'
    'R5Qm9vc3QSVQoTYWRkX29uX2hlYXRlcl9ibG9jaxgDIAEoCzImLmt1c2ludGEuaW90LmhlYXRp'
    'bmcudjEuQ29udGFjdEJpbmRpbmdSEGFkZE9uSGVhdGVyQmxvY2s=');

@$core.Deprecated('Use heatingCircuitDescriptor instead')
const HeatingCircuit$json = {
  '1': 'HeatingCircuit',
  '2': [
    {'1': 'circuit_id', '3': 1, '4': 1, '5': 9, '10': 'circuitId'},
    {'1': 'plant_id', '3': 2, '4': 1, '5': 9, '10': 'plantId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'radiator',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.RadiatorCircuit',
      '9': 0,
      '10': 'radiator'
    },
    {
      '1': 'floor',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorCircuit',
      '9': 0,
      '10': 'floor'
    },
    {'1': 'revision', '3': 6, '4': 1, '5': 4, '10': 'revision'},
  ],
  '8': [
    {'1': 'distribution'},
  ],
};

/// Descriptor for `HeatingCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingCircuitDescriptor = $convert.base64Decode(
    'Cg5IZWF0aW5nQ2lyY3VpdBIdCgpjaXJjdWl0X2lkGAEgASgJUgljaXJjdWl0SWQSGQoIcGxhbn'
    'RfaWQYAiABKAlSB3BsYW50SWQSEgoEbmFtZRgDIAEoCVIEbmFtZRJFCghyYWRpYXRvchgEIAEo'
    'CzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuUmFkaWF0b3JDaXJjdWl0SABSCHJhZGlhdG9yEj'
    'wKBWZsb29yGAUgASgLMiQua3VzaW50YS5pb3QuaGVhdGluZy52MS5GbG9vckNpcmN1aXRIAFIF'
    'Zmxvb3ISGgoIcmV2aXNpb24YBiABKARSCHJldmlzaW9uQg4KDGRpc3RyaWJ1dGlvbg==');

@$core.Deprecated('Use radiatorCircuitDescriptor instead')
const RadiatorCircuit$json = {
  '1': 'RadiatorCircuit',
};

/// Descriptor for `RadiatorCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radiatorCircuitDescriptor =
    $convert.base64Decode('Cg9SYWRpYXRvckNpcmN1aXQ=');

@$core.Deprecated('Use floorCircuitDescriptor instead')
const FloorCircuit$json = {
  '1': 'FloorCircuit',
  '2': [
    {'1': 'mixing_valve', '3': 1, '4': 1, '5': 8, '10': 'mixingValve'},
    {
      '1': 'supply_cap_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'supplyCapCentidegrees',
      '17': true
    },
    {
      '1': 'supply_probe',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'supplyProbe'
    },
    {
      '1': 'return_probe',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'returnProbe'
    },
  ],
  '8': [
    {'1': '_supply_cap_centidegrees'},
  ],
};

/// Descriptor for `FloorCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorCircuitDescriptor = $convert.base64Decode(
    'CgxGbG9vckNpcmN1aXQSIQoMbWl4aW5nX3ZhbHZlGAEgASgIUgttaXhpbmdWYWx2ZRI7ChdzdX'
    'BwbHlfY2FwX2NlbnRpZGVncmVlcxgCIAEoEUgAUhVzdXBwbHlDYXBDZW50aWRlZ3JlZXOIAQES'
    'SgoMc3VwcGx5X3Byb2JlGAMgASgLMicua3VzaW50YS5pb3QuaGVhdGluZy52MS5EZXZpY2VBdH'
    'RyaWJ1dGVSC3N1cHBseVByb2JlEkoKDHJldHVybl9wcm9iZRgEIAEoCzInLmt1c2ludGEuaW90'
    'LmhlYXRpbmcudjEuRGV2aWNlQXR0cmlidXRlUgtyZXR1cm5Qcm9iZUIaChhfc3VwcGx5X2NhcF'
    '9jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use floorZoneDescriptor instead')
const FloorZone$json = {
  '1': 'FloorZone',
  '2': [
    {'1': 'zone_id', '3': 1, '4': 1, '5': 9, '10': 'zoneId'},
    {'1': 'circuit_id', '3': 2, '4': 1, '5': 9, '10': 'circuitId'},
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
      '1': 'rooms',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZoneRoom',
      '10': 'rooms'
    },
    {
      '1': 'control_room_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'controlRoomId'
    },
    {'1': 'revision', '3': 7, '4': 1, '5': 4, '10': 'revision'},
    {
      '1': 'uncontrolled_since',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'uncontrolledSince'
    },
    {
      '1': 'uncontrolled_by',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'uncontrolledBy'
    },
  ],
};

/// Descriptor for `FloorZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneDescriptor = $convert.base64Decode(
    'CglGbG9vclpvbmUSFwoHem9uZV9pZBgBIAEoCVIGem9uZUlkEh0KCmNpcmN1aXRfaWQYAiABKA'
    'lSCWNpcmN1aXRJZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2lu'
    'dGEuaW90LmhlYXRpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI7CgVyb29tcxgFIAMoCz'
    'IlLmt1c2ludGEuaW90LmhlYXRpbmcudjEuRmxvb3Jab25lUm9vbVIFcm9vbXMSSAoPY29udHJv'
    'bF9yb29tX2lkGAYgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFINY29udH'
    'JvbFJvb21JZBIaCghyZXZpc2lvbhgHIAEoBFIIcmV2aXNpb24SSQoSdW5jb250cm9sbGVkX3Np'
    'bmNlGAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIRdW5jb250cm9sbGVkU2luY2'
    'USSAoPdW5jb250cm9sbGVkX2J5GAkgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuVXNl'
    'cklkUg51bmNvbnRyb2xsZWRCeQ==');

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
  ],
};

/// Descriptor for `FloorZoneRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneRoomDescriptor = $convert.base64Decode(
    'Cg1GbG9vclpvbmVSb29tEjkKB3Jvb21faWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgZyb29tSWQSLgoTYXJlYV9zaGFyZV9wZXJtaWxsZRgCIAEoDVIRYXJlYVNo'
    'YXJlUGVybWlsbGU=');

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
    {'1': 'revision', '3': 6, '4': 1, '5': 4, '10': 'revision'},
    {'1': 'windows_revision', '3': 7, '4': 1, '5': 4, '10': 'windowsRevision'},
    {'1': 'windows_withheld', '3': 8, '4': 1, '5': 8, '10': 'windowsWithheld'},
  ],
};

/// Descriptor for `ComfortLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comfortLoadDescriptor = $convert.base64Decode(
    'CgtDb21mb3J0TG9hZBImCg9jb21mb3J0X2xvYWRfaWQYASABKAlSDWNvbWZvcnRMb2FkSWQSOQ'
    'oHcm9vbV9pZBgCIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSBnJvb21J'
    'ZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2ludGEuaW90LmhlYX'
    'RpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI/Cgd3aW5kb3dzGAUgAygLMiUua3VzaW50'
    'YS5pb3QuaGVhdGluZy52MS5Db21mb3J0V2luZG93Ugd3aW5kb3dzEhoKCHJldmlzaW9uGAYgAS'
    'gEUghyZXZpc2lvbhIpChB3aW5kb3dzX3JldmlzaW9uGAcgASgEUg93aW5kb3dzUmV2aXNpb24S'
    'KQoQd2luZG93c193aXRoaGVsZBgIIAEoCFIPd2luZG93c1dpdGhoZWxk');

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
      '1': 'circuits',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingCircuit',
      '10': 'circuits'
    },
    {
      '1': 'floor_zones',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZone',
      '10': 'floorZones'
    },
    {
      '1': 'comfort_loads',
      '3': 4,
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
    'EuSGVhdGluZ1BsYW50UgZwbGFudHMSQgoIY2lyY3VpdHMYAiADKAsyJi5rdXNpbnRhLmlvdC5o'
    'ZWF0aW5nLnYxLkhlYXRpbmdDaXJjdWl0UghjaXJjdWl0cxJCCgtmbG9vcl96b25lcxgDIAMoCz'
    'IhLmt1c2ludGEuaW90LmhlYXRpbmcudjEuRmxvb3Jab25lUgpmbG9vclpvbmVzEkgKDWNvbWZv'
    'cnRfbG9hZHMYBCADKAsyIy5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNvbWZvcnRMb2FkUgxjb2'
    '1mb3J0TG9hZHM=');

@$core.Deprecated('Use heatingRecordDescriptor instead')
const HeatingRecord$json = {
  '1': 'HeatingRecord',
  '2': [
    {
      '1': 'plant',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingPlant',
      '9': 0,
      '10': 'plant'
    },
    {
      '1': 'circuit',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingCircuit',
      '9': 0,
      '10': 'circuit'
    },
    {
      '1': 'floor_zone',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZone',
      '9': 0,
      '10': 'floorZone'
    },
    {
      '1': 'comfort_load',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortLoad',
      '9': 0,
      '10': 'comfortLoad'
    },
  ],
  '8': [
    {'1': 'record'},
  ],
};

/// Descriptor for `HeatingRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingRecordDescriptor = $convert.base64Decode(
    'Cg1IZWF0aW5nUmVjb3JkEjwKBXBsYW50GAEgASgLMiQua3VzaW50YS5pb3QuaGVhdGluZy52MS'
    '5IZWF0aW5nUGxhbnRIAFIFcGxhbnQSQgoHY2lyY3VpdBgCIAEoCzImLmt1c2ludGEuaW90Lmhl'
    'YXRpbmcudjEuSGVhdGluZ0NpcmN1aXRIAFIHY2lyY3VpdBJCCgpmbG9vcl96b25lGAMgASgLMi'
    'Eua3VzaW50YS5pb3QuaGVhdGluZy52MS5GbG9vclpvbmVIAFIJZmxvb3Jab25lEkgKDGNvbWZv'
    'cnRfbG9hZBgEIAEoCzIjLmt1c2ludGEuaW90LmhlYXRpbmcudjEuQ29tZm9ydExvYWRIAFILY2'
    '9tZm9ydExvYWRCCAoGcmVjb3Jk');

@$core.Deprecated('Use priceRuleChangeDescriptor instead')
const PriceRuleChange$json = {
  '1': 'PriceRuleChange',
  '2': [
    {
      '1': 'rule',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRule',
      '10': 'rule'
    },
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRuleMode',
      '10': 'mode'
    },
    {
      '1': 'previous_mode',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRuleMode',
      '10': 'previousMode'
    },
    {
      '1': 'at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'set_by_role',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'setByRole'
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
};

/// Descriptor for `PriceRuleChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priceRuleChangeDescriptor = $convert.base64Decode(
    'Cg9QcmljZVJ1bGVDaGFuZ2USNQoEcnVsZRgBIAEoDjIhLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuUHJpY2VSdWxlUgRydWxlEjkKBG1vZGUYAiABKA4yJS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYx'
    'LlByaWNlUnVsZU1vZGVSBG1vZGUSSgoNcHJldmlvdXNfbW9kZRgDIAEoDjIlLmt1c2ludGEuaW'
    '90LmhlYXRpbmcudjEuUHJpY2VSdWxlTW9kZVIMcHJldmlvdXNNb2RlEioKAmF0GAQgASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFICYXQSOwoLc2V0X2J5X3JvbGUYBSABKA4yGy5rdX'
    'NpbnRhLmlvdC5hY2Nlc3MudjEuUm9sZVIJc2V0QnlSb2xlEjYKBnNldF9ieRgGIAEoCzIfLmt1'
    'c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIFc2V0Qnk=');

@$core.Deprecated('Use heatBlockDescriptor instead')
const HeatBlock$json = {
  '1': 'HeatBlock',
  '2': [
    {'1': 'block_id', '3': 1, '4': 1, '5': 9, '10': 'blockId'},
    {
      '1': 'rule',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRule',
      '10': 'rule'
    },
    {
      '1': 'mode',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRuleMode',
      '10': 'mode'
    },
    {
      '1': 'reason',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateExplanationKind',
      '10': 'reason'
    },
    {
      '1': 'started_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startedAt'
    },
    {
      '1': 'planned_end_at',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'plannedEndAt'
    },
    {
      '1': 'ended_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endedAt'
    },
    {
      '1': 'end',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatBlockEnd',
      '10': 'end'
    },
  ],
};

/// Descriptor for `HeatBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockDescriptor = $convert.base64Decode(
    'CglIZWF0QmxvY2sSGQoIYmxvY2tfaWQYASABKAlSB2Jsb2NrSWQSNQoEcnVsZRgCIAEoDjIhLm'
    't1c2ludGEuaW90LmhlYXRpbmcudjEuUHJpY2VSdWxlUgRydWxlEjkKBG1vZGUYAyABKA4yJS5r'
    'dXNpbnRhLmlvdC5oZWF0aW5nLnYxLlByaWNlUnVsZU1vZGVSBG1vZGUSRgoGcmVhc29uGAQgAS'
    'gOMi4ua3VzaW50YS5pb3QuY2xpbWF0ZS52MS5DbGltYXRlRXhwbGFuYXRpb25LaW5kUgZyZWFz'
    'b24SOQoKc3RhcnRlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YX'
    'J0ZWRBdBJACg5wbGFubmVkX2VuZF9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSDHBsYW5uZWRFbmRBdBI1CghlbmRlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW'
    '1lc3RhbXBSB2VuZGVkQXQSNgoDZW5kGAggASgOMiQua3VzaW50YS5pb3QuaGVhdGluZy52MS5I'
    'ZWF0QmxvY2tFbmRSA2VuZA==');

@$core.Deprecated('Use heatBlockReleaseDescriptor instead')
const HeatBlockRelease$json = {
  '1': 'HeatBlockRelease',
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
      '1': 'hold_until',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'holdUntil'
    },
    {'1': 'ended_block_ids', '3': 3, '4': 3, '5': 9, '10': 'endedBlockIds'},
    {
      '1': 'set_by_role',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'setByRole'
    },
    {
      '1': 'set_by',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'setBy'
    },
  ],
};

/// Descriptor for `HeatBlockRelease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockReleaseDescriptor = $convert.base64Decode(
    'ChBIZWF0QmxvY2tSZWxlYXNlEioKAmF0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFICYXQSOQoKaG9sZF91bnRpbBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBS'
    'CWhvbGRVbnRpbBImCg9lbmRlZF9ibG9ja19pZHMYAyADKAlSDWVuZGVkQmxvY2tJZHMSOwoLc2'
    'V0X2J5X3JvbGUYBCABKA4yGy5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuUm9sZVIJc2V0QnlSb2xl'
    'EjYKBnNldF9ieRgFIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIFc2V0Qn'
    'k=');

@$core.Deprecated('Use heatBlockStatusDescriptor instead')
const HeatBlockStatus$json = {
  '1': 'HeatBlockStatus',
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
    {'1': 'plant_name', '3': 3, '4': 1, '5': 9, '10': 'plantName'},
    {
      '1': 'current',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlock',
      '10': 'current'
    },
    {
      '1': 'hold',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlockRelease',
      '10': 'hold'
    },
    {
      '1': 'price_rules',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.PriceRuleChange',
      '10': 'priceRules'
    },
  ],
};

/// Descriptor for `HeatBlockStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockStatusDescriptor = $convert.base64Decode(
    'Cg9IZWF0QmxvY2tTdGF0dXMSGQoIcGxhbnRfaWQYASABKAlSB3BsYW50SWQSOwoIc3BhY2VfaW'
    'QYAiABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEh0KCnBs'
    'YW50X25hbWUYAyABKAlSCXBsYW50TmFtZRI7CgdjdXJyZW50GAQgAygLMiEua3VzaW50YS5pb3'
    'QuaGVhdGluZy52MS5IZWF0QmxvY2tSB2N1cnJlbnQSPAoEaG9sZBgFIAEoCzIoLmt1c2ludGEu'
    'aW90LmhlYXRpbmcudjEuSGVhdEJsb2NrUmVsZWFzZVIEaG9sZBJICgtwcmljZV9ydWxlcxgGIA'
    'MoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuUHJpY2VSdWxlQ2hhbmdlUgpwcmljZVJ1bGVz');

@$core.Deprecated('Use heatBlockStatusesDescriptor instead')
const HeatBlockStatuses$json = {
  '1': 'HeatBlockStatuses',
  '2': [
    {
      '1': 'statuses',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlockStatus',
      '10': 'statuses'
    },
  ],
};

/// Descriptor for `HeatBlockStatuses`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockStatusesDescriptor = $convert.base64Decode(
    'ChFIZWF0QmxvY2tTdGF0dXNlcxJDCghzdGF0dXNlcxgBIAMoCzInLmt1c2ludGEuaW90LmhlYX'
    'RpbmcudjEuSGVhdEJsb2NrU3RhdHVzUghzdGF0dXNlcw==');

@$core.Deprecated('Use heatBlockHistoryDescriptor instead')
const HeatBlockHistory$json = {
  '1': 'HeatBlockHistory',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'kept_from',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'keptFrom'
    },
    {
      '1': 'blocks',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlock',
      '10': 'blocks'
    },
    {
      '1': 'releases',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlockRelease',
      '10': 'releases'
    },
    {
      '1': 'rule_changes',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.PriceRuleChange',
      '10': 'ruleChanges'
    },
  ],
};

/// Descriptor for `HeatBlockHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockHistoryDescriptor = $convert.base64Decode(
    'ChBIZWF0QmxvY2tIaXN0b3J5EhkKCHBsYW50X2lkGAEgASgJUgdwbGFudElkEjcKCWtlcHRfZn'
    'JvbRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGtlcHRGcm9tEjkKBmJsb2Nr'
    'cxgDIAMoCzIhLmt1c2ludGEuaW90LmhlYXRpbmcudjEuSGVhdEJsb2NrUgZibG9ja3MSRAoIcm'
    'VsZWFzZXMYBCADKAsyKC5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRCbG9ja1JlbGVhc2VS'
    'CHJlbGVhc2VzEkoKDHJ1bGVfY2hhbmdlcxgFIAMoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuUHJpY2VSdWxlQ2hhbmdlUgtydWxlQ2hhbmdlcw==');

@$core.Deprecated('Use shadowDayDescriptor instead')
const ShadowDay$json = {
  '1': 'ShadowDay',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {
      '1': 'net_saving_micro_eur',
      '3': 2,
      '4': 1,
      '5': 18,
      '10': 'netSavingMicroEur'
    },
    {
      '1': 'recovery_cost_micro_eur',
      '3': 3,
      '4': 1,
      '5': 18,
      '10': 'recoveryCostMicroEur'
    },
    {'1': 'blocked_quarters', '3': 4, '4': 1, '5': 13, '10': 'blockedQuarters'},
    {'1': 'breach_quarters', '3': 5, '4': 1, '5': 13, '10': 'breachQuarters'},
    {
      '1': 'overheat_quarters',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'overheatQuarters'
    },
    {
      '1': 'no_price_quarters',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'noPriceQuarters'
    },
  ],
};

/// Descriptor for `ShadowDay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowDayDescriptor = $convert.base64Decode(
    'CglTaGFkb3dEYXkSEgoEZGF0ZRgBIAEoCVIEZGF0ZRIvChRuZXRfc2F2aW5nX21pY3JvX2V1ch'
    'gCIAEoElIRbmV0U2F2aW5nTWljcm9FdXISNQoXcmVjb3ZlcnlfY29zdF9taWNyb19ldXIYAyAB'
    'KBJSFHJlY292ZXJ5Q29zdE1pY3JvRXVyEikKEGJsb2NrZWRfcXVhcnRlcnMYBCABKA1SD2Jsb2'
    'NrZWRRdWFydGVycxInCg9icmVhY2hfcXVhcnRlcnMYBSABKA1SDmJyZWFjaFF1YXJ0ZXJzEisK'
    'EW92ZXJoZWF0X3F1YXJ0ZXJzGAYgASgNUhBvdmVyaGVhdFF1YXJ0ZXJzEioKEW5vX3ByaWNlX3'
    'F1YXJ0ZXJzGAcgASgNUg9ub1ByaWNlUXVhcnRlcnM=');

@$core.Deprecated('Use shadowBandSeriesDescriptor instead')
const ShadowBandSeries$json = {
  '1': 'ShadowBandSeries',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'rule',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRule',
      '10': 'rule'
    },
    {
      '1': 'below_target_centidegrees',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'belowTargetCentidegrees'
    },
    {
      '1': 'above_target_centidegrees',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'aboveTargetCentidegrees'
    },
    {
      '1': 'days',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ShadowDay',
      '10': 'days'
    },
  ],
};

/// Descriptor for `ShadowBandSeries`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowBandSeriesDescriptor = $convert.base64Decode(
    'ChBTaGFkb3dCYW5kU2VyaWVzEhkKCHBsYW50X2lkGAEgASgJUgdwbGFudElkEjUKBHJ1bGUYAi'
    'ABKA4yIS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLlByaWNlUnVsZVIEcnVsZRI6ChliZWxvd190'
    'YXJnZXRfY2VudGlkZWdyZWVzGAMgASgNUhdiZWxvd1RhcmdldENlbnRpZGVncmVlcxI6ChlhYm'
    '92ZV90YXJnZXRfY2VudGlkZWdyZWVzGAQgASgNUhdhYm92ZVRhcmdldENlbnRpZGVncmVlcxI1'
    'CgRkYXlzGAUgAygLMiEua3VzaW50YS5pb3QuaGVhdGluZy52MS5TaGFkb3dEYXlSBGRheXM=');

@$core.Deprecated('Use shadowSummaryDescriptor instead')
const ShadowSummary$json = {
  '1': 'ShadowSummary',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {'1': 'kept_from', '3': 2, '4': 1, '5': 9, '10': 'keptFrom'},
    {
      '1': 'series',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ShadowBandSeries',
      '10': 'series'
    },
  ],
};

/// Descriptor for `ShadowSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowSummaryDescriptor = $convert.base64Decode(
    'Cg1TaGFkb3dTdW1tYXJ5EjkKB2hvbWVfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgZob21lSWQSGwoJa2VwdF9mcm9tGAIgASgJUghrZXB0RnJvbRJACgZzZXJp'
    'ZXMYAyADKAsyKC5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLlNoYWRvd0JhbmRTZXJpZXNSBnNlcm'
    'llcw==');
