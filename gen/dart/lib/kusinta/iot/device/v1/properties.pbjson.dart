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
    'ChRUaGVybW9zdGF0UHJvcGVydGllcxJLChFsb2NhbF90ZW1wZXJhdHVyZRgBIAEoEUIZiLUYgQ'
    'SStRgQTG9jYWxUZW1wZXJhdHVyZUgAUhBsb2NhbFRlbXBlcmF0dXJliAEBEmEKGW9jY3VwaWVk'
    'X2hlYXRpbmdfc2V0cG9pbnQYAiABKBFCIIi1GIEEkrUYF09jY3VwaWVkSGVhdGluZ1NldHBvaW'
    '50SAFSF29jY3VwaWVkSGVhdGluZ1NldHBvaW50iAEBEmEKGW9jY3VwaWVkX2Nvb2xpbmdfc2V0'
    'cG9pbnQYAyABKBFCIIi1GIEEkrUYF09jY3VwaWVkQ29vbGluZ1NldHBvaW50SAJSF29jY3VwaW'
    'VkQ29vbGluZ1NldHBvaW50iAEBElkKF21pbl9oZWF0X3NldHBvaW50X2xpbWl0GAQgASgRQh2I'
    'tRiBBJK1GBRNaW5IZWF0U2V0cG9pbnRMaW1pdEgDUhRtaW5IZWF0U2V0cG9pbnRMaW1pdIgBAR'
    'JZChdtYXhfaGVhdF9zZXRwb2ludF9saW1pdBgFIAEoEUIdiLUYgQSStRgUTWF4SGVhdFNldHBv'
    'aW50TGltaXRIBFIUbWF4SGVhdFNldHBvaW50TGltaXSIAQESWQoXbWluX2Nvb2xfc2V0cG9pbn'
    'RfbGltaXQYBiABKBFCHYi1GIEEkrUYFE1pbkNvb2xTZXRwb2ludExpbWl0SAVSFG1pbkNvb2xT'
    'ZXRwb2ludExpbWl0iAEBElkKF21heF9jb29sX3NldHBvaW50X2xpbWl0GAcgASgRQh2ItRiBBJ'
    'K1GBRNYXhDb29sU2V0cG9pbnRMaW1pdEgGUhRtYXhDb29sU2V0cG9pbnRMaW1pdIgBARJrCh1j'
    'b250cm9sX3NlcXVlbmNlX29mX29wZXJhdGlvbhgIIAEoDUIjiLUYgQSStRgaQ29udHJvbFNlcX'
    'VlbmNlT2ZPcGVyYXRpb25IB1IaY29udHJvbFNlcXVlbmNlT2ZPcGVyYXRpb26IAQESOQoLc3lz'
    'dGVtX21vZGUYCSABKA1CE4i1GIEEkrUYClN5c3RlbU1vZGVICFIKc3lzdGVtTW9kZYgBARJbCh'
    'd0aGVybW9zdGF0X3J1bm5pbmdfbW9kZRgKIAEoDUIeiLUYgQSStRgVVGhlcm1vc3RhdFJ1bm5p'
    'bmdNb2RlSAlSFXRoZXJtb3N0YXRSdW5uaW5nTW9kZYgBAToGmrUYAoEGQhQKEl9sb2NhbF90ZW'
    '1wZXJhdHVyZUIcChpfb2NjdXBpZWRfaGVhdGluZ19zZXRwb2ludEIcChpfb2NjdXBpZWRfY29v'
    'bGluZ19zZXRwb2ludEIaChhfbWluX2hlYXRfc2V0cG9pbnRfbGltaXRCGgoYX21heF9oZWF0X3'
    'NldHBvaW50X2xpbWl0QhoKGF9taW5fY29vbF9zZXRwb2ludF9saW1pdEIaChhfbWF4X2Nvb2xf'
    'c2V0cG9pbnRfbGltaXRCIAoeX2NvbnRyb2xfc2VxdWVuY2Vfb2Zfb3BlcmF0aW9uQg4KDF9zeX'
    'N0ZW1fbW9kZUIaChhfdGhlcm1vc3RhdF9ydW5uaW5nX21vZGU=');

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
    'ChtUZW1wZXJhdHVyZVNlbnNvclByb3BlcnRpZXMSQgoObWVhc3VyZWRfdmFsdWUYASABKBFCFo'
    'i1GIIIkrUYDU1lYXN1cmVkVmFsdWVIAFINbWVhc3VyZWRWYWx1ZYgBARJMChJtaW5fbWVhc3Vy'
    'ZWRfdmFsdWUYAiABKBFCGYi1GIIIkrUYEE1pbk1lYXN1cmVkVmFsdWVIAVIQbWluTWVhc3VyZW'
    'RWYWx1ZYgBARJMChJtYXhfbWVhc3VyZWRfdmFsdWUYAyABKBFCGYi1GIIIkrUYEE1heE1lYXN1'
    'cmVkVmFsdWVIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI1Cgl0b2xlcmFuY2UYBCABKA1CEoi1GI'
    'IIkrUYCVRvbGVyYW5jZUgDUgl0b2xlcmFuY2WIAQE6Bpq1GAKCBkIRCg9fbWVhc3VyZWRfdmFs'
    'dWVCFQoTX21pbl9tZWFzdXJlZF92YWx1ZUIVChNfbWF4X21lYXN1cmVkX3ZhbHVlQgwKCl90b2'
    'xlcmFuY2U=');

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
    'ChhIdW1pZGl0eVNlbnNvclByb3BlcnRpZXMSQgoObWVhc3VyZWRfdmFsdWUYASABKA1CFoi1GI'
    'UIkrUYDU1lYXN1cmVkVmFsdWVIAFINbWVhc3VyZWRWYWx1ZYgBARJMChJtaW5fbWVhc3VyZWRf'
    'dmFsdWUYAiABKA1CGYi1GIUIkrUYEE1pbk1lYXN1cmVkVmFsdWVIAVIQbWluTWVhc3VyZWRWYW'
    'x1ZYgBARJMChJtYXhfbWVhc3VyZWRfdmFsdWUYAyABKA1CGYi1GIUIkrUYEE1heE1lYXN1cmVk'
    'VmFsdWVIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI1Cgl0b2xlcmFuY2UYBCABKA1CEoi1GIUIkr'
    'UYCVRvbGVyYW5jZUgDUgl0b2xlcmFuY2WIAQE6Bpq1GAKHBkIRCg9fbWVhc3VyZWRfdmFsdWVC'
    'FQoTX21pbl9tZWFzdXJlZF92YWx1ZUIVChNfbWF4X21lYXN1cmVkX3ZhbHVlQgwKCl90b2xlcm'
    'FuY2U=');

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
    'ChlPY2N1cGFuY3lTZW5zb3JQcm9wZXJ0aWVzEjUKCW9jY3VwYW5jeRgBIAEoDUISiLUYhgiStR'
    'gJT2NjdXBhbmN5SABSCW9jY3VwYW5jeYgBARJVChVvY2N1cGFuY3lfc2Vuc29yX3R5cGUYAiAB'
    'KA1CHIi1GIYIkrUYE09jY3VwYW5jeVNlbnNvclR5cGVIAVITb2NjdXBhbmN5U2Vuc29yVHlwZY'
    'gBARJoChxvY2N1cGFuY3lfc2Vuc29yX3R5cGVfYml0bWFwGAMgASgNQiKItRiGCJK1GBlPY2N1'
    'cGFuY3lTZW5zb3JUeXBlQml0bWFwSAJSGW9jY3VwYW5jeVNlbnNvclR5cGVCaXRtYXCIAQEScg'
    'ogcGlyX29jY3VwaWVkX3RvX3Vub2NjdXBpZWRfZGVsYXkYBCABKA1CJYi1GIYIkrUYHFBJUk9j'
    'Y3VwaWVkVG9Vbm9jY3VwaWVkRGVsYXlIA1IccGlyT2NjdXBpZWRUb1Vub2NjdXBpZWREZWxheY'
    'gBARJyCiBwaXJfdW5vY2N1cGllZF90b19vY2N1cGllZF9kZWxheRgFIAEoDUIliLUYhgiStRgc'
    'UElSVW5vY2N1cGllZFRvT2NjdXBpZWREZWxheUgEUhxwaXJVbm9jY3VwaWVkVG9PY2N1cGllZE'
    'RlbGF5iAEBOgaatRgChwJCDAoKX29jY3VwYW5jeUIYChZfb2NjdXBhbmN5X3NlbnNvcl90eXBl'
    'Qh8KHV9vY2N1cGFuY3lfc2Vuc29yX3R5cGVfYml0bWFwQiMKIV9waXJfb2NjdXBpZWRfdG9fdW'
    '5vY2N1cGllZF9kZWxheUIjCiFfcGlyX3Vub2NjdXBpZWRfdG9fb2NjdXBpZWRfZGVsYXlSFnBp'
    'cl9vY2NfdG9fdW5vY2NfZGVsYXlSFnBpcl91bm9jY190b19vY2NfZGVsYXk=');

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
    'ChdDb250YWN0U2Vuc29yUHJvcGVydGllcxI4CgtzdGF0ZV92YWx1ZRgBIAEoCEISiLUYRZK1GA'
    'pTdGF0ZVZhbHVlSABSCnN0YXRlVmFsdWWIAQE6BZq1GAEVQg4KDF9zdGF0ZV92YWx1ZQ==');

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
    'ChhXaW5kb3dDb3ZlcmluZ1Byb3BlcnRpZXMSNwoNY292ZXJpbmdfdHlwZRgBIAEoDUINiLUYgg'
    'KStRgEVHlwZUgAUgxjb3ZlcmluZ1R5cGWIAQESfQojY3VycmVudF9wb3NpdGlvbl9saWZ0X3Bl'
    'cmNlbnQxMDB0aHMYAiABKA1CKYi1GIICkrUYIEN1cnJlbnRQb3NpdGlvbkxpZnRQZXJjZW50MT'
    'AwdGhzSAFSIGN1cnJlbnRQb3NpdGlvbkxpZnRQZXJjZW50MTAwdGhziAEBEn0KI2N1cnJlbnRf'
    'cG9zaXRpb25fdGlsdF9wZXJjZW50MTAwdGhzGAMgASgNQimItRiCApK1GCBDdXJyZW50UG9zaX'
    'Rpb25UaWx0UGVyY2VudDEwMHRoc0gCUiBjdXJyZW50UG9zaXRpb25UaWx0UGVyY2VudDEwMHRo'
    'c4gBARJ6CiJ0YXJnZXRfcG9zaXRpb25fbGlmdF9wZXJjZW50MTAwdGhzGAQgASgNQiiItRiCAp'
    'K1GB9UYXJnZXRQb3NpdGlvbkxpZnRQZXJjZW50MTAwdGhzSANSH3RhcmdldFBvc2l0aW9uTGlm'
    'dFBlcmNlbnQxMDB0aHOIAQESegoidGFyZ2V0X3Bvc2l0aW9uX3RpbHRfcGVyY2VudDEwMHRocx'
    'gFIAEoDUIoiLUYggKStRgfVGFyZ2V0UG9zaXRpb25UaWx0UGVyY2VudDEwMHRoc0gEUh90YXJn'
    'ZXRQb3NpdGlvblRpbHRQZXJjZW50MTAwdGhziAEBEk4KEm9wZXJhdGlvbmFsX3N0YXR1cxgGIA'
    'EoDUIaiLUYggKStRgRT3BlcmF0aW9uYWxTdGF0dXNIBVIRb3BlcmF0aW9uYWxTdGF0dXOIAQES'
    'RgoQZW5kX3Byb2R1Y3RfdHlwZRgHIAEoDUIXiLUYggKStRgORW5kUHJvZHVjdFR5cGVIBlIOZW'
    '5kUHJvZHVjdFR5cGWIAQESJgoEbW9kZRgIIAEoDUINiLUYggKStRgETW9kZUgHUgRtb2RliAEB'
    'OgaatRgCggRCEAoOX2NvdmVyaW5nX3R5cGVCJgokX2N1cnJlbnRfcG9zaXRpb25fbGlmdF9wZX'
    'JjZW50MTAwdGhzQiYKJF9jdXJyZW50X3Bvc2l0aW9uX3RpbHRfcGVyY2VudDEwMHRoc0IlCiNf'
    'dGFyZ2V0X3Bvc2l0aW9uX2xpZnRfcGVyY2VudDEwMHRoc0IlCiNfdGFyZ2V0X3Bvc2l0aW9uX3'
    'RpbHRfcGVyY2VudDEwMHRoc0IVChNfb3BlcmF0aW9uYWxfc3RhdHVzQhMKEV9lbmRfcHJvZHVj'
    'dF90eXBlQgcKBV9tb2Rl');

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
    'ChJEb29yTG9ja1Byb3BlcnRpZXMSNgoKbG9ja19zdGF0ZRgBIAEoDUISiLUYgQKStRgJTG9ja1'
    'N0YXRlSABSCWxvY2tTdGF0ZYgBARIzCglsb2NrX3R5cGUYAiABKA1CEYi1GIECkrUYCExvY2tU'
    'eXBlSAFSCGxvY2tUeXBliAEBEkgKEGFjdHVhdG9yX2VuYWJsZWQYAyABKAhCGIi1GIECkrUYD0'
    'FjdHVhdG9yRW5hYmxlZEgCUg9hY3R1YXRvckVuYWJsZWSIAQESNgoKZG9vcl9zdGF0ZRgEIAEo'
    'DUISiLUYgQKStRgJRG9vclN0YXRlSANSCWRvb3JTdGF0ZYgBARJCCg5vcGVyYXRpbmdfbW9kZR'
    'gFIAEoDUIWiLUYgQKStRgNT3BlcmF0aW5nTW9kZUgEUg1vcGVyYXRpbmdNb2RliAEBOgWatRgB'
    'CkINCgtfbG9ja19zdGF0ZUIMCgpfbG9ja190eXBlQhMKEV9hY3R1YXRvcl9lbmFibGVkQg0KC1'
    '9kb29yX3N0YXRlQhEKD19vcGVyYXRpbmdfbW9kZQ==');

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
    'ChRPbk9mZkxpZ2h0UHJvcGVydGllcxIpCgZvbl9vZmYYASABKAhCDYi1GAaStRgFT25PZmZIAF'
    'IFb25PZmaIAQESUQoUZ2xvYmFsX3NjZW5lX2NvbnRyb2wYAiABKAhCGoi1GAaStRgSR2xvYmFs'
    'U2NlbmVDb250cm9sSAFSEmdsb2JhbFNjZW5lQ29udHJvbIgBARIsCgdvbl90aW1lGAMgASgNQg'
    '6ItRgGkrUYBk9uVGltZUgCUgZvblRpbWWIAQESPAoNb2ZmX3dhaXRfdGltZRgEIAEoDUITiLUY'
    'BpK1GAtPZmZXYWl0VGltZUgDUgtvZmZXYWl0VGltZYgBARJACg9zdGFydF91cF9vbl9vZmYYBS'
    'ABKA1CFIi1GAaStRgMU3RhcnRVcE9uT2ZmSARSDHN0YXJ0VXBPbk9mZogBAToGmrUYAoACQgkK'
    'B19vbl9vZmZCFwoVX2dsb2JhbF9zY2VuZV9jb250cm9sQgoKCF9vbl90aW1lQhAKDl9vZmZfd2'
    'FpdF90aW1lQhIKEF9zdGFydF91cF9vbl9vZmY=');

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
    'ChdEaW1tYWJsZUxpZ2h0UHJvcGVydGllcxIpCgZvbl9vZmYYASABKAhCDYi1GAaStRgFT25PZm'
    'ZIAFIFb25PZmaIAQESPgoNY3VycmVudF9sZXZlbBgCIAEoDUIUiLUYCJK1GAxDdXJyZW50TGV2'
    'ZWxIAVIMY3VycmVudExldmVsiAEBEjIKCW1pbl9sZXZlbBgDIAEoDUIQiLUYCJK1GAhNaW5MZX'
    'ZlbEgCUghtaW5MZXZlbIgBARIyCgltYXhfbGV2ZWwYBCABKA1CEIi1GAiStRgITWF4TGV2ZWxI'
    'A1IIbWF4TGV2ZWyIAQESLwoIb25fbGV2ZWwYBSABKA1CD4i1GAiStRgHT25MZXZlbEgEUgdvbk'
    'xldmVsiAEBElUKFnN0YXJ0X3VwX2N1cnJlbnRfbGV2ZWwYBiABKA1CG4i1GAiStRgTU3RhcnRV'
    'cEN1cnJlbnRMZXZlbEgFUhNzdGFydFVwQ3VycmVudExldmVsiAEBEkEKDnJlbWFpbmluZ190aW'
    '1lGAcgASgNQhWItRgIkrUYDVJlbWFpbmluZ1RpbWVIBlINcmVtYWluaW5nVGltZYgBAToGmrUY'
    'AoECQgkKB19vbl9vZmZCEAoOX2N1cnJlbnRfbGV2ZWxCDAoKX21pbl9sZXZlbEIMCgpfbWF4X2'
    'xldmVsQgsKCV9vbl9sZXZlbEIZChdfc3RhcnRfdXBfY3VycmVudF9sZXZlbEIRCg9fcmVtYWlu'
    'aW5nX3RpbWU=');

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
    'Ch9Db2xvclRlbXBlcmF0dXJlTGlnaHRQcm9wZXJ0aWVzEikKBm9uX29mZhgBIAEoCEINiLUYBp'
    'K1GAVPbk9mZkgAUgVvbk9mZogBARI+Cg1jdXJyZW50X2xldmVsGAIgASgNQhSItRgIkrUYDEN1'
    'cnJlbnRMZXZlbEgBUgxjdXJyZW50TGV2ZWyIAQESXgoYY29sb3JfdGVtcGVyYXR1cmVfbWlyZW'
    'RzGAMgASgNQh+ItRiABpK1GBZDb2xvclRlbXBlcmF0dXJlTWlyZWRzSAJSFmNvbG9yVGVtcGVy'
    'YXR1cmVNaXJlZHOIAQESbAoeY29sb3JfdGVtcF9waHlzaWNhbF9taW5fbWlyZWRzGAQgASgNQi'
    'OItRiABpK1GBpDb2xvclRlbXBQaHlzaWNhbE1pbk1pcmVkc0gDUhpjb2xvclRlbXBQaHlzaWNh'
    'bE1pbk1pcmVkc4gBARJsCh5jb2xvcl90ZW1wX3BoeXNpY2FsX21heF9taXJlZHMYBSABKA1CI4'
    'i1GIAGkrUYGkNvbG9yVGVtcFBoeXNpY2FsTWF4TWlyZWRzSARSGmNvbG9yVGVtcFBoeXNpY2Fs'
    'TWF4TWlyZWRziAEBEnQKIHN0YXJ0dXBfY29sb3JfdGVtcGVyYXR1cmVfbWlyZWRzGAYgASgNQi'
    'aItRiABpK1GB1TdGFydFVwQ29sb3JUZW1wZXJhdHVyZU1pcmVkc0gFUh1zdGFydHVwQ29sb3JU'
    'ZW1wZXJhdHVyZU1pcmVkc4gBARI2Cgpjb2xvcl9tb2RlGAcgASgNQhKItRiABpK1GAlDb2xvck'
    '1vZGVIBlIJY29sb3JNb2RliAEBOgaatRgCjAJCCQoHX29uX29mZkIQCg5fY3VycmVudF9sZXZl'
    'bEIbChlfY29sb3JfdGVtcGVyYXR1cmVfbWlyZWRzQiEKH19jb2xvcl90ZW1wX3BoeXNpY2FsX2'
    '1pbl9taXJlZHNCIQofX2NvbG9yX3RlbXBfcGh5c2ljYWxfbWF4X21pcmVkc0IjCiFfc3RhcnR1'
    'cF9jb2xvcl90ZW1wZXJhdHVyZV9taXJlZHNCDQoLX2NvbG9yX21vZGU=');

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
    'ChZFbmVyZ3lTZW5zb3JQcm9wZXJ0aWVzEjwKDGFjdGl2ZV9wb3dlchgFIAEoEkIUiLUYkAGStR'
    'gLQWN0aXZlUG93ZXJIAFILYWN0aXZlUG93ZXKIAQESLwoHdm9sdGFnZRgGIAEoEkIQiLUYkAGS'
    'tRgHVm9sdGFnZUgBUgd2b2x0YWdliAEBEkIKDmFjdGl2ZV9jdXJyZW50GAcgASgSQhaItRiQAZ'
    'K1GA1BY3RpdmVDdXJyZW50SAJSDWFjdGl2ZUN1cnJlbnSIAQESNQoJZnJlcXVlbmN5GAggASgS'
    'QhKItRiQAZK1GAlGcmVxdWVuY3lIA1IJZnJlcXVlbmN5iAEBOgaatRgCkApCDwoNX2FjdGl2ZV'
    '9wb3dlckIKCghfdm9sdGFnZUIRCg9fYWN0aXZlX2N1cnJlbnRCDAoKX2ZyZXF1ZW5jeUoECAEQ'
    'AkoECAIQA0oECAMQBEoECAQQBVILcm1zX3ZvbHRhZ2VSC3Jtc19jdXJyZW50UgxhY19mcmVxdW'
    'VuY3k=');

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
    'ChhQcmVzc3VyZVNlbnNvclByb3BlcnRpZXMSQgoObWVhc3VyZWRfdmFsdWUYASABKBFCFoi1GI'
    'MIkrUYDU1lYXN1cmVkVmFsdWVIAFINbWVhc3VyZWRWYWx1ZYgBARJMChJtaW5fbWVhc3VyZWRf'
    'dmFsdWUYAiABKBFCGYi1GIMIkrUYEE1pbk1lYXN1cmVkVmFsdWVIAVIQbWluTWVhc3VyZWRWYW'
    'x1ZYgBARJMChJtYXhfbWVhc3VyZWRfdmFsdWUYAyABKBFCGYi1GIMIkrUYEE1heE1lYXN1cmVk'
    'VmFsdWVIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI1Cgl0b2xlcmFuY2UYBCABKA1CEoi1GIMIkr'
    'UYCVRvbGVyYW5jZUgDUgl0b2xlcmFuY2WIAQE6Bpq1GAKFBkIRCg9fbWVhc3VyZWRfdmFsdWVC'
    'FQoTX21pbl9tZWFzdXJlZF92YWx1ZUIVChNfbWF4X21lYXN1cmVkX3ZhbHVlQgwKCl90b2xlcm'
    'FuY2U=');
