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
      '10': 'localTemperature'
    },
    {
      '1': 'occupied_heating_setpoint',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'occupiedHeatingSetpoint'
    },
    {
      '1': 'occupied_cooling_setpoint',
      '3': 3,
      '4': 1,
      '5': 17,
      '10': 'occupiedCoolingSetpoint'
    },
    {
      '1': 'min_heat_setpoint_limit',
      '3': 4,
      '4': 1,
      '5': 17,
      '10': 'minHeatSetpointLimit'
    },
    {
      '1': 'max_heat_setpoint_limit',
      '3': 5,
      '4': 1,
      '5': 17,
      '10': 'maxHeatSetpointLimit'
    },
    {
      '1': 'min_cool_setpoint_limit',
      '3': 6,
      '4': 1,
      '5': 17,
      '10': 'minCoolSetpointLimit'
    },
    {
      '1': 'max_cool_setpoint_limit',
      '3': 7,
      '4': 1,
      '5': 17,
      '10': 'maxCoolSetpointLimit'
    },
    {
      '1': 'control_sequence_of_operation',
      '3': 8,
      '4': 1,
      '5': 13,
      '10': 'controlSequenceOfOperation'
    },
    {'1': 'system_mode', '3': 9, '4': 1, '5': 13, '10': 'systemMode'},
    {
      '1': 'thermostat_running_mode',
      '3': 10,
      '4': 1,
      '5': 13,
      '10': 'thermostatRunningMode'
    },
  ],
};

/// Descriptor for `ThermostatProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatPropertiesDescriptor = $convert.base64Decode(
    'ChRUaGVybW9zdGF0UHJvcGVydGllcxIrChFsb2NhbF90ZW1wZXJhdHVyZRgBIAEoEVIQbG9jYW'
    'xUZW1wZXJhdHVyZRI6ChlvY2N1cGllZF9oZWF0aW5nX3NldHBvaW50GAIgASgRUhdvY2N1cGll'
    'ZEhlYXRpbmdTZXRwb2ludBI6ChlvY2N1cGllZF9jb29saW5nX3NldHBvaW50GAMgASgRUhdvY2'
    'N1cGllZENvb2xpbmdTZXRwb2ludBI1ChdtaW5faGVhdF9zZXRwb2ludF9saW1pdBgEIAEoEVIU'
    'bWluSGVhdFNldHBvaW50TGltaXQSNQoXbWF4X2hlYXRfc2V0cG9pbnRfbGltaXQYBSABKBFSFG'
    '1heEhlYXRTZXRwb2ludExpbWl0EjUKF21pbl9jb29sX3NldHBvaW50X2xpbWl0GAYgASgRUhRt'
    'aW5Db29sU2V0cG9pbnRMaW1pdBI1ChdtYXhfY29vbF9zZXRwb2ludF9saW1pdBgHIAEoEVIUbW'
    'F4Q29vbFNldHBvaW50TGltaXQSQQodY29udHJvbF9zZXF1ZW5jZV9vZl9vcGVyYXRpb24YCCAB'
    'KA1SGmNvbnRyb2xTZXF1ZW5jZU9mT3BlcmF0aW9uEh8KC3N5c3RlbV9tb2RlGAkgASgNUgpzeX'
    'N0ZW1Nb2RlEjYKF3RoZXJtb3N0YXRfcnVubmluZ19tb2RlGAogASgNUhV0aGVybW9zdGF0UnVu'
    'bmluZ01vZGU=');

@$core.Deprecated('Use temperatureSensorPropertiesDescriptor instead')
const TemperatureSensorProperties$json = {
  '1': 'TemperatureSensorProperties',
  '2': [
    {'1': 'measured_value', '3': 1, '4': 1, '5': 17, '10': 'measuredValue'},
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'minMeasuredValue'
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 17,
      '10': 'maxMeasuredValue'
    },
    {'1': 'tolerance', '3': 4, '4': 1, '5': 13, '10': 'tolerance'},
  ],
};

/// Descriptor for `TemperatureSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureSensorPropertiesDescriptor = $convert.base64Decode(
    'ChtUZW1wZXJhdHVyZVNlbnNvclByb3BlcnRpZXMSJQoObWVhc3VyZWRfdmFsdWUYASABKBFSDW'
    '1lYXN1cmVkVmFsdWUSLAoSbWluX21lYXN1cmVkX3ZhbHVlGAIgASgRUhBtaW5NZWFzdXJlZFZh'
    'bHVlEiwKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoEVIQbWF4TWVhc3VyZWRWYWx1ZRIcCgl0b2'
    'xlcmFuY2UYBCABKA1SCXRvbGVyYW5jZQ==');

@$core.Deprecated('Use humiditySensorPropertiesDescriptor instead')
const HumiditySensorProperties$json = {
  '1': 'HumiditySensorProperties',
  '2': [
    {'1': 'measured_value', '3': 1, '4': 1, '5': 13, '10': 'measuredValue'},
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'minMeasuredValue'
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'maxMeasuredValue'
    },
    {'1': 'tolerance', '3': 4, '4': 1, '5': 13, '10': 'tolerance'},
  ],
};

/// Descriptor for `HumiditySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List humiditySensorPropertiesDescriptor = $convert.base64Decode(
    'ChhIdW1pZGl0eVNlbnNvclByb3BlcnRpZXMSJQoObWVhc3VyZWRfdmFsdWUYASABKA1SDW1lYX'
    'N1cmVkVmFsdWUSLAoSbWluX21lYXN1cmVkX3ZhbHVlGAIgASgNUhBtaW5NZWFzdXJlZFZhbHVl'
    'EiwKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoDVIQbWF4TWVhc3VyZWRWYWx1ZRIcCgl0b2xlcm'
    'FuY2UYBCABKA1SCXRvbGVyYW5jZQ==');

@$core.Deprecated('Use occupancySensorPropertiesDescriptor instead')
const OccupancySensorProperties$json = {
  '1': 'OccupancySensorProperties',
  '2': [
    {'1': 'occupancy', '3': 1, '4': 1, '5': 13, '10': 'occupancy'},
    {
      '1': 'occupancy_sensor_type',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'occupancySensorType'
    },
    {
      '1': 'occupancy_sensor_type_bitmap',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'occupancySensorTypeBitmap'
    },
    {
      '1': 'pir_occ_to_unocc_delay',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'pirOccToUnoccDelay'
    },
    {
      '1': 'pir_unocc_to_occ_delay',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'pirUnoccToOccDelay'
    },
  ],
};

/// Descriptor for `OccupancySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List occupancySensorPropertiesDescriptor = $convert.base64Decode(
    'ChlPY2N1cGFuY3lTZW5zb3JQcm9wZXJ0aWVzEhwKCW9jY3VwYW5jeRgBIAEoDVIJb2NjdXBhbm'
    'N5EjIKFW9jY3VwYW5jeV9zZW5zb3JfdHlwZRgCIAEoDVITb2NjdXBhbmN5U2Vuc29yVHlwZRI/'
    'ChxvY2N1cGFuY3lfc2Vuc29yX3R5cGVfYml0bWFwGAMgASgNUhlvY2N1cGFuY3lTZW5zb3JUeX'
    'BlQml0bWFwEjIKFnBpcl9vY2NfdG9fdW5vY2NfZGVsYXkYBCABKA1SEnBpck9jY1RvVW5vY2NE'
    'ZWxheRIyChZwaXJfdW5vY2NfdG9fb2NjX2RlbGF5GAUgASgNUhJwaXJVbm9jY1RvT2NjRGVsYX'
    'k=');

@$core.Deprecated('Use contactSensorPropertiesDescriptor instead')
const ContactSensorProperties$json = {
  '1': 'ContactSensorProperties',
  '2': [
    {'1': 'state_value', '3': 1, '4': 1, '5': 8, '10': 'stateValue'},
  ],
};

/// Descriptor for `ContactSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactSensorPropertiesDescriptor =
    $convert.base64Decode(
        'ChdDb250YWN0U2Vuc29yUHJvcGVydGllcxIfCgtzdGF0ZV92YWx1ZRgBIAEoCFIKc3RhdGVWYW'
        'x1ZQ==');

@$core.Deprecated('Use windowCoveringPropertiesDescriptor instead')
const WindowCoveringProperties$json = {
  '1': 'WindowCoveringProperties',
  '2': [
    {'1': 'covering_type', '3': 1, '4': 1, '5': 13, '10': 'coveringType'},
    {
      '1': 'current_position_lift_percent100ths',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'currentPositionLiftPercent100ths'
    },
    {
      '1': 'current_position_tilt_percent100ths',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'currentPositionTiltPercent100ths'
    },
    {
      '1': 'target_position_lift_percent100ths',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'targetPositionLiftPercent100ths'
    },
    {
      '1': 'target_position_tilt_percent100ths',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'targetPositionTiltPercent100ths'
    },
    {
      '1': 'operational_status',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'operationalStatus'
    },
    {'1': 'end_product_type', '3': 7, '4': 1, '5': 13, '10': 'endProductType'},
    {'1': 'mode', '3': 8, '4': 1, '5': 13, '10': 'mode'},
  ],
};

/// Descriptor for `WindowCoveringProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List windowCoveringPropertiesDescriptor = $convert.base64Decode(
    'ChhXaW5kb3dDb3ZlcmluZ1Byb3BlcnRpZXMSIwoNY292ZXJpbmdfdHlwZRgBIAEoDVIMY292ZX'
    'JpbmdUeXBlEk0KI2N1cnJlbnRfcG9zaXRpb25fbGlmdF9wZXJjZW50MTAwdGhzGAIgASgNUiBj'
    'dXJyZW50UG9zaXRpb25MaWZ0UGVyY2VudDEwMHRocxJNCiNjdXJyZW50X3Bvc2l0aW9uX3RpbH'
    'RfcGVyY2VudDEwMHRocxgDIAEoDVIgY3VycmVudFBvc2l0aW9uVGlsdFBlcmNlbnQxMDB0aHMS'
    'SwoidGFyZ2V0X3Bvc2l0aW9uX2xpZnRfcGVyY2VudDEwMHRocxgEIAEoDVIfdGFyZ2V0UG9zaX'
    'Rpb25MaWZ0UGVyY2VudDEwMHRocxJLCiJ0YXJnZXRfcG9zaXRpb25fdGlsdF9wZXJjZW50MTAw'
    'dGhzGAUgASgNUh90YXJnZXRQb3NpdGlvblRpbHRQZXJjZW50MTAwdGhzEi0KEm9wZXJhdGlvbm'
    'FsX3N0YXR1cxgGIAEoDVIRb3BlcmF0aW9uYWxTdGF0dXMSKAoQZW5kX3Byb2R1Y3RfdHlwZRgH'
    'IAEoDVIOZW5kUHJvZHVjdFR5cGUSEgoEbW9kZRgIIAEoDVIEbW9kZQ==');

@$core.Deprecated('Use doorLockPropertiesDescriptor instead')
const DoorLockProperties$json = {
  '1': 'DoorLockProperties',
  '2': [
    {'1': 'lock_state', '3': 1, '4': 1, '5': 13, '10': 'lockState'},
    {'1': 'lock_type', '3': 2, '4': 1, '5': 13, '10': 'lockType'},
    {'1': 'actuator_enabled', '3': 3, '4': 1, '5': 8, '10': 'actuatorEnabled'},
    {'1': 'door_state', '3': 4, '4': 1, '5': 13, '10': 'doorState'},
    {'1': 'operating_mode', '3': 5, '4': 1, '5': 13, '10': 'operatingMode'},
  ],
};

/// Descriptor for `DoorLockProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doorLockPropertiesDescriptor = $convert.base64Decode(
    'ChJEb29yTG9ja1Byb3BlcnRpZXMSHQoKbG9ja19zdGF0ZRgBIAEoDVIJbG9ja1N0YXRlEhsKCW'
    'xvY2tfdHlwZRgCIAEoDVIIbG9ja1R5cGUSKQoQYWN0dWF0b3JfZW5hYmxlZBgDIAEoCFIPYWN0'
    'dWF0b3JFbmFibGVkEh0KCmRvb3Jfc3RhdGUYBCABKA1SCWRvb3JTdGF0ZRIlCg5vcGVyYXRpbm'
    'dfbW9kZRgFIAEoDVINb3BlcmF0aW5nTW9kZQ==');

@$core.Deprecated('Use onOffLightPropertiesDescriptor instead')
const OnOffLightProperties$json = {
  '1': 'OnOffLightProperties',
  '2': [
    {'1': 'on_off', '3': 1, '4': 1, '5': 8, '10': 'onOff'},
    {
      '1': 'global_scene_control',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'globalSceneControl'
    },
    {'1': 'on_time', '3': 3, '4': 1, '5': 13, '10': 'onTime'},
    {'1': 'off_wait_time', '3': 4, '4': 1, '5': 13, '10': 'offWaitTime'},
    {'1': 'start_up_on_off', '3': 5, '4': 1, '5': 13, '10': 'startUpOnOff'},
  ],
};

/// Descriptor for `OnOffLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onOffLightPropertiesDescriptor = $convert.base64Decode(
    'ChRPbk9mZkxpZ2h0UHJvcGVydGllcxIVCgZvbl9vZmYYASABKAhSBW9uT2ZmEjAKFGdsb2JhbF'
    '9zY2VuZV9jb250cm9sGAIgASgIUhJnbG9iYWxTY2VuZUNvbnRyb2wSFwoHb25fdGltZRgDIAEo'
    'DVIGb25UaW1lEiIKDW9mZl93YWl0X3RpbWUYBCABKA1SC29mZldhaXRUaW1lEiUKD3N0YXJ0X3'
    'VwX29uX29mZhgFIAEoDVIMc3RhcnRVcE9uT2Zm');

@$core.Deprecated('Use dimmableLightPropertiesDescriptor instead')
const DimmableLightProperties$json = {
  '1': 'DimmableLightProperties',
  '2': [
    {'1': 'on_off', '3': 1, '4': 1, '5': 8, '10': 'onOff'},
    {'1': 'current_level', '3': 2, '4': 1, '5': 13, '10': 'currentLevel'},
    {'1': 'min_level', '3': 3, '4': 1, '5': 13, '10': 'minLevel'},
    {'1': 'max_level', '3': 4, '4': 1, '5': 13, '10': 'maxLevel'},
    {'1': 'on_level', '3': 5, '4': 1, '5': 13, '10': 'onLevel'},
    {
      '1': 'start_up_current_level',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'startUpCurrentLevel'
    },
    {'1': 'remaining_time', '3': 7, '4': 1, '5': 13, '10': 'remainingTime'},
  ],
};

/// Descriptor for `DimmableLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dimmableLightPropertiesDescriptor = $convert.base64Decode(
    'ChdEaW1tYWJsZUxpZ2h0UHJvcGVydGllcxIVCgZvbl9vZmYYASABKAhSBW9uT2ZmEiMKDWN1cn'
    'JlbnRfbGV2ZWwYAiABKA1SDGN1cnJlbnRMZXZlbBIbCgltaW5fbGV2ZWwYAyABKA1SCG1pbkxl'
    'dmVsEhsKCW1heF9sZXZlbBgEIAEoDVIIbWF4TGV2ZWwSGQoIb25fbGV2ZWwYBSABKA1SB29uTG'
    'V2ZWwSMwoWc3RhcnRfdXBfY3VycmVudF9sZXZlbBgGIAEoDVITc3RhcnRVcEN1cnJlbnRMZXZl'
    'bBIlCg5yZW1haW5pbmdfdGltZRgHIAEoDVINcmVtYWluaW5nVGltZQ==');

@$core.Deprecated('Use colorTemperatureLightPropertiesDescriptor instead')
const ColorTemperatureLightProperties$json = {
  '1': 'ColorTemperatureLightProperties',
  '2': [
    {'1': 'on_off', '3': 1, '4': 1, '5': 8, '10': 'onOff'},
    {'1': 'current_level', '3': 2, '4': 1, '5': 13, '10': 'currentLevel'},
    {
      '1': 'color_temperature_mireds',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'colorTemperatureMireds'
    },
    {
      '1': 'color_temp_physical_min_mireds',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'colorTempPhysicalMinMireds'
    },
    {
      '1': 'color_temp_physical_max_mireds',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'colorTempPhysicalMaxMireds'
    },
    {
      '1': 'startup_color_temperature_mireds',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'startupColorTemperatureMireds'
    },
    {'1': 'color_mode', '3': 7, '4': 1, '5': 13, '10': 'colorMode'},
  ],
};

/// Descriptor for `ColorTemperatureLightProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorTemperatureLightPropertiesDescriptor = $convert.base64Decode(
    'Ch9Db2xvclRlbXBlcmF0dXJlTGlnaHRQcm9wZXJ0aWVzEhUKBm9uX29mZhgBIAEoCFIFb25PZm'
    'YSIwoNY3VycmVudF9sZXZlbBgCIAEoDVIMY3VycmVudExldmVsEjgKGGNvbG9yX3RlbXBlcmF0'
    'dXJlX21pcmVkcxgDIAEoDVIWY29sb3JUZW1wZXJhdHVyZU1pcmVkcxJCCh5jb2xvcl90ZW1wX3'
    'BoeXNpY2FsX21pbl9taXJlZHMYBCABKA1SGmNvbG9yVGVtcFBoeXNpY2FsTWluTWlyZWRzEkIK'
    'HmNvbG9yX3RlbXBfcGh5c2ljYWxfbWF4X21pcmVkcxgFIAEoDVIaY29sb3JUZW1wUGh5c2ljYW'
    'xNYXhNaXJlZHMSRwogc3RhcnR1cF9jb2xvcl90ZW1wZXJhdHVyZV9taXJlZHMYBiABKA1SHXN0'
    'YXJ0dXBDb2xvclRlbXBlcmF0dXJlTWlyZWRzEh0KCmNvbG9yX21vZGUYByABKA1SCWNvbG9yTW'
    '9kZQ==');

@$core.Deprecated('Use energySensorPropertiesDescriptor instead')
const EnergySensorProperties$json = {
  '1': 'EnergySensorProperties',
  '2': [
    {'1': 'active_power', '3': 1, '4': 1, '5': 5, '10': 'activePower'},
    {'1': 'rms_voltage', '3': 2, '4': 1, '5': 13, '10': 'rmsVoltage'},
    {'1': 'rms_current', '3': 3, '4': 1, '5': 13, '10': 'rmsCurrent'},
    {'1': 'ac_frequency', '3': 4, '4': 1, '5': 13, '10': 'acFrequency'},
  ],
};

/// Descriptor for `EnergySensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List energySensorPropertiesDescriptor = $convert.base64Decode(
    'ChZFbmVyZ3lTZW5zb3JQcm9wZXJ0aWVzEiEKDGFjdGl2ZV9wb3dlchgBIAEoBVILYWN0aXZlUG'
    '93ZXISHwoLcm1zX3ZvbHRhZ2UYAiABKA1SCnJtc1ZvbHRhZ2USHwoLcm1zX2N1cnJlbnQYAyAB'
    'KA1SCnJtc0N1cnJlbnQSIQoMYWNfZnJlcXVlbmN5GAQgASgNUgthY0ZyZXF1ZW5jeQ==');

@$core.Deprecated('Use pressureSensorPropertiesDescriptor instead')
const PressureSensorProperties$json = {
  '1': 'PressureSensorProperties',
  '2': [
    {'1': 'measured_value', '3': 1, '4': 1, '5': 17, '10': 'measuredValue'},
    {
      '1': 'min_measured_value',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'minMeasuredValue'
    },
    {
      '1': 'max_measured_value',
      '3': 3,
      '4': 1,
      '5': 17,
      '10': 'maxMeasuredValue'
    },
    {'1': 'tolerance', '3': 4, '4': 1, '5': 13, '10': 'tolerance'},
  ],
};

/// Descriptor for `PressureSensorProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pressureSensorPropertiesDescriptor = $convert.base64Decode(
    'ChhQcmVzc3VyZVNlbnNvclByb3BlcnRpZXMSJQoObWVhc3VyZWRfdmFsdWUYASABKBFSDW1lYX'
    'N1cmVkVmFsdWUSLAoSbWluX21lYXN1cmVkX3ZhbHVlGAIgASgRUhBtaW5NZWFzdXJlZFZhbHVl'
    'EiwKEm1heF9tZWFzdXJlZF92YWx1ZRgDIAEoEVIQbWF4TWVhc3VyZWRWYWx1ZRIcCgl0b2xlcm'
    'FuY2UYBCABKA1SCXRvbGVyYW5jZQ==');
