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
    'RyaWJ1dGVSBW1ldGVyEhoKCHJldmlzaW9uGAggASgEUghyZXZpc2lvbkIJCgdjb250cm9s');

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
  ],
};

/// Descriptor for `FloorZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneDescriptor = $convert.base64Decode(
    'CglGbG9vclpvbmUSFwoHem9uZV9pZBgBIAEoCVIGem9uZUlkEh0KCmNpcmN1aXRfaWQYAiABKA'
    'lSCWNpcmN1aXRJZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2lu'
    'dGEuaW90LmhlYXRpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI7CgVyb29tcxgFIAMoCz'
    'IlLmt1c2ludGEuaW90LmhlYXRpbmcudjEuRmxvb3Jab25lUm9vbVIFcm9vbXMSSAoPY29udHJv'
    'bF9yb29tX2lkGAYgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFINY29udH'
    'JvbFJvb21JZBIaCghyZXZpc2lvbhgHIAEoBFIIcmV2aXNpb24=');

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
  ],
};

/// Descriptor for `ComfortLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comfortLoadDescriptor = $convert.base64Decode(
    'CgtDb21mb3J0TG9hZBImCg9jb21mb3J0X2xvYWRfaWQYASABKAlSDWNvbWZvcnRMb2FkSWQSOQ'
    'oHcm9vbV9pZBgCIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSBnJvb21J'
    'ZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2ludGEuaW90LmhlYX'
    'RpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI/Cgd3aW5kb3dzGAUgAygLMiUua3VzaW50'
    'YS5pb3QuaGVhdGluZy52MS5Db21mb3J0V2luZG93Ugd3aW5kb3dzEhoKCHJldmlzaW9uGAYgAS'
    'gEUghyZXZpc2lvbg==');

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
