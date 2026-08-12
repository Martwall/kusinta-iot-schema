// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/properties.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use thermostatPropertiesDescriptor instead')
const ThermostatProperties$json = {
  '1': 'ThermostatProperties',
  '2': [
    {
      '1': 'local_temperature',
      '3': 1,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'localTemperature'
    },
    {
      '1': 'occupied_heating_setpoint',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'occupiedHeatingSetpoint'
    },
    {
      '1': 'occupied_cooling_setpoint',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'occupiedCoolingSetpoint'
    },
    {
      '1': 'min_heat_setpoint_limit',
      '3': 4,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'minHeatSetpointLimit'
    },
    {
      '1': 'max_heat_setpoint_limit',
      '3': 5,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'maxHeatSetpointLimit'
    },
    {
      '1': 'min_cool_setpoint_limit',
      '3': 6,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'minCoolSetpointLimit'
    },
    {
      '1': 'max_cool_setpoint_limit',
      '3': 7,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'maxCoolSetpointLimit'
    },
    {
      '1': 'control_sequence_of_operation',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'controlSequenceOfOperation'
    },
    {'1': 'system_mode', '3': 9, '4': 1, '5': 13, '8': {}, '10': 'systemMode'},
    {
      '1': 'thermostat_running_mode',
      '3': 10,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'thermostatRunningMode'
    },
  ],
  '7': {},
};

/// Descriptor for `ThermostatProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatPropertiesDescriptor = $convert.base64Decode(
    'ChRUaGVybW9zdGF0UHJvcGVydGllcxJGChFsb2NhbF90ZW1wZXJhdHVyZRgBIAEoEUIZiLUYgQ'
    'SStRgQTG9jYWxUZW1wZXJhdHVyZVIQbG9jYWxUZW1wZXJhdHVyZRJcChlvY2N1cGllZF9oZWF0'
    'aW5nX3NldHBvaW50GAIgASgRQiCItRiBBJK1GBdPY2N1cGllZEhlYXRpbmdTZXRwb2ludFIXb2'
    'NjdXBpZWRIZWF0aW5nU2V0cG9pbnQSXAoZb2NjdXBpZWRfY29vbGluZ19zZXRwb2ludBgDIAEo'
    'EUIgiLUYgQSStRgXT2NjdXBpZWRDb29saW5nU2V0cG9pbnRSF29jY3VwaWVkQ29vbGluZ1NldH'
    'BvaW50ElQKF21pbl9oZWF0X3NldHBvaW50X2xpbWl0GAQgASgRQh2ItRiBBJK1GBRNaW5IZWF0'
    'U2V0cG9pbnRMaW1pdFIUbWluSGVhdFNldHBvaW50TGltaXQSVAoXbWF4X2hlYXRfc2V0cG9pbn'
    'RfbGltaXQYBSABKBFCHYi1GIEEkrUYFE1heEhlYXRTZXRwb2ludExpbWl0UhRtYXhIZWF0U2V0'
    'cG9pbnRMaW1pdBJUChdtaW5fY29vbF9zZXRwb2ludF9saW1pdBgGIAEoEUIdiLUYgQSStRgUTW'
    'luQ29vbFNldHBvaW50TGltaXRSFG1pbkNvb2xTZXRwb2ludExpbWl0ElQKF21heF9jb29sX3Nl'
    'dHBvaW50X2xpbWl0GAcgASgRQh2ItRiBBJK1GBRNYXhDb29sU2V0cG9pbnRMaW1pdFIUbWF4Q2'
    '9vbFNldHBvaW50TGltaXQSZgodY29udHJvbF9zZXF1ZW5jZV9vZl9vcGVyYXRpb24YCCABKA1C'
    'I4i1GIEEkrUYGkNvbnRyb2xTZXF1ZW5jZU9mT3BlcmF0aW9uUhpjb250cm9sU2VxdWVuY2VPZk'
    '9wZXJhdGlvbhI0CgtzeXN0ZW1fbW9kZRgJIAEoDUITiLUYgQSStRgKU3lzdGVtTW9kZVIKc3lz'
    'dGVtTW9kZRJWChd0aGVybW9zdGF0X3J1bm5pbmdfbW9kZRgKIAEoDUIeiLUYgQSStRgVVGhlcm'
    '1vc3RhdFJ1bm5pbmdNb2RlUhV0aGVybW9zdGF0UnVubmluZ01vZGU6Bpq1GAKBBg==');

@$core.Deprecated('Use temperatureSensorPropertiesDescriptor instead')
const TemperatureSensorProperties$json = {
  '1': 'TemperatureSensorProperties',
  '2': [
    {
      '1': 'measured_value',
      '3': 1,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'measuredValue'
    },
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'minMeasuredValue'
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'maxMeasuredValue'
    },
    {'1': 'tolerance', '3': 4, '4': 1, '5': 13, '8': {}, '10': 'tolerance'},
  ],
  '7': {},
};

/// Descriptor for `TemperatureSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureSensorPropertiesDescriptor = $convert.base64Decode(
    'ChtUZW1wZXJhdHVyZVNlbnNvclByb3BlcnRpZXMSPQoObWVhc3VyZWRfdmFsdWUYASABKBFCFo'
    'i1GIIIkrUYDU1lYXN1cmVkVmFsdWVSDW1lYXN1cmVkVmFsdWUSRwoSbWluX21lYXN1cmVkX3Zh'
    'bHVlGAIgASgRQhmItRiCCJK1GBBNaW5NZWFzdXJlZFZhbHVlUhBtaW5NZWFzdXJlZFZhbHVlEk'
    'cKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoEUIZiLUYggiStRgQTWF4TWVhc3VyZWRWYWx1ZVIQ'
    'bWF4TWVhc3VyZWRWYWx1ZRIwCgl0b2xlcmFuY2UYBCABKA1CEoi1GIIIkrUYCVRvbGVyYW5jZV'
    'IJdG9sZXJhbmNlOgaatRgCggY=');

@$core.Deprecated('Use humiditySensorPropertiesDescriptor instead')
const HumiditySensorProperties$json = {
  '1': 'HumiditySensorProperties',
  '2': [
    {
      '1': 'measured_value',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'measuredValue'
    },
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'minMeasuredValue'
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'maxMeasuredValue'
    },
    {'1': 'tolerance', '3': 4, '4': 1, '5': 13, '8': {}, '10': 'tolerance'},
  ],
  '7': {},
};

/// Descriptor for `HumiditySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List humiditySensorPropertiesDescriptor = $convert.base64Decode(
    'ChhIdW1pZGl0eVNlbnNvclByb3BlcnRpZXMSPQoObWVhc3VyZWRfdmFsdWUYASABKA1CFoi1GI'
    'UIkrUYDU1lYXN1cmVkVmFsdWVSDW1lYXN1cmVkVmFsdWUSRwoSbWluX21lYXN1cmVkX3ZhbHVl'
    'GAIgASgNQhmItRiFCJK1GBBNaW5NZWFzdXJlZFZhbHVlUhBtaW5NZWFzdXJlZFZhbHVlEkcKEm'
    '1heF9tZWFzdXJlZF92YWx1ZRgDIAEoDUIZiLUYhQiStRgQTWF4TWVhc3VyZWRWYWx1ZVIQbWF4'
    'TWVhc3VyZWRWYWx1ZRIwCgl0b2xlcmFuY2UYBCABKA1CEoi1GIUIkrUYCVRvbGVyYW5jZVIJdG'
    '9sZXJhbmNlOgaatRgChwY=');

@$core.Deprecated('Use occupancySensorPropertiesDescriptor instead')
const OccupancySensorProperties$json = {
  '1': 'OccupancySensorProperties',
  '2': [
    {'1': 'occupancy', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'occupancy'},
    {
      '1': 'occupancy_sensor_type',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'occupancySensorType'
    },
    {
      '1': 'occupancy_sensor_type_bitmap',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'occupancySensorTypeBitmap'
    },
    {
      '1': 'pir_occupied_to_unoccupied_delay',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'pirOccupiedToUnoccupiedDelay'
    },
    {
      '1': 'pir_unoccupied_to_occupied_delay',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'pirUnoccupiedToOccupiedDelay'
    },
  ],
  '7': {},
  '10': ['pir_occ_to_unocc_delay', 'pir_unocc_to_occ_delay'],
};

/// Descriptor for `OccupancySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List occupancySensorPropertiesDescriptor = $convert.base64Decode(
    'ChlPY2N1cGFuY3lTZW5zb3JQcm9wZXJ0aWVzEjAKCW9jY3VwYW5jeRgBIAEoDUISiLUYhgiStR'
    'gJT2NjdXBhbmN5UglvY2N1cGFuY3kSUAoVb2NjdXBhbmN5X3NlbnNvcl90eXBlGAIgASgNQhyI'
    'tRiGCJK1GBNPY2N1cGFuY3lTZW5zb3JUeXBlUhNvY2N1cGFuY3lTZW5zb3JUeXBlEmMKHG9jY3'
    'VwYW5jeV9zZW5zb3JfdHlwZV9iaXRtYXAYAyABKA1CIoi1GIYIkrUYGU9jY3VwYW5jeVNlbnNv'
    'clR5cGVCaXRtYXBSGW9jY3VwYW5jeVNlbnNvclR5cGVCaXRtYXASbQogcGlyX29jY3VwaWVkX3'
    'RvX3Vub2NjdXBpZWRfZGVsYXkYBCABKA1CJYi1GIYIkrUYHFBJUk9jY3VwaWVkVG9Vbm9jY3Vw'
    'aWVkRGVsYXlSHHBpck9jY3VwaWVkVG9Vbm9jY3VwaWVkRGVsYXkSbQogcGlyX3Vub2NjdXBpZW'
    'RfdG9fb2NjdXBpZWRfZGVsYXkYBSABKA1CJYi1GIYIkrUYHFBJUlVub2NjdXBpZWRUb09jY3Vw'
    'aWVkRGVsYXlSHHBpclVub2NjdXBpZWRUb09jY3VwaWVkRGVsYXk6Bpq1GAKHAlIWcGlyX29jY1'
    '90b191bm9jY19kZWxheVIWcGlyX3Vub2NjX3RvX29jY19kZWxheQ==');

@$core.Deprecated('Use contactSensorPropertiesDescriptor instead')
const ContactSensorProperties$json = {
  '1': 'ContactSensorProperties',
  '2': [
    {'1': 'state_value', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'stateValue'},
  ],
  '7': {},
};

/// Descriptor for `ContactSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactSensorPropertiesDescriptor =
    $convert.base64Decode(
        'ChdDb250YWN0U2Vuc29yUHJvcGVydGllcxIzCgtzdGF0ZV92YWx1ZRgBIAEoCEISiLUYRZK1GA'
        'pTdGF0ZVZhbHVlUgpzdGF0ZVZhbHVlOgWatRgBFQ==');

@$core.Deprecated('Use windowCoveringPropertiesDescriptor instead')
const WindowCoveringProperties$json = {
  '1': 'WindowCoveringProperties',
  '2': [
    {
      '1': 'covering_type',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'coveringType'
    },
    {
      '1': 'current_position_lift_percent100ths',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'currentPositionLiftPercent100ths'
    },
    {
      '1': 'current_position_tilt_percent100ths',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'currentPositionTiltPercent100ths'
    },
    {
      '1': 'target_position_lift_percent100ths',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'targetPositionLiftPercent100ths'
    },
    {
      '1': 'target_position_tilt_percent100ths',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'targetPositionTiltPercent100ths'
    },
    {
      '1': 'operational_status',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'operationalStatus'
    },
    {
      '1': 'end_product_type',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'endProductType'
    },
    {'1': 'mode', '3': 8, '4': 1, '5': 13, '8': {}, '10': 'mode'},
  ],
  '7': {},
};

/// Descriptor for `WindowCoveringProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List windowCoveringPropertiesDescriptor = $convert.base64Decode(
    'ChhXaW5kb3dDb3ZlcmluZ1Byb3BlcnRpZXMSMgoNY292ZXJpbmdfdHlwZRgBIAEoDUINiLUYgg'
    'KStRgEVHlwZVIMY292ZXJpbmdUeXBlEngKI2N1cnJlbnRfcG9zaXRpb25fbGlmdF9wZXJjZW50'
    'MTAwdGhzGAIgASgNQimItRiCApK1GCBDdXJyZW50UG9zaXRpb25MaWZ0UGVyY2VudDEwMHRoc1'
    'IgY3VycmVudFBvc2l0aW9uTGlmdFBlcmNlbnQxMDB0aHMSeAojY3VycmVudF9wb3NpdGlvbl90'
    'aWx0X3BlcmNlbnQxMDB0aHMYAyABKA1CKYi1GIICkrUYIEN1cnJlbnRQb3NpdGlvblRpbHRQZX'
    'JjZW50MTAwdGhzUiBjdXJyZW50UG9zaXRpb25UaWx0UGVyY2VudDEwMHRocxJ1CiJ0YXJnZXRf'
    'cG9zaXRpb25fbGlmdF9wZXJjZW50MTAwdGhzGAQgASgNQiiItRiCApK1GB9UYXJnZXRQb3NpdG'
    'lvbkxpZnRQZXJjZW50MTAwdGhzUh90YXJnZXRQb3NpdGlvbkxpZnRQZXJjZW50MTAwdGhzEnUK'
    'InRhcmdldF9wb3NpdGlvbl90aWx0X3BlcmNlbnQxMDB0aHMYBSABKA1CKIi1GIICkrUYH1Rhcm'
    'dldFBvc2l0aW9uVGlsdFBlcmNlbnQxMDB0aHNSH3RhcmdldFBvc2l0aW9uVGlsdFBlcmNlbnQx'
    'MDB0aHMSSQoSb3BlcmF0aW9uYWxfc3RhdHVzGAYgASgNQhqItRiCApK1GBFPcGVyYXRpb25hbF'
    'N0YXR1c1IRb3BlcmF0aW9uYWxTdGF0dXMSQQoQZW5kX3Byb2R1Y3RfdHlwZRgHIAEoDUIXiLUY'
    'ggKStRgORW5kUHJvZHVjdFR5cGVSDmVuZFByb2R1Y3RUeXBlEiEKBG1vZGUYCCABKA1CDYi1GI'
    'ICkrUYBE1vZGVSBG1vZGU6Bpq1GAKCBA==');

@$core.Deprecated('Use doorLockPropertiesDescriptor instead')
const DoorLockProperties$json = {
  '1': 'DoorLockProperties',
  '2': [
    {'1': 'lock_state', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'lockState'},
    {'1': 'lock_type', '3': 2, '4': 1, '5': 13, '8': {}, '10': 'lockType'},
    {
      '1': 'actuator_enabled',
      '3': 3,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'actuatorEnabled'
    },
    {'1': 'door_state', '3': 4, '4': 1, '5': 13, '8': {}, '10': 'doorState'},
    {
      '1': 'operating_mode',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'operatingMode'
    },
  ],
  '7': {},
};

/// Descriptor for `DoorLockProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doorLockPropertiesDescriptor = $convert.base64Decode(
    'ChJEb29yTG9ja1Byb3BlcnRpZXMSMQoKbG9ja19zdGF0ZRgBIAEoDUISiLUYgQKStRgJTG9ja1'
    'N0YXRlUglsb2NrU3RhdGUSLgoJbG9ja190eXBlGAIgASgNQhGItRiBApK1GAhMb2NrVHlwZVII'
    'bG9ja1R5cGUSQwoQYWN0dWF0b3JfZW5hYmxlZBgDIAEoCEIYiLUYgQKStRgPQWN0dWF0b3JFbm'
    'FibGVkUg9hY3R1YXRvckVuYWJsZWQSMQoKZG9vcl9zdGF0ZRgEIAEoDUISiLUYgQKStRgJRG9v'
    'clN0YXRlUglkb29yU3RhdGUSPQoOb3BlcmF0aW5nX21vZGUYBSABKA1CFoi1GIECkrUYDU9wZX'
    'JhdGluZ01vZGVSDW9wZXJhdGluZ01vZGU6BZq1GAEK');

@$core.Deprecated('Use onOffLightPropertiesDescriptor instead')
const OnOffLightProperties$json = {
  '1': 'OnOffLightProperties',
  '2': [
    {'1': 'on_off', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'onOff'},
    {
      '1': 'global_scene_control',
      '3': 2,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'globalSceneControl'
    },
    {'1': 'on_time', '3': 3, '4': 1, '5': 13, '8': {}, '10': 'onTime'},
    {
      '1': 'off_wait_time',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'offWaitTime'
    },
    {
      '1': 'start_up_on_off',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'startUpOnOff'
    },
  ],
  '7': {},
};

/// Descriptor for `OnOffLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onOffLightPropertiesDescriptor = $convert.base64Decode(
    'ChRPbk9mZkxpZ2h0UHJvcGVydGllcxIkCgZvbl9vZmYYASABKAhCDYi1GAaStRgFT25PZmZSBW'
    '9uT2ZmEkwKFGdsb2JhbF9zY2VuZV9jb250cm9sGAIgASgIQhqItRgGkrUYEkdsb2JhbFNjZW5l'
    'Q29udHJvbFISZ2xvYmFsU2NlbmVDb250cm9sEicKB29uX3RpbWUYAyABKA1CDoi1GAaStRgGT2'
    '5UaW1lUgZvblRpbWUSNwoNb2ZmX3dhaXRfdGltZRgEIAEoDUITiLUYBpK1GAtPZmZXYWl0VGlt'
    'ZVILb2ZmV2FpdFRpbWUSOwoPc3RhcnRfdXBfb25fb2ZmGAUgASgNQhSItRgGkrUYDFN0YXJ0VX'
    'BPbk9mZlIMc3RhcnRVcE9uT2ZmOgaatRgCgAI=');

@$core.Deprecated('Use dimmableLightPropertiesDescriptor instead')
const DimmableLightProperties$json = {
  '1': 'DimmableLightProperties',
  '2': [
    {'1': 'on_off', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'onOff'},
    {
      '1': 'current_level',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'currentLevel'
    },
    {'1': 'min_level', '3': 3, '4': 1, '5': 13, '8': {}, '10': 'minLevel'},
    {'1': 'max_level', '3': 4, '4': 1, '5': 13, '8': {}, '10': 'maxLevel'},
    {'1': 'on_level', '3': 5, '4': 1, '5': 13, '8': {}, '10': 'onLevel'},
    {
      '1': 'start_up_current_level',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'startUpCurrentLevel'
    },
    {
      '1': 'remaining_time',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'remainingTime'
    },
  ],
  '7': {},
};

/// Descriptor for `DimmableLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dimmableLightPropertiesDescriptor = $convert.base64Decode(
    'ChdEaW1tYWJsZUxpZ2h0UHJvcGVydGllcxIkCgZvbl9vZmYYASABKAhCDYi1GAaStRgFT25PZm'
    'ZSBW9uT2ZmEjkKDWN1cnJlbnRfbGV2ZWwYAiABKA1CFIi1GAiStRgMQ3VycmVudExldmVsUgxj'
    'dXJyZW50TGV2ZWwSLQoJbWluX2xldmVsGAMgASgNQhCItRgIkrUYCE1pbkxldmVsUghtaW5MZX'
    'ZlbBItCgltYXhfbGV2ZWwYBCABKA1CEIi1GAiStRgITWF4TGV2ZWxSCG1heExldmVsEioKCG9u'
    'X2xldmVsGAUgASgNQg+ItRgIkrUYB09uTGV2ZWxSB29uTGV2ZWwSUAoWc3RhcnRfdXBfY3Vycm'
    'VudF9sZXZlbBgGIAEoDUIbiLUYCJK1GBNTdGFydFVwQ3VycmVudExldmVsUhNzdGFydFVwQ3Vy'
    'cmVudExldmVsEjwKDnJlbWFpbmluZ190aW1lGAcgASgNQhWItRgIkrUYDVJlbWFpbmluZ1RpbW'
    'VSDXJlbWFpbmluZ1RpbWU6Bpq1GAKBAg==');

@$core.Deprecated('Use colorTemperatureLightPropertiesDescriptor instead')
const ColorTemperatureLightProperties$json = {
  '1': 'ColorTemperatureLightProperties',
  '2': [
    {'1': 'on_off', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'onOff'},
    {
      '1': 'current_level',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'currentLevel'
    },
    {
      '1': 'color_temperature_mireds',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'colorTemperatureMireds'
    },
    {
      '1': 'color_temp_physical_min_mireds',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'colorTempPhysicalMinMireds'
    },
    {
      '1': 'color_temp_physical_max_mireds',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'colorTempPhysicalMaxMireds'
    },
    {
      '1': 'startup_color_temperature_mireds',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': {},
      '10': 'startupColorTemperatureMireds'
    },
    {'1': 'color_mode', '3': 7, '4': 1, '5': 13, '8': {}, '10': 'colorMode'},
  ],
  '7': {},
};

/// Descriptor for `ColorTemperatureLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorTemperatureLightPropertiesDescriptor = $convert.base64Decode(
    'Ch9Db2xvclRlbXBlcmF0dXJlTGlnaHRQcm9wZXJ0aWVzEiQKBm9uX29mZhgBIAEoCEINiLUYBp'
    'K1GAVPbk9mZlIFb25PZmYSOQoNY3VycmVudF9sZXZlbBgCIAEoDUIUiLUYCJK1GAxDdXJyZW50'
    'TGV2ZWxSDGN1cnJlbnRMZXZlbBJZChhjb2xvcl90ZW1wZXJhdHVyZV9taXJlZHMYAyABKA1CH4'
    'i1GIAGkrUYFkNvbG9yVGVtcGVyYXR1cmVNaXJlZHNSFmNvbG9yVGVtcGVyYXR1cmVNaXJlZHMS'
    'ZwoeY29sb3JfdGVtcF9waHlzaWNhbF9taW5fbWlyZWRzGAQgASgNQiOItRiABpK1GBpDb2xvcl'
    'RlbXBQaHlzaWNhbE1pbk1pcmVkc1IaY29sb3JUZW1wUGh5c2ljYWxNaW5NaXJlZHMSZwoeY29s'
    'b3JfdGVtcF9waHlzaWNhbF9tYXhfbWlyZWRzGAUgASgNQiOItRiABpK1GBpDb2xvclRlbXBQaH'
    'lzaWNhbE1heE1pcmVkc1IaY29sb3JUZW1wUGh5c2ljYWxNYXhNaXJlZHMSbwogc3RhcnR1cF9j'
    'b2xvcl90ZW1wZXJhdHVyZV9taXJlZHMYBiABKA1CJoi1GIAGkrUYHVN0YXJ0VXBDb2xvclRlbX'
    'BlcmF0dXJlTWlyZWRzUh1zdGFydHVwQ29sb3JUZW1wZXJhdHVyZU1pcmVkcxIxCgpjb2xvcl9t'
    'b2RlGAcgASgNQhKItRiABpK1GAlDb2xvck1vZGVSCWNvbG9yTW9kZToGmrUYAowC');

@$core.Deprecated('Use energySensorPropertiesDescriptor instead')
const EnergySensorProperties$json = {
  '1': 'EnergySensorProperties',
  '2': [
    {
      '1': 'active_power',
      '3': 5,
      '4': 1,
      '5': 18,
      '8': {},
      '10': 'activePower'
    },
    {'1': 'voltage', '3': 6, '4': 1, '5': 18, '8': {}, '10': 'voltage'},
    {
      '1': 'active_current',
      '3': 7,
      '4': 1,
      '5': 18,
      '8': {},
      '10': 'activeCurrent'
    },
    {'1': 'frequency', '3': 8, '4': 1, '5': 18, '8': {}, '10': 'frequency'},
  ],
  '7': {},
  '9': [
    {'1': 1, '2': 2},
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
  ],
  '10': ['rms_voltage', 'rms_current', 'ac_frequency'],
};

/// Descriptor for `EnergySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List energySensorPropertiesDescriptor = $convert.base64Decode(
    'ChZFbmVyZ3lTZW5zb3JQcm9wZXJ0aWVzEjcKDGFjdGl2ZV9wb3dlchgFIAEoEkIUiLUYkAGStR'
    'gLQWN0aXZlUG93ZXJSC2FjdGl2ZVBvd2VyEioKB3ZvbHRhZ2UYBiABKBJCEIi1GJABkrUYB1Zv'
    'bHRhZ2VSB3ZvbHRhZ2USPQoOYWN0aXZlX2N1cnJlbnQYByABKBJCFoi1GJABkrUYDUFjdGl2ZU'
    'N1cnJlbnRSDWFjdGl2ZUN1cnJlbnQSMAoJZnJlcXVlbmN5GAggASgSQhKItRiQAZK1GAlGcmVx'
    'dWVuY3lSCWZyZXF1ZW5jeToGmrUYApAKSgQIARACSgQIAhADSgQIAxAESgQIBBAFUgtybXNfdm'
    '9sdGFnZVILcm1zX2N1cnJlbnRSDGFjX2ZyZXF1ZW5jeQ==');

@$core.Deprecated('Use pressureSensorPropertiesDescriptor instead')
const PressureSensorProperties$json = {
  '1': 'PressureSensorProperties',
  '2': [
    {
      '1': 'measured_value',
      '3': 1,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'measuredValue'
    },
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'minMeasuredValue'
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '10': 'maxMeasuredValue'
    },
    {'1': 'tolerance', '3': 4, '4': 1, '5': 13, '8': {}, '10': 'tolerance'},
  ],
  '7': {},
};

/// Descriptor for `PressureSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pressureSensorPropertiesDescriptor = $convert.base64Decode(
    'ChhQcmVzc3VyZVNlbnNvclByb3BlcnRpZXMSPQoObWVhc3VyZWRfdmFsdWUYASABKBFCFoi1GI'
    'MIkrUYDU1lYXN1cmVkVmFsdWVSDW1lYXN1cmVkVmFsdWUSRwoSbWluX21lYXN1cmVkX3ZhbHVl'
    'GAIgASgRQhmItRiDCJK1GBBNaW5NZWFzdXJlZFZhbHVlUhBtaW5NZWFzdXJlZFZhbHVlEkcKEm'
    '1heF9tZWFzdXJlZF92YWx1ZRgDIAEoEUIZiLUYgwiStRgQTWF4TWVhc3VyZWRWYWx1ZVIQbWF4'
    'TWVhc3VyZWRWYWx1ZRIwCgl0b2xlcmFuY2UYBCABKA1CEoi1GIMIkrUYCVRvbGVyYW5jZVIJdG'
    '9sZXJhbmNlOgaatRgChQY=');
