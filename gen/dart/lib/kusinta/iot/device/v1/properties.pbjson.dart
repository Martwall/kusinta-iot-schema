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
      '9': 0,
      '10': 'localTemperature',
      '17': true
    },
    {
      '1': 'occupied_heating_setpoint',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 1,
      '10': 'occupiedHeatingSetpoint',
      '17': true
    },
    {
      '1': 'occupied_cooling_setpoint',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 2,
      '10': 'occupiedCoolingSetpoint',
      '17': true
    },
    {
      '1': 'min_heat_setpoint_limit',
      '3': 4,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 3,
      '10': 'minHeatSetpointLimit',
      '17': true
    },
    {
      '1': 'max_heat_setpoint_limit',
      '3': 5,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 4,
      '10': 'maxHeatSetpointLimit',
      '17': true
    },
    {
      '1': 'min_cool_setpoint_limit',
      '3': 6,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 5,
      '10': 'minCoolSetpointLimit',
      '17': true
    },
    {
      '1': 'max_cool_setpoint_limit',
      '3': 7,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 6,
      '10': 'maxCoolSetpointLimit',
      '17': true
    },
    {
      '1': 'control_sequence_of_operation',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 7,
      '10': 'controlSequenceOfOperation',
      '17': true
    },
    {
      '1': 'system_mode',
      '3': 9,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 8,
      '10': 'systemMode',
      '17': true
    },
    {
      '1': 'thermostat_running_mode',
      '3': 10,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 9,
      '10': 'thermostatRunningMode',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_local_temperature'},
    {'1': '_occupied_heating_setpoint'},
    {'1': '_occupied_cooling_setpoint'},
    {'1': '_min_heat_setpoint_limit'},
    {'1': '_max_heat_setpoint_limit'},
    {'1': '_min_cool_setpoint_limit'},
    {'1': '_max_cool_setpoint_limit'},
    {'1': '_control_sequence_of_operation'},
    {'1': '_system_mode'},
    {'1': '_thermostat_running_mode'},
  ],
};

/// Descriptor for `ThermostatProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatPropertiesDescriptor = $convert.base64Decode(
    'ChRUaGVybW9zdGF0UHJvcGVydGllcxJPChFsb2NhbF90ZW1wZXJhdHVyZRgBIAEoEUIdiLUYgQ'
    'SStRgQTG9jYWxUZW1wZXJhdHVyZbC1GABIAFIQbG9jYWxUZW1wZXJhdHVyZYgBARJlChlvY2N1'
    'cGllZF9oZWF0aW5nX3NldHBvaW50GAIgASgRQiSItRiBBJK1GBdPY2N1cGllZEhlYXRpbmdTZX'
    'Rwb2ludLC1GBJIAVIXb2NjdXBpZWRIZWF0aW5nU2V0cG9pbnSIAQESZQoZb2NjdXBpZWRfY29v'
    'bGluZ19zZXRwb2ludBgDIAEoEUIkiLUYgQSStRgXT2NjdXBpZWRDb29saW5nU2V0cG9pbnSwtR'
    'gRSAJSF29jY3VwaWVkQ29vbGluZ1NldHBvaW50iAEBEl0KF21pbl9oZWF0X3NldHBvaW50X2xp'
    'bWl0GAQgASgRQiGItRiBBJK1GBRNaW5IZWF0U2V0cG9pbnRMaW1pdLC1GBVIA1IUbWluSGVhdF'
    'NldHBvaW50TGltaXSIAQESXQoXbWF4X2hlYXRfc2V0cG9pbnRfbGltaXQYBSABKBFCIYi1GIEE'
    'krUYFE1heEhlYXRTZXRwb2ludExpbWl0sLUYFkgEUhRtYXhIZWF0U2V0cG9pbnRMaW1pdIgBAR'
    'JdChdtaW5fY29vbF9zZXRwb2ludF9saW1pdBgGIAEoEUIhiLUYgQSStRgUTWluQ29vbFNldHBv'
    'aW50TGltaXSwtRgXSAVSFG1pbkNvb2xTZXRwb2ludExpbWl0iAEBEl0KF21heF9jb29sX3NldH'
    'BvaW50X2xpbWl0GAcgASgRQiGItRiBBJK1GBRNYXhDb29sU2V0cG9pbnRMaW1pdLC1GBhIBlIU'
    'bWF4Q29vbFNldHBvaW50TGltaXSIAQESbwodY29udHJvbF9zZXF1ZW5jZV9vZl9vcGVyYXRpb2'
    '4YCCABKA1CJ4i1GIEEkrUYGkNvbnRyb2xTZXF1ZW5jZU9mT3BlcmF0aW9usLUYG0gHUhpjb250'
    'cm9sU2VxdWVuY2VPZk9wZXJhdGlvbogBARI9CgtzeXN0ZW1fbW9kZRgJIAEoDUIXiLUYgQSStR'
    'gKU3lzdGVtTW9kZbC1GBxICFIKc3lzdGVtTW9kZYgBARJfChd0aGVybW9zdGF0X3J1bm5pbmdf'
    'bW9kZRgKIAEoDUIiiLUYgQSStRgVVGhlcm1vc3RhdFJ1bm5pbmdNb2RlsLUYHkgJUhV0aGVybW'
    '9zdGF0UnVubmluZ01vZGWIAQE6Bpq1GAKBBkIUChJfbG9jYWxfdGVtcGVyYXR1cmVCHAoaX29j'
    'Y3VwaWVkX2hlYXRpbmdfc2V0cG9pbnRCHAoaX29jY3VwaWVkX2Nvb2xpbmdfc2V0cG9pbnRCGg'
    'oYX21pbl9oZWF0X3NldHBvaW50X2xpbWl0QhoKGF9tYXhfaGVhdF9zZXRwb2ludF9saW1pdEIa'
    'ChhfbWluX2Nvb2xfc2V0cG9pbnRfbGltaXRCGgoYX21heF9jb29sX3NldHBvaW50X2xpbWl0Qi'
    'AKHl9jb250cm9sX3NlcXVlbmNlX29mX29wZXJhdGlvbkIOCgxfc3lzdGVtX21vZGVCGgoYX3Ro'
    'ZXJtb3N0YXRfcnVubmluZ19tb2Rl');

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
      '9': 0,
      '10': 'measuredValue',
      '17': true
    },
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 1,
      '10': 'minMeasuredValue',
      '17': true
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 2,
      '10': 'maxMeasuredValue',
      '17': true
    },
    {
      '1': 'tolerance',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'tolerance',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_measured_value'},
    {'1': '_min_measured_value'},
    {'1': '_max_measured_value'},
    {'1': '_tolerance'},
  ],
};

/// Descriptor for `TemperatureSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureSensorPropertiesDescriptor = $convert.base64Decode(
    'ChtUZW1wZXJhdHVyZVNlbnNvclByb3BlcnRpZXMSRgoObWVhc3VyZWRfdmFsdWUYASABKBFCGo'
    'i1GIIIkrUYDU1lYXN1cmVkVmFsdWWwtRgASABSDW1lYXN1cmVkVmFsdWWIAQESUAoSbWluX21l'
    'YXN1cmVkX3ZhbHVlGAIgASgRQh2ItRiCCJK1GBBNaW5NZWFzdXJlZFZhbHVlsLUYAUgBUhBtaW'
    '5NZWFzdXJlZFZhbHVliAEBElAKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoEUIdiLUYggiStRgQ'
    'TWF4TWVhc3VyZWRWYWx1ZbC1GAJIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI5Cgl0b2xlcmFuY2'
    'UYBCABKA1CFoi1GIIIkrUYCVRvbGVyYW5jZbC1GANIA1IJdG9sZXJhbmNliAEBOgaatRgCggZC'
    'EQoPX21lYXN1cmVkX3ZhbHVlQhUKE19taW5fbWVhc3VyZWRfdmFsdWVCFQoTX21heF9tZWFzdX'
    'JlZF92YWx1ZUIMCgpfdG9sZXJhbmNl');

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
      '9': 0,
      '10': 'measuredValue',
      '17': true
    },
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'minMeasuredValue',
      '17': true
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'maxMeasuredValue',
      '17': true
    },
    {
      '1': 'tolerance',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'tolerance',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_measured_value'},
    {'1': '_min_measured_value'},
    {'1': '_max_measured_value'},
    {'1': '_tolerance'},
  ],
};

/// Descriptor for `HumiditySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List humiditySensorPropertiesDescriptor = $convert.base64Decode(
    'ChhIdW1pZGl0eVNlbnNvclByb3BlcnRpZXMSRgoObWVhc3VyZWRfdmFsdWUYASABKA1CGoi1GI'
    'UIkrUYDU1lYXN1cmVkVmFsdWWwtRgASABSDW1lYXN1cmVkVmFsdWWIAQESUAoSbWluX21lYXN1'
    'cmVkX3ZhbHVlGAIgASgNQh2ItRiFCJK1GBBNaW5NZWFzdXJlZFZhbHVlsLUYAUgBUhBtaW5NZW'
    'FzdXJlZFZhbHVliAEBElAKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoDUIdiLUYhQiStRgQTWF4'
    'TWVhc3VyZWRWYWx1ZbC1GAJIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI5Cgl0b2xlcmFuY2UYBC'
    'ABKA1CFoi1GIUIkrUYCVRvbGVyYW5jZbC1GANIA1IJdG9sZXJhbmNliAEBOgaatRgChwZCEQoP'
    'X21lYXN1cmVkX3ZhbHVlQhUKE19taW5fbWVhc3VyZWRfdmFsdWVCFQoTX21heF9tZWFzdXJlZF'
    '92YWx1ZUIMCgpfdG9sZXJhbmNl');

@$core.Deprecated('Use occupancySensorPropertiesDescriptor instead')
const OccupancySensorProperties$json = {
  '1': 'OccupancySensorProperties',
  '2': [
    {
      '1': 'occupancy',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 0,
      '10': 'occupancy',
      '17': true
    },
    {
      '1': 'occupancy_sensor_type',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'occupancySensorType',
      '17': true
    },
    {
      '1': 'occupancy_sensor_type_bitmap',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'occupancySensorTypeBitmap',
      '17': true
    },
    {
      '1': 'pir_occupied_to_unoccupied_delay',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'pirOccupiedToUnoccupiedDelay',
      '17': true
    },
    {
      '1': 'pir_unoccupied_to_occupied_delay',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'pirUnoccupiedToOccupiedDelay',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_occupancy'},
    {'1': '_occupancy_sensor_type'},
    {'1': '_occupancy_sensor_type_bitmap'},
    {'1': '_pir_occupied_to_unoccupied_delay'},
    {'1': '_pir_unoccupied_to_occupied_delay'},
  ],
  '10': ['pir_occ_to_unocc_delay', 'pir_unocc_to_occ_delay'],
};

/// Descriptor for `OccupancySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List occupancySensorPropertiesDescriptor = $convert.base64Decode(
    'ChlPY2N1cGFuY3lTZW5zb3JQcm9wZXJ0aWVzEjkKCW9jY3VwYW5jeRgBIAEoDUIWiLUYhgiStR'
    'gJT2NjdXBhbmN5sLUYAEgAUglvY2N1cGFuY3mIAQESWQoVb2NjdXBhbmN5X3NlbnNvcl90eXBl'
    'GAIgASgNQiCItRiGCJK1GBNPY2N1cGFuY3lTZW5zb3JUeXBlsLUYAUgBUhNvY2N1cGFuY3lTZW'
    '5zb3JUeXBliAEBEmwKHG9jY3VwYW5jeV9zZW5zb3JfdHlwZV9iaXRtYXAYAyABKA1CJoi1GIYI'
    'krUYGU9jY3VwYW5jeVNlbnNvclR5cGVCaXRtYXCwtRgCSAJSGW9jY3VwYW5jeVNlbnNvclR5cG'
    'VCaXRtYXCIAQESdgogcGlyX29jY3VwaWVkX3RvX3Vub2NjdXBpZWRfZGVsYXkYBCABKA1CKYi1'
    'GIYIkrUYHFBJUk9jY3VwaWVkVG9Vbm9jY3VwaWVkRGVsYXmwtRgQSANSHHBpck9jY3VwaWVkVG'
    '9Vbm9jY3VwaWVkRGVsYXmIAQESdgogcGlyX3Vub2NjdXBpZWRfdG9fb2NjdXBpZWRfZGVsYXkY'
    'BSABKA1CKYi1GIYIkrUYHFBJUlVub2NjdXBpZWRUb09jY3VwaWVkRGVsYXmwtRgRSARSHHBpcl'
    'Vub2NjdXBpZWRUb09jY3VwaWVkRGVsYXmIAQE6Bpq1GAKHAkIMCgpfb2NjdXBhbmN5QhgKFl9v'
    'Y2N1cGFuY3lfc2Vuc29yX3R5cGVCHwodX29jY3VwYW5jeV9zZW5zb3JfdHlwZV9iaXRtYXBCIw'
    'ohX3Bpcl9vY2N1cGllZF90b191bm9jY3VwaWVkX2RlbGF5QiMKIV9waXJfdW5vY2N1cGllZF90'
    'b19vY2N1cGllZF9kZWxheVIWcGlyX29jY190b191bm9jY19kZWxheVIWcGlyX3Vub2NjX3RvX2'
    '9jY19kZWxheQ==');

@$core.Deprecated('Use contactSensorPropertiesDescriptor instead')
const ContactSensorProperties$json = {
  '1': 'ContactSensorProperties',
  '2': [
    {
      '1': 'state_value',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'stateValue',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_state_value'},
  ],
};

/// Descriptor for `ContactSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactSensorPropertiesDescriptor = $convert.base64Decode(
    'ChdDb250YWN0U2Vuc29yUHJvcGVydGllcxI8CgtzdGF0ZV92YWx1ZRgBIAEoCEIWiLUYRZK1GA'
    'pTdGF0ZVZhbHVlsLUYAEgAUgpzdGF0ZVZhbHVliAEBOgWatRgBFUIOCgxfc3RhdGVfdmFsdWU=');

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
      '9': 0,
      '10': 'coveringType',
      '17': true
    },
    {
      '1': 'current_position_lift_percent100ths',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'currentPositionLiftPercent100ths',
      '17': true
    },
    {
      '1': 'current_position_tilt_percent100ths',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'currentPositionTiltPercent100ths',
      '17': true
    },
    {
      '1': 'target_position_lift_percent100ths',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'targetPositionLiftPercent100ths',
      '17': true
    },
    {
      '1': 'target_position_tilt_percent100ths',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'targetPositionTiltPercent100ths',
      '17': true
    },
    {
      '1': 'operational_status',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 5,
      '10': 'operationalStatus',
      '17': true
    },
    {
      '1': 'end_product_type',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 6,
      '10': 'endProductType',
      '17': true
    },
    {
      '1': 'mode',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 7,
      '10': 'mode',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_covering_type'},
    {'1': '_current_position_lift_percent100ths'},
    {'1': '_current_position_tilt_percent100ths'},
    {'1': '_target_position_lift_percent100ths'},
    {'1': '_target_position_tilt_percent100ths'},
    {'1': '_operational_status'},
    {'1': '_end_product_type'},
    {'1': '_mode'},
  ],
};

/// Descriptor for `WindowCoveringProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List windowCoveringPropertiesDescriptor = $convert.base64Decode(
    'ChhXaW5kb3dDb3ZlcmluZ1Byb3BlcnRpZXMSOwoNY292ZXJpbmdfdHlwZRgBIAEoDUIRiLUYgg'
    'KStRgEVHlwZbC1GABIAFIMY292ZXJpbmdUeXBliAEBEoEBCiNjdXJyZW50X3Bvc2l0aW9uX2xp'
    'ZnRfcGVyY2VudDEwMHRocxgCIAEoDUItiLUYggKStRggQ3VycmVudFBvc2l0aW9uTGlmdFBlcm'
    'NlbnQxMDB0aHOwtRgOSAFSIGN1cnJlbnRQb3NpdGlvbkxpZnRQZXJjZW50MTAwdGhziAEBEoEB'
    'CiNjdXJyZW50X3Bvc2l0aW9uX3RpbHRfcGVyY2VudDEwMHRocxgDIAEoDUItiLUYggKStRggQ3'
    'VycmVudFBvc2l0aW9uVGlsdFBlcmNlbnQxMDB0aHOwtRgPSAJSIGN1cnJlbnRQb3NpdGlvblRp'
    'bHRQZXJjZW50MTAwdGhziAEBEn4KInRhcmdldF9wb3NpdGlvbl9saWZ0X3BlcmNlbnQxMDB0aH'
    'MYBCABKA1CLIi1GIICkrUYH1RhcmdldFBvc2l0aW9uTGlmdFBlcmNlbnQxMDB0aHOwtRgLSANS'
    'H3RhcmdldFBvc2l0aW9uTGlmdFBlcmNlbnQxMDB0aHOIAQESfgoidGFyZ2V0X3Bvc2l0aW9uX3'
    'RpbHRfcGVyY2VudDEwMHRocxgFIAEoDUIsiLUYggKStRgfVGFyZ2V0UG9zaXRpb25UaWx0UGVy'
    'Y2VudDEwMHRoc7C1GAxIBFIfdGFyZ2V0UG9zaXRpb25UaWx0UGVyY2VudDEwMHRoc4gBARJSCh'
    'JvcGVyYXRpb25hbF9zdGF0dXMYBiABKA1CHoi1GIICkrUYEU9wZXJhdGlvbmFsU3RhdHVzsLUY'
    'CkgFUhFvcGVyYXRpb25hbFN0YXR1c4gBARJKChBlbmRfcHJvZHVjdF90eXBlGAcgASgNQhuItR'
    'iCApK1GA5FbmRQcm9kdWN0VHlwZbC1GA1IBlIOZW5kUHJvZHVjdFR5cGWIAQESKgoEbW9kZRgI'
    'IAEoDUIRiLUYggKStRgETW9kZbC1GBdIB1IEbW9kZYgBAToGmrUYAoIEQhAKDl9jb3ZlcmluZ1'
    '90eXBlQiYKJF9jdXJyZW50X3Bvc2l0aW9uX2xpZnRfcGVyY2VudDEwMHRoc0ImCiRfY3VycmVu'
    'dF9wb3NpdGlvbl90aWx0X3BlcmNlbnQxMDB0aHNCJQojX3RhcmdldF9wb3NpdGlvbl9saWZ0X3'
    'BlcmNlbnQxMDB0aHNCJQojX3RhcmdldF9wb3NpdGlvbl90aWx0X3BlcmNlbnQxMDB0aHNCFQoT'
    'X29wZXJhdGlvbmFsX3N0YXR1c0ITChFfZW5kX3Byb2R1Y3RfdHlwZUIHCgVfbW9kZQ==');

@$core.Deprecated('Use doorLockPropertiesDescriptor instead')
const DoorLockProperties$json = {
  '1': 'DoorLockProperties',
  '2': [
    {
      '1': 'lock_state',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 0,
      '10': 'lockState',
      '17': true
    },
    {
      '1': 'lock_type',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'lockType',
      '17': true
    },
    {
      '1': 'actuator_enabled',
      '3': 3,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 2,
      '10': 'actuatorEnabled',
      '17': true
    },
    {
      '1': 'door_state',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'doorState',
      '17': true
    },
    {
      '1': 'operating_mode',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'operatingMode',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_lock_state'},
    {'1': '_lock_type'},
    {'1': '_actuator_enabled'},
    {'1': '_door_state'},
    {'1': '_operating_mode'},
  ],
};

/// Descriptor for `DoorLockProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doorLockPropertiesDescriptor = $convert.base64Decode(
    'ChJEb29yTG9ja1Byb3BlcnRpZXMSOgoKbG9ja19zdGF0ZRgBIAEoDUIWiLUYgQKStRgJTG9ja1'
    'N0YXRlsLUYAEgAUglsb2NrU3RhdGWIAQESNwoJbG9ja190eXBlGAIgASgNQhWItRiBApK1GAhM'
    'b2NrVHlwZbC1GAFIAVIIbG9ja1R5cGWIAQESTAoQYWN0dWF0b3JfZW5hYmxlZBgDIAEoCEIciL'
    'UYgQKStRgPQWN0dWF0b3JFbmFibGVksLUYAkgCUg9hY3R1YXRvckVuYWJsZWSIAQESOgoKZG9v'
    'cl9zdGF0ZRgEIAEoDUIWiLUYgQKStRgJRG9vclN0YXRlsLUYA0gDUglkb29yU3RhdGWIAQESRg'
    'oOb3BlcmF0aW5nX21vZGUYBSABKA1CGoi1GIECkrUYDU9wZXJhdGluZ01vZGWwtRglSARSDW9w'
    'ZXJhdGluZ01vZGWIAQE6BZq1GAEKQg0KC19sb2NrX3N0YXRlQgwKCl9sb2NrX3R5cGVCEwoRX2'
    'FjdHVhdG9yX2VuYWJsZWRCDQoLX2Rvb3Jfc3RhdGVCEQoPX29wZXJhdGluZ19tb2Rl');

@$core.Deprecated('Use onOffLightPropertiesDescriptor instead')
const OnOffLightProperties$json = {
  '1': 'OnOffLightProperties',
  '2': [
    {
      '1': 'on_off',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'onOff',
      '17': true
    },
    {
      '1': 'global_scene_control',
      '3': 2,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 1,
      '10': 'globalSceneControl',
      '17': true
    },
    {
      '1': 'on_time',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'onTime',
      '17': true
    },
    {
      '1': 'off_wait_time',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'offWaitTime',
      '17': true
    },
    {
      '1': 'start_up_on_off',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'startUpOnOff',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_on_off'},
    {'1': '_global_scene_control'},
    {'1': '_on_time'},
    {'1': '_off_wait_time'},
    {'1': '_start_up_on_off'},
  ],
};

/// Descriptor for `OnOffLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onOffLightPropertiesDescriptor = $convert.base64Decode(
    'ChRPbk9mZkxpZ2h0UHJvcGVydGllcxItCgZvbl9vZmYYASABKAhCEYi1GAaStRgFT25PZmawtR'
    'gASABSBW9uT2ZmiAEBElcKFGdsb2JhbF9zY2VuZV9jb250cm9sGAIgASgIQiCItRgGkrUYEkds'
    'b2JhbFNjZW5lQ29udHJvbLC1GICAAUgBUhJnbG9iYWxTY2VuZUNvbnRyb2yIAQESMgoHb25fdG'
    'ltZRgDIAEoDUIUiLUYBpK1GAZPblRpbWWwtRiBgAFIAlIGb25UaW1liAEBEkIKDW9mZl93YWl0'
    'X3RpbWUYBCABKA1CGYi1GAaStRgLT2ZmV2FpdFRpbWWwtRiCgAFIA1ILb2ZmV2FpdFRpbWWIAQ'
    'ESRgoPc3RhcnRfdXBfb25fb2ZmGAUgASgNQhqItRgGkrUYDFN0YXJ0VXBPbk9mZrC1GIOAAUgE'
    'UgxzdGFydFVwT25PZmaIAQE6Bpq1GAKAAkIJCgdfb25fb2ZmQhcKFV9nbG9iYWxfc2NlbmVfY2'
    '9udHJvbEIKCghfb25fdGltZUIQCg5fb2ZmX3dhaXRfdGltZUISChBfc3RhcnRfdXBfb25fb2Zm');

@$core.Deprecated('Use dimmableLightPropertiesDescriptor instead')
const DimmableLightProperties$json = {
  '1': 'DimmableLightProperties',
  '2': [
    {
      '1': 'on_off',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'onOff',
      '17': true
    },
    {
      '1': 'current_level',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'currentLevel',
      '17': true
    },
    {
      '1': 'min_level',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'minLevel',
      '17': true
    },
    {
      '1': 'max_level',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'maxLevel',
      '17': true
    },
    {
      '1': 'on_level',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'onLevel',
      '17': true
    },
    {
      '1': 'start_up_current_level',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 5,
      '10': 'startUpCurrentLevel',
      '17': true
    },
    {
      '1': 'remaining_time',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 6,
      '10': 'remainingTime',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_on_off'},
    {'1': '_current_level'},
    {'1': '_min_level'},
    {'1': '_max_level'},
    {'1': '_on_level'},
    {'1': '_start_up_current_level'},
    {'1': '_remaining_time'},
  ],
};

/// Descriptor for `DimmableLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dimmableLightPropertiesDescriptor = $convert.base64Decode(
    'ChdEaW1tYWJsZUxpZ2h0UHJvcGVydGllcxItCgZvbl9vZmYYASABKAhCEYi1GAaStRgFT25PZm'
    'awtRgASABSBW9uT2ZmiAEBEkIKDWN1cnJlbnRfbGV2ZWwYAiABKA1CGIi1GAiStRgMQ3VycmVu'
    'dExldmVssLUYAEgBUgxjdXJyZW50TGV2ZWyIAQESNgoJbWluX2xldmVsGAMgASgNQhSItRgIkr'
    'UYCE1pbkxldmVssLUYAkgCUghtaW5MZXZlbIgBARI2CgltYXhfbGV2ZWwYBCABKA1CFIi1GAiS'
    'tRgITWF4TGV2ZWywtRgDSANSCG1heExldmVsiAEBEjMKCG9uX2xldmVsGAUgASgNQhOItRgIkr'
    'UYB09uTGV2ZWywtRgRSARSB29uTGV2ZWyIAQESWwoWc3RhcnRfdXBfY3VycmVudF9sZXZlbBgG'
    'IAEoDUIhiLUYCJK1GBNTdGFydFVwQ3VycmVudExldmVssLUYgIABSAVSE3N0YXJ0VXBDdXJyZW'
    '50TGV2ZWyIAQESRQoOcmVtYWluaW5nX3RpbWUYByABKA1CGYi1GAiStRgNUmVtYWluaW5nVGlt'
    'ZbC1GAFIBlINcmVtYWluaW5nVGltZYgBAToGmrUYAoECQgkKB19vbl9vZmZCEAoOX2N1cnJlbn'
    'RfbGV2ZWxCDAoKX21pbl9sZXZlbEIMCgpfbWF4X2xldmVsQgsKCV9vbl9sZXZlbEIZChdfc3Rh'
    'cnRfdXBfY3VycmVudF9sZXZlbEIRCg9fcmVtYWluaW5nX3RpbWU=');

@$core.Deprecated('Use colorTemperatureLightPropertiesDescriptor instead')
const ColorTemperatureLightProperties$json = {
  '1': 'ColorTemperatureLightProperties',
  '2': [
    {
      '1': 'on_off',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'onOff',
      '17': true
    },
    {
      '1': 'current_level',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'currentLevel',
      '17': true
    },
    {
      '1': 'color_temperature_mireds',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'colorTemperatureMireds',
      '17': true
    },
    {
      '1': 'color_temp_physical_min_mireds',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'colorTempPhysicalMinMireds',
      '17': true
    },
    {
      '1': 'color_temp_physical_max_mireds',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'colorTempPhysicalMaxMireds',
      '17': true
    },
    {
      '1': 'startup_color_temperature_mireds',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 5,
      '10': 'startupColorTemperatureMireds',
      '17': true
    },
    {
      '1': 'color_mode',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 6,
      '10': 'colorMode',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_on_off'},
    {'1': '_current_level'},
    {'1': '_color_temperature_mireds'},
    {'1': '_color_temp_physical_min_mireds'},
    {'1': '_color_temp_physical_max_mireds'},
    {'1': '_startup_color_temperature_mireds'},
    {'1': '_color_mode'},
  ],
};

/// Descriptor for `ColorTemperatureLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorTemperatureLightPropertiesDescriptor = $convert.base64Decode(
    'Ch9Db2xvclRlbXBlcmF0dXJlTGlnaHRQcm9wZXJ0aWVzEi0KBm9uX29mZhgBIAEoCEIRiLUYBp'
    'K1GAVPbk9mZrC1GABIAFIFb25PZmaIAQESQgoNY3VycmVudF9sZXZlbBgCIAEoDUIYiLUYCJK1'
    'GAxDdXJyZW50TGV2ZWywtRgASAFSDGN1cnJlbnRMZXZlbIgBARJiChhjb2xvcl90ZW1wZXJhdH'
    'VyZV9taXJlZHMYAyABKA1CI4i1GIAGkrUYFkNvbG9yVGVtcGVyYXR1cmVNaXJlZHOwtRgHSAJS'
    'FmNvbG9yVGVtcGVyYXR1cmVNaXJlZHOIAQEScgoeY29sb3JfdGVtcF9waHlzaWNhbF9taW5fbW'
    'lyZWRzGAQgASgNQimItRiABpK1GBpDb2xvclRlbXBQaHlzaWNhbE1pbk1pcmVkc7C1GIuAAUgD'
    'Uhpjb2xvclRlbXBQaHlzaWNhbE1pbk1pcmVkc4gBARJyCh5jb2xvcl90ZW1wX3BoeXNpY2FsX2'
    '1heF9taXJlZHMYBSABKA1CKYi1GIAGkrUYGkNvbG9yVGVtcFBoeXNpY2FsTWF4TWlyZWRzsLUY'
    'jIABSARSGmNvbG9yVGVtcFBoeXNpY2FsTWF4TWlyZWRziAEBEnoKIHN0YXJ0dXBfY29sb3JfdG'
    'VtcGVyYXR1cmVfbWlyZWRzGAYgASgNQiyItRiABpK1GB1TdGFydFVwQ29sb3JUZW1wZXJhdHVy'
    'ZU1pcmVkc7C1GJCAAUgFUh1zdGFydHVwQ29sb3JUZW1wZXJhdHVyZU1pcmVkc4gBARI6Cgpjb2'
    'xvcl9tb2RlGAcgASgNQhaItRiABpK1GAlDb2xvck1vZGWwtRgISAZSCWNvbG9yTW9kZYgBAToG'
    'mrUYAowCQgkKB19vbl9vZmZCEAoOX2N1cnJlbnRfbGV2ZWxCGwoZX2NvbG9yX3RlbXBlcmF0dX'
    'JlX21pcmVkc0IhCh9fY29sb3JfdGVtcF9waHlzaWNhbF9taW5fbWlyZWRzQiEKH19jb2xvcl90'
    'ZW1wX3BoeXNpY2FsX21heF9taXJlZHNCIwohX3N0YXJ0dXBfY29sb3JfdGVtcGVyYXR1cmVfbW'
    'lyZWRzQg0KC19jb2xvcl9tb2Rl');

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
      '9': 0,
      '10': 'activePower',
      '17': true
    },
    {
      '1': 'voltage',
      '3': 6,
      '4': 1,
      '5': 18,
      '8': {},
      '9': 1,
      '10': 'voltage',
      '17': true
    },
    {
      '1': 'active_current',
      '3': 7,
      '4': 1,
      '5': 18,
      '8': {},
      '9': 2,
      '10': 'activeCurrent',
      '17': true
    },
    {
      '1': 'frequency',
      '3': 8,
      '4': 1,
      '5': 18,
      '8': {},
      '9': 3,
      '10': 'frequency',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_active_power'},
    {'1': '_voltage'},
    {'1': '_active_current'},
    {'1': '_frequency'},
  ],
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
    'ChZFbmVyZ3lTZW5zb3JQcm9wZXJ0aWVzEkAKDGFjdGl2ZV9wb3dlchgFIAEoEkIYiLUYkAGStR'
    'gLQWN0aXZlUG93ZXKwtRgISABSC2FjdGl2ZVBvd2VyiAEBEjMKB3ZvbHRhZ2UYBiABKBJCFIi1'
    'GJABkrUYB1ZvbHRhZ2WwtRgESAFSB3ZvbHRhZ2WIAQESRgoOYWN0aXZlX2N1cnJlbnQYByABKB'
    'JCGoi1GJABkrUYDUFjdGl2ZUN1cnJlbnSwtRgFSAJSDWFjdGl2ZUN1cnJlbnSIAQESOQoJZnJl'
    'cXVlbmN5GAggASgSQhaItRiQAZK1GAlGcmVxdWVuY3mwtRgOSANSCWZyZXF1ZW5jeYgBAToGmr'
    'UYApAKQg8KDV9hY3RpdmVfcG93ZXJCCgoIX3ZvbHRhZ2VCEQoPX2FjdGl2ZV9jdXJyZW50QgwK'
    'Cl9mcmVxdWVuY3lKBAgBEAJKBAgCEANKBAgDEARKBAgEEAVSC3Jtc192b2x0YWdlUgtybXNfY3'
    'VycmVudFIMYWNfZnJlcXVlbmN5');

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
      '9': 0,
      '10': 'measuredValue',
      '17': true
    },
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 1,
      '10': 'minMeasuredValue',
      '17': true
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 2,
      '10': 'maxMeasuredValue',
      '17': true
    },
    {
      '1': 'tolerance',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'tolerance',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_measured_value'},
    {'1': '_min_measured_value'},
    {'1': '_max_measured_value'},
    {'1': '_tolerance'},
  ],
};

/// Descriptor for `PressureSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pressureSensorPropertiesDescriptor = $convert.base64Decode(
    'ChhQcmVzc3VyZVNlbnNvclByb3BlcnRpZXMSRgoObWVhc3VyZWRfdmFsdWUYASABKBFCGoi1GI'
    'MIkrUYDU1lYXN1cmVkVmFsdWWwtRgASABSDW1lYXN1cmVkVmFsdWWIAQESUAoSbWluX21lYXN1'
    'cmVkX3ZhbHVlGAIgASgRQh2ItRiDCJK1GBBNaW5NZWFzdXJlZFZhbHVlsLUYAUgBUhBtaW5NZW'
    'FzdXJlZFZhbHVliAEBElAKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoEUIdiLUYgwiStRgQTWF4'
    'TWVhc3VyZWRWYWx1ZbC1GAJIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI5Cgl0b2xlcmFuY2UYBC'
    'ABKA1CFoi1GIMIkrUYCVRvbGVyYW5jZbC1GANIA1IJdG9sZXJhbmNliAEBOgaatRgChQZCEQoP'
    'X21lYXN1cmVkX3ZhbHVlQhUKE19taW5fbWVhc3VyZWRfdmFsdWVCFQoTX21heF9tZWFzdXJlZF'
    '92YWx1ZUIMCgpfdG9sZXJhbmNl');

@$core.Deprecated('Use powerSourcePropertiesDescriptor instead')
const PowerSourceProperties$json = {
  '1': 'PowerSourceProperties',
  '2': [
    {
      '1': 'bat_percent_remaining',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 0,
      '10': 'batPercentRemaining',
      '17': true
    },
    {
      '1': 'bat_charge_level',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'batChargeLevel',
      '17': true
    },
    {
      '1': 'bat_replacement_needed',
      '3': 3,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 2,
      '10': 'batReplacementNeeded',
      '17': true
    },
    {
      '1': 'bat_voltage',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 3,
      '10': 'batVoltage',
      '17': true
    },
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'status',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_bat_percent_remaining'},
    {'1': '_bat_charge_level'},
    {'1': '_bat_replacement_needed'},
    {'1': '_bat_voltage'},
    {'1': '_status'},
  ],
};

/// Descriptor for `PowerSourceProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List powerSourcePropertiesDescriptor = $convert.base64Decode(
    'ChVQb3dlclNvdXJjZVByb3BlcnRpZXMSWAoVYmF0X3BlcmNlbnRfcmVtYWluaW5nGAEgASgNQh'
    '+ItRgvkrUYE0JhdFBlcmNlbnRSZW1haW5pbmewtRgMSABSE2JhdFBlcmNlbnRSZW1haW5pbmeI'
    'AQESSQoQYmF0X2NoYXJnZV9sZXZlbBgCIAEoDUIaiLUYL5K1GA5CYXRDaGFyZ2VMZXZlbLC1GA'
    '5IAVIOYmF0Q2hhcmdlTGV2ZWyIAQESWwoWYmF0X3JlcGxhY2VtZW50X25lZWRlZBgDIAEoCEIg'
    'iLUYL5K1GBRCYXRSZXBsYWNlbWVudE5lZWRlZLC1GA9IAlIUYmF0UmVwbGFjZW1lbnROZWVkZW'
    'SIAQESPAoLYmF0X3ZvbHRhZ2UYBCABKA1CFoi1GC+StRgKQmF0Vm9sdGFnZbC1GAtIA1IKYmF0'
    'Vm9sdGFnZYgBARIvCgZzdGF0dXMYBSABKA1CEoi1GC+StRgGU3RhdHVzsLUYAEgEUgZzdGF0dX'
    'OIAQE6BZq1GAERQhgKFl9iYXRfcGVyY2VudF9yZW1haW5pbmdCEwoRX2JhdF9jaGFyZ2VfbGV2'
    'ZWxCGQoXX2JhdF9yZXBsYWNlbWVudF9uZWVkZWRCDgoMX2JhdF92b2x0YWdlQgkKB19zdGF0dX'
    'M=');
