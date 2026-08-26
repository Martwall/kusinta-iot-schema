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
    {
      '1': 'pi_heating_demand',
      '3': 11,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 10,
      '10': 'piHeatingDemand',
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
    {'1': '_pi_heating_demand'},
  ],
};

/// Descriptor for `ThermostatProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatPropertiesDescriptor = $convert.base64Decode(
    'ChRUaGVybW9zdGF0UHJvcGVydGllcxJTChFsb2NhbF90ZW1wZXJhdHVyZRgBIAEoEUIhiLUYgQ'
    'SStRgQTG9jYWxUZW1wZXJhdHVyZbC1GADItRgFSABSEGxvY2FsVGVtcGVyYXR1cmWIAQESaQoZ'
    'b2NjdXBpZWRfaGVhdGluZ19zZXRwb2ludBgCIAEoEUIoiLUYgQSStRgXT2NjdXBpZWRIZWF0aW'
    '5nU2V0cG9pbnSwtRgSyLUYB0gBUhdvY2N1cGllZEhlYXRpbmdTZXRwb2ludIgBARJpChlvY2N1'
    'cGllZF9jb29saW5nX3NldHBvaW50GAMgASgRQiiItRiBBJK1GBdPY2N1cGllZENvb2xpbmdTZX'
    'Rwb2ludLC1GBHItRgHSAJSF29jY3VwaWVkQ29vbGluZ1NldHBvaW50iAEBEmEKF21pbl9oZWF0'
    'X3NldHBvaW50X2xpbWl0GAQgASgRQiWItRiBBJK1GBRNaW5IZWF0U2V0cG9pbnRMaW1pdLC1GB'
    'XItRgHSANSFG1pbkhlYXRTZXRwb2ludExpbWl0iAEBEmEKF21heF9oZWF0X3NldHBvaW50X2xp'
    'bWl0GAUgASgRQiWItRiBBJK1GBRNYXhIZWF0U2V0cG9pbnRMaW1pdLC1GBbItRgHSARSFG1heE'
    'hlYXRTZXRwb2ludExpbWl0iAEBEmEKF21pbl9jb29sX3NldHBvaW50X2xpbWl0GAYgASgRQiWI'
    'tRiBBJK1GBRNaW5Db29sU2V0cG9pbnRMaW1pdLC1GBfItRgHSAVSFG1pbkNvb2xTZXRwb2ludE'
    'xpbWl0iAEBEmEKF21heF9jb29sX3NldHBvaW50X2xpbWl0GAcgASgRQiWItRiBBJK1GBRNYXhD'
    'b29sU2V0cG9pbnRMaW1pdLC1GBjItRgHSAZSFG1heENvb2xTZXRwb2ludExpbWl0iAEBEnMKHW'
    'NvbnRyb2xfc2VxdWVuY2Vfb2Zfb3BlcmF0aW9uGAggASgNQiuItRiBBJK1GBpDb250cm9sU2Vx'
    'dWVuY2VPZk9wZXJhdGlvbrC1GBvItRgHSAdSGmNvbnRyb2xTZXF1ZW5jZU9mT3BlcmF0aW9uiA'
    'EBEkEKC3N5c3RlbV9tb2RlGAkgASgNQhuItRiBBJK1GApTeXN0ZW1Nb2RlsLUYHMi1GAdICFIK'
    'c3lzdGVtTW9kZYgBARJjChd0aGVybW9zdGF0X3J1bm5pbmdfbW9kZRgKIAEoDUImiLUYgQSStR'
    'gVVGhlcm1vc3RhdFJ1bm5pbmdNb2RlsLUYHsi1GAVICVIVdGhlcm1vc3RhdFJ1bm5pbmdNb2Rl'
    'iAEBElEKEXBpX2hlYXRpbmdfZGVtYW5kGAsgASgNQiCItRiBBJK1GA9QSUhlYXRpbmdEZW1hbm'
    'SwtRgIyLUYBUgKUg9waUhlYXRpbmdEZW1hbmSIAQE6Bpq1GAKBBkIUChJfbG9jYWxfdGVtcGVy'
    'YXR1cmVCHAoaX29jY3VwaWVkX2hlYXRpbmdfc2V0cG9pbnRCHAoaX29jY3VwaWVkX2Nvb2xpbm'
    'dfc2V0cG9pbnRCGgoYX21pbl9oZWF0X3NldHBvaW50X2xpbWl0QhoKGF9tYXhfaGVhdF9zZXRw'
    'b2ludF9saW1pdEIaChhfbWluX2Nvb2xfc2V0cG9pbnRfbGltaXRCGgoYX21heF9jb29sX3NldH'
    'BvaW50X2xpbWl0QiAKHl9jb250cm9sX3NlcXVlbmNlX29mX29wZXJhdGlvbkIOCgxfc3lzdGVt'
    'X21vZGVCGgoYX3RoZXJtb3N0YXRfcnVubmluZ19tb2RlQhQKEl9waV9oZWF0aW5nX2RlbWFuZA'
    '==');

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
    'ChtUZW1wZXJhdHVyZVNlbnNvclByb3BlcnRpZXMSSgoObWVhc3VyZWRfdmFsdWUYASABKBFCHo'
    'i1GIIIkrUYDU1lYXN1cmVkVmFsdWWwtRgAyLUYBUgAUg1tZWFzdXJlZFZhbHVliAEBElQKEm1p'
    'bl9tZWFzdXJlZF92YWx1ZRgCIAEoEUIhiLUYggiStRgQTWluTWVhc3VyZWRWYWx1ZbC1GAHItR'
    'gFSAFSEG1pbk1lYXN1cmVkVmFsdWWIAQESVAoSbWF4X21lYXN1cmVkX3ZhbHVlGAMgASgRQiGI'
    'tRiCCJK1GBBNYXhNZWFzdXJlZFZhbHVlsLUYAsi1GAVIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBAR'
    'I9Cgl0b2xlcmFuY2UYBCABKA1CGoi1GIIIkrUYCVRvbGVyYW5jZbC1GAPItRgFSANSCXRvbGVy'
    'YW5jZYgBAToGmrUYAoIGQhEKD19tZWFzdXJlZF92YWx1ZUIVChNfbWluX21lYXN1cmVkX3ZhbH'
    'VlQhUKE19tYXhfbWVhc3VyZWRfdmFsdWVCDAoKX3RvbGVyYW5jZQ==');

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
    'ChhIdW1pZGl0eVNlbnNvclByb3BlcnRpZXMSSgoObWVhc3VyZWRfdmFsdWUYASABKA1CHoi1GI'
    'UIkrUYDU1lYXN1cmVkVmFsdWWwtRgAyLUYBUgAUg1tZWFzdXJlZFZhbHVliAEBElQKEm1pbl9t'
    'ZWFzdXJlZF92YWx1ZRgCIAEoDUIhiLUYhQiStRgQTWluTWVhc3VyZWRWYWx1ZbC1GAHItRgFSA'
    'FSEG1pbk1lYXN1cmVkVmFsdWWIAQESVAoSbWF4X21lYXN1cmVkX3ZhbHVlGAMgASgNQiGItRiF'
    'CJK1GBBNYXhNZWFzdXJlZFZhbHVlsLUYAsi1GAVIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI9Cg'
    'l0b2xlcmFuY2UYBCABKA1CGoi1GIUIkrUYCVRvbGVyYW5jZbC1GAPItRgFSANSCXRvbGVyYW5j'
    'ZYgBAToGmrUYAocGQhEKD19tZWFzdXJlZF92YWx1ZUIVChNfbWluX21lYXN1cmVkX3ZhbHVlQh'
    'UKE19tYXhfbWVhc3VyZWRfdmFsdWVCDAoKX3RvbGVyYW5jZQ==');

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
    'ChlPY2N1cGFuY3lTZW5zb3JQcm9wZXJ0aWVzEj0KCW9jY3VwYW5jeRgBIAEoDUIaiLUYhgiStR'
    'gJT2NjdXBhbmN5sLUYAMi1GAVIAFIJb2NjdXBhbmN5iAEBEl0KFW9jY3VwYW5jeV9zZW5zb3Jf'
    'dHlwZRgCIAEoDUIkiLUYhgiStRgTT2NjdXBhbmN5U2Vuc29yVHlwZbC1GAHItRgFSAFSE29jY3'
    'VwYW5jeVNlbnNvclR5cGWIAQEScAocb2NjdXBhbmN5X3NlbnNvcl90eXBlX2JpdG1hcBgDIAEo'
    'DUIqiLUYhgiStRgZT2NjdXBhbmN5U2Vuc29yVHlwZUJpdG1hcLC1GALItRgFSAJSGW9jY3VwYW'
    '5jeVNlbnNvclR5cGVCaXRtYXCIAQESegogcGlyX29jY3VwaWVkX3RvX3Vub2NjdXBpZWRfZGVs'
    'YXkYBCABKA1CLYi1GIYIkrUYHFBJUk9jY3VwaWVkVG9Vbm9jY3VwaWVkRGVsYXmwtRgQyLUYB0'
    'gDUhxwaXJPY2N1cGllZFRvVW5vY2N1cGllZERlbGF5iAEBEnoKIHBpcl91bm9jY3VwaWVkX3Rv'
    'X29jY3VwaWVkX2RlbGF5GAUgASgNQi2ItRiGCJK1GBxQSVJVbm9jY3VwaWVkVG9PY2N1cGllZE'
    'RlbGF5sLUYEci1GAdIBFIccGlyVW5vY2N1cGllZFRvT2NjdXBpZWREZWxheYgBAToGmrUYAocC'
    'QgwKCl9vY2N1cGFuY3lCGAoWX29jY3VwYW5jeV9zZW5zb3JfdHlwZUIfCh1fb2NjdXBhbmN5X3'
    'NlbnNvcl90eXBlX2JpdG1hcEIjCiFfcGlyX29jY3VwaWVkX3RvX3Vub2NjdXBpZWRfZGVsYXlC'
    'IwohX3Bpcl91bm9jY3VwaWVkX3RvX29jY3VwaWVkX2RlbGF5UhZwaXJfb2NjX3RvX3Vub2NjX2'
    'RlbGF5UhZwaXJfdW5vY2NfdG9fb2NjX2RlbGF5');

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
    'ChdDb250YWN0U2Vuc29yUHJvcGVydGllcxJACgtzdGF0ZV92YWx1ZRgBIAEoCEIaiLUYRZK1GA'
    'pTdGF0ZVZhbHVlsLUYAMi1GAVIAFIKc3RhdGVWYWx1ZYgBAToFmrUYARVCDgoMX3N0YXRlX3Zh'
    'bHVl');

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
    'ChhXaW5kb3dDb3ZlcmluZ1Byb3BlcnRpZXMSPwoNY292ZXJpbmdfdHlwZRgBIAEoDUIViLUYgg'
    'KStRgEVHlwZbC1GADItRgFSABSDGNvdmVyaW5nVHlwZYgBARKFAQojY3VycmVudF9wb3NpdGlv'
    'bl9saWZ0X3BlcmNlbnQxMDB0aHMYAiABKA1CMYi1GIICkrUYIEN1cnJlbnRQb3NpdGlvbkxpZn'
    'RQZXJjZW50MTAwdGhzsLUYDsi1GAVIAVIgY3VycmVudFBvc2l0aW9uTGlmdFBlcmNlbnQxMDB0'
    'aHOIAQEShQEKI2N1cnJlbnRfcG9zaXRpb25fdGlsdF9wZXJjZW50MTAwdGhzGAMgASgNQjGItR'
    'iCApK1GCBDdXJyZW50UG9zaXRpb25UaWx0UGVyY2VudDEwMHRoc7C1GA/ItRgFSAJSIGN1cnJl'
    'bnRQb3NpdGlvblRpbHRQZXJjZW50MTAwdGhziAEBEoIBCiJ0YXJnZXRfcG9zaXRpb25fbGlmdF'
    '9wZXJjZW50MTAwdGhzGAQgASgNQjCItRiCApK1GB9UYXJnZXRQb3NpdGlvbkxpZnRQZXJjZW50'
    'MTAwdGhzsLUYC8i1GAVIA1IfdGFyZ2V0UG9zaXRpb25MaWZ0UGVyY2VudDEwMHRoc4gBARKCAQ'
    'oidGFyZ2V0X3Bvc2l0aW9uX3RpbHRfcGVyY2VudDEwMHRocxgFIAEoDUIwiLUYggKStRgfVGFy'
    'Z2V0UG9zaXRpb25UaWx0UGVyY2VudDEwMHRoc7C1GAzItRgFSARSH3RhcmdldFBvc2l0aW9uVG'
    'lsdFBlcmNlbnQxMDB0aHOIAQESVgoSb3BlcmF0aW9uYWxfc3RhdHVzGAYgASgNQiKItRiCApK1'
    'GBFPcGVyYXRpb25hbFN0YXR1c7C1GArItRgFSAVSEW9wZXJhdGlvbmFsU3RhdHVziAEBEk4KEG'
    'VuZF9wcm9kdWN0X3R5cGUYByABKA1CH4i1GIICkrUYDkVuZFByb2R1Y3RUeXBlsLUYDci1GAVI'
    'BlIOZW5kUHJvZHVjdFR5cGWIAQESLgoEbW9kZRgIIAEoDUIViLUYggKStRgETW9kZbC1GBfItR'
    'gHSAdSBG1vZGWIAQE6Bpq1GAKCBEIQCg5fY292ZXJpbmdfdHlwZUImCiRfY3VycmVudF9wb3Np'
    'dGlvbl9saWZ0X3BlcmNlbnQxMDB0aHNCJgokX2N1cnJlbnRfcG9zaXRpb25fdGlsdF9wZXJjZW'
    '50MTAwdGhzQiUKI190YXJnZXRfcG9zaXRpb25fbGlmdF9wZXJjZW50MTAwdGhzQiUKI190YXJn'
    'ZXRfcG9zaXRpb25fdGlsdF9wZXJjZW50MTAwdGhzQhUKE19vcGVyYXRpb25hbF9zdGF0dXNCEw'
    'oRX2VuZF9wcm9kdWN0X3R5cGVCBwoFX21vZGU=');

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
    'ChJEb29yTG9ja1Byb3BlcnRpZXMSPgoKbG9ja19zdGF0ZRgBIAEoDUIaiLUYgQKStRgJTG9ja1'
    'N0YXRlsLUYAMi1GAVIAFIJbG9ja1N0YXRliAEBEjsKCWxvY2tfdHlwZRgCIAEoDUIZiLUYgQKS'
    'tRgITG9ja1R5cGWwtRgByLUYBUgBUghsb2NrVHlwZYgBARJQChBhY3R1YXRvcl9lbmFibGVkGA'
    'MgASgIQiCItRiBApK1GA9BY3R1YXRvckVuYWJsZWSwtRgCyLUYBUgCUg9hY3R1YXRvckVuYWJs'
    'ZWSIAQESPgoKZG9vcl9zdGF0ZRgEIAEoDUIaiLUYgQKStRgJRG9vclN0YXRlsLUYA8i1GAVIA1'
    'IJZG9vclN0YXRliAEBEkoKDm9wZXJhdGluZ19tb2RlGAUgASgNQh6ItRiBApK1GA1PcGVyYXRp'
    'bmdNb2RlsLUYJci1GAdIBFINb3BlcmF0aW5nTW9kZYgBAToFmrUYAQpCDQoLX2xvY2tfc3RhdG'
    'VCDAoKX2xvY2tfdHlwZUITChFfYWN0dWF0b3JfZW5hYmxlZEINCgtfZG9vcl9zdGF0ZUIRCg9f'
    'b3BlcmF0aW5nX21vZGU=');

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
    'ChRPbk9mZkxpZ2h0UHJvcGVydGllcxIxCgZvbl9vZmYYASABKAhCFYi1GAaStRgFT25PZmawtR'
    'gAyLUYBUgAUgVvbk9mZogBARJbChRnbG9iYWxfc2NlbmVfY29udHJvbBgCIAEoCEIkiLUYBpK1'
    'GBJHbG9iYWxTY2VuZUNvbnRyb2ywtRiAgAHItRgFSAFSEmdsb2JhbFNjZW5lQ29udHJvbIgBAR'
    'I2Cgdvbl90aW1lGAMgASgNQhiItRgGkrUYBk9uVGltZbC1GIGAAci1GAdIAlIGb25UaW1liAEB'
    'EkYKDW9mZl93YWl0X3RpbWUYBCABKA1CHYi1GAaStRgLT2ZmV2FpdFRpbWWwtRiCgAHItRgHSA'
    'NSC29mZldhaXRUaW1liAEBEkoKD3N0YXJ0X3VwX29uX29mZhgFIAEoDUIeiLUYBpK1GAxTdGFy'
    'dFVwT25PZmawtRiDgAHItRgHSARSDHN0YXJ0VXBPbk9mZogBAToGmrUYAoACQgkKB19vbl9vZm'
    'ZCFwoVX2dsb2JhbF9zY2VuZV9jb250cm9sQgoKCF9vbl90aW1lQhAKDl9vZmZfd2FpdF90aW1l'
    'QhIKEF9zdGFydF91cF9vbl9vZmY=');

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
    'ChdEaW1tYWJsZUxpZ2h0UHJvcGVydGllcxIxCgZvbl9vZmYYASABKAhCFYi1GAaStRgFT25PZm'
    'awtRgAyLUYBUgAUgVvbk9mZogBARJGCg1jdXJyZW50X2xldmVsGAIgASgNQhyItRgIkrUYDEN1'
    'cnJlbnRMZXZlbLC1GADItRgFSAFSDGN1cnJlbnRMZXZlbIgBARI6CgltaW5fbGV2ZWwYAyABKA'
    '1CGIi1GAiStRgITWluTGV2ZWywtRgCyLUYBUgCUghtaW5MZXZlbIgBARI6CgltYXhfbGV2ZWwY'
    'BCABKA1CGIi1GAiStRgITWF4TGV2ZWywtRgDyLUYBUgDUghtYXhMZXZlbIgBARI3Cghvbl9sZX'
    'ZlbBgFIAEoDUIXiLUYCJK1GAdPbkxldmVssLUYEci1GAdIBFIHb25MZXZlbIgBARJfChZzdGFy'
    'dF91cF9jdXJyZW50X2xldmVsGAYgASgNQiWItRgIkrUYE1N0YXJ0VXBDdXJyZW50TGV2ZWywtR'
    'iAgAHItRgHSAVSE3N0YXJ0VXBDdXJyZW50TGV2ZWyIAQESSQoOcmVtYWluaW5nX3RpbWUYByAB'
    'KA1CHYi1GAiStRgNUmVtYWluaW5nVGltZbC1GAHItRgBSAZSDXJlbWFpbmluZ1RpbWWIAQE6Bp'
    'q1GAKBAkIJCgdfb25fb2ZmQhAKDl9jdXJyZW50X2xldmVsQgwKCl9taW5fbGV2ZWxCDAoKX21h'
    'eF9sZXZlbEILCglfb25fbGV2ZWxCGQoXX3N0YXJ0X3VwX2N1cnJlbnRfbGV2ZWxCEQoPX3JlbW'
    'FpbmluZ190aW1l');

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
    'Ch9Db2xvclRlbXBlcmF0dXJlTGlnaHRQcm9wZXJ0aWVzEjEKBm9uX29mZhgBIAEoCEIViLUYBp'
    'K1GAVPbk9mZrC1GADItRgFSABSBW9uT2ZmiAEBEkYKDWN1cnJlbnRfbGV2ZWwYAiABKA1CHIi1'
    'GAiStRgMQ3VycmVudExldmVssLUYAMi1GAVIAVIMY3VycmVudExldmVsiAEBEmYKGGNvbG9yX3'
    'RlbXBlcmF0dXJlX21pcmVkcxgDIAEoDUIniLUYgAaStRgWQ29sb3JUZW1wZXJhdHVyZU1pcmVk'
    'c7C1GAfItRgFSAJSFmNvbG9yVGVtcGVyYXR1cmVNaXJlZHOIAQESdgoeY29sb3JfdGVtcF9waH'
    'lzaWNhbF9taW5fbWlyZWRzGAQgASgNQi2ItRiABpK1GBpDb2xvclRlbXBQaHlzaWNhbE1pbk1p'
    'cmVkc7C1GIuAAci1GAVIA1IaY29sb3JUZW1wUGh5c2ljYWxNaW5NaXJlZHOIAQESdgoeY29sb3'
    'JfdGVtcF9waHlzaWNhbF9tYXhfbWlyZWRzGAUgASgNQi2ItRiABpK1GBpDb2xvclRlbXBQaHlz'
    'aWNhbE1heE1pcmVkc7C1GIyAAci1GAVIBFIaY29sb3JUZW1wUGh5c2ljYWxNYXhNaXJlZHOIAQ'
    'ESfgogc3RhcnR1cF9jb2xvcl90ZW1wZXJhdHVyZV9taXJlZHMYBiABKA1CMIi1GIAGkrUYHVN0'
    'YXJ0VXBDb2xvclRlbXBlcmF0dXJlTWlyZWRzsLUYkIAByLUYB0gFUh1zdGFydHVwQ29sb3JUZW'
    '1wZXJhdHVyZU1pcmVkc4gBARI+Cgpjb2xvcl9tb2RlGAcgASgNQhqItRiABpK1GAlDb2xvck1v'
    'ZGWwtRgIyLUYBUgGUgljb2xvck1vZGWIAQE6Bpq1GAKMAkIJCgdfb25fb2ZmQhAKDl9jdXJyZW'
    '50X2xldmVsQhsKGV9jb2xvcl90ZW1wZXJhdHVyZV9taXJlZHNCIQofX2NvbG9yX3RlbXBfcGh5'
    'c2ljYWxfbWluX21pcmVkc0IhCh9fY29sb3JfdGVtcF9waHlzaWNhbF9tYXhfbWlyZWRzQiMKIV'
    '9zdGFydHVwX2NvbG9yX3RlbXBlcmF0dXJlX21pcmVkc0INCgtfY29sb3JfbW9kZQ==');

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
    'ChZFbmVyZ3lTZW5zb3JQcm9wZXJ0aWVzEkQKDGFjdGl2ZV9wb3dlchgFIAEoEkIciLUYkAGStR'
    'gLQWN0aXZlUG93ZXKwtRgIyLUYBUgAUgthY3RpdmVQb3dlcogBARI3Cgd2b2x0YWdlGAYgASgS'
    'QhiItRiQAZK1GAdWb2x0YWdlsLUYBMi1GAVIAVIHdm9sdGFnZYgBARJKCg5hY3RpdmVfY3Vycm'
    'VudBgHIAEoEkIeiLUYkAGStRgNQWN0aXZlQ3VycmVudLC1GAXItRgFSAJSDWFjdGl2ZUN1cnJl'
    'bnSIAQESPQoJZnJlcXVlbmN5GAggASgSQhqItRiQAZK1GAlGcmVxdWVuY3mwtRgOyLUYBUgDUg'
    'lmcmVxdWVuY3mIAQE6Bpq1GAKQCkIPCg1fYWN0aXZlX3Bvd2VyQgoKCF92b2x0YWdlQhEKD19h'
    'Y3RpdmVfY3VycmVudEIMCgpfZnJlcXVlbmN5SgQIARACSgQIAhADSgQIAxAESgQIBBAFUgtybX'
    'Nfdm9sdGFnZVILcm1zX2N1cnJlbnRSDGFjX2ZyZXF1ZW5jeQ==');

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
    'ChhQcmVzc3VyZVNlbnNvclByb3BlcnRpZXMSSgoObWVhc3VyZWRfdmFsdWUYASABKBFCHoi1GI'
    'MIkrUYDU1lYXN1cmVkVmFsdWWwtRgAyLUYBUgAUg1tZWFzdXJlZFZhbHVliAEBElQKEm1pbl9t'
    'ZWFzdXJlZF92YWx1ZRgCIAEoEUIhiLUYgwiStRgQTWluTWVhc3VyZWRWYWx1ZbC1GAHItRgFSA'
    'FSEG1pbk1lYXN1cmVkVmFsdWWIAQESVAoSbWF4X21lYXN1cmVkX3ZhbHVlGAMgASgRQiGItRiD'
    'CJK1GBBNYXhNZWFzdXJlZFZhbHVlsLUYAsi1GAVIAlIQbWF4TWVhc3VyZWRWYWx1ZYgBARI9Cg'
    'l0b2xlcmFuY2UYBCABKA1CGoi1GIMIkrUYCVRvbGVyYW5jZbC1GAPItRgFSANSCXRvbGVyYW5j'
    'ZYgBAToGmrUYAoUGQhEKD19tZWFzdXJlZF92YWx1ZUIVChNfbWluX21lYXN1cmVkX3ZhbHVlQh'
    'UKE19tYXhfbWVhc3VyZWRfdmFsdWVCDAoKX3RvbGVyYW5jZQ==');

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
    'ChVQb3dlclNvdXJjZVByb3BlcnRpZXMSXAoVYmF0X3BlcmNlbnRfcmVtYWluaW5nGAEgASgNQi'
    'OItRgvkrUYE0JhdFBlcmNlbnRSZW1haW5pbmewtRgMyLUYBUgAUhNiYXRQZXJjZW50UmVtYWlu'
    'aW5niAEBEk0KEGJhdF9jaGFyZ2VfbGV2ZWwYAiABKA1CHoi1GC+StRgOQmF0Q2hhcmdlTGV2ZW'
    'ywtRgOyLUYBUgBUg5iYXRDaGFyZ2VMZXZlbIgBARJfChZiYXRfcmVwbGFjZW1lbnRfbmVlZGVk'
    'GAMgASgIQiSItRgvkrUYFEJhdFJlcGxhY2VtZW50TmVlZGVksLUYD8i1GAVIAlIUYmF0UmVwbG'
    'FjZW1lbnROZWVkZWSIAQESQAoLYmF0X3ZvbHRhZ2UYBCABKA1CGoi1GC+StRgKQmF0Vm9sdGFn'
    'ZbC1GAvItRgFSANSCmJhdFZvbHRhZ2WIAQESMwoGc3RhdHVzGAUgASgNQhaItRgvkrUYBlN0YX'
    'R1c7C1GADItRgFSARSBnN0YXR1c4gBAToFmrUYARFCGAoWX2JhdF9wZXJjZW50X3JlbWFpbmlu'
    'Z0ITChFfYmF0X2NoYXJnZV9sZXZlbEIZChdfYmF0X3JlcGxhY2VtZW50X25lZWRlZEIOCgxfYm'
    'F0X3ZvbHRhZ2VCCQoHX3N0YXR1cw==');
