// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/device.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use heatSourceProductionDescriptor instead')
const HeatSourceProduction$json = {
  '1': 'HeatSourceProduction',
  '2': [
    {'1': 'HEAT_SOURCE_PRODUCTION_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_SOURCE_PRODUCTION_OFF', '2': 1},
    {'1': 'HEAT_SOURCE_PRODUCTION_SPACE_HEATING', '2': 2},
    {'1': 'HEAT_SOURCE_PRODUCTION_HOT_WATER', '2': 3},
    {'1': 'HEAT_SOURCE_PRODUCTION_POOL', '2': 4},
    {'1': 'HEAT_SOURCE_PRODUCTION_COOLING', '2': 5},
    {'1': 'HEAT_SOURCE_PRODUCTION_OTHER', '2': 6},
  ],
};

/// Descriptor for `HeatSourceProduction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatSourceProductionDescriptor = $convert.base64Decode(
    'ChRIZWF0U291cmNlUHJvZHVjdGlvbhImCiJIRUFUX1NPVVJDRV9QUk9EVUNUSU9OX1VOU1BFQ0'
    'lGSUVEEAASHgoaSEVBVF9TT1VSQ0VfUFJPRFVDVElPTl9PRkYQARIoCiRIRUFUX1NPVVJDRV9Q'
    'Uk9EVUNUSU9OX1NQQUNFX0hFQVRJTkcQAhIkCiBIRUFUX1NPVVJDRV9QUk9EVUNUSU9OX0hPVF'
    '9XQVRFUhADEh8KG0hFQVRfU09VUkNFX1BST0RVQ1RJT05fUE9PTBAEEiIKHkhFQVRfU09VUkNF'
    'X1BST0RVQ1RJT05fQ09PTElORxAFEiAKHEhFQVRfU09VUkNFX1BST0RVQ1RJT05fT1RIRVIQBg'
    '==');

@$core.Deprecated('Use heatSourceOperatingModeDescriptor instead')
const HeatSourceOperatingMode$json = {
  '1': 'HeatSourceOperatingMode',
  '2': [
    {'1': 'HEAT_SOURCE_OPERATING_MODE_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_SOURCE_OPERATING_MODE_AUTOMATIC', '2': 1},
    {'1': 'HEAT_SOURCE_OPERATING_MODE_MANUAL', '2': 2},
    {'1': 'HEAT_SOURCE_OPERATING_MODE_ADD_ON_ONLY', '2': 3},
    {'1': 'HEAT_SOURCE_OPERATING_MODE_OTHER', '2': 4},
  ],
};

/// Descriptor for `HeatSourceOperatingMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatSourceOperatingModeDescriptor = $convert.base64Decode(
    'ChdIZWF0U291cmNlT3BlcmF0aW5nTW9kZRIqCiZIRUFUX1NPVVJDRV9PUEVSQVRJTkdfTU9ERV'
    '9VTlNQRUNJRklFRBAAEigKJEhFQVRfU09VUkNFX09QRVJBVElOR19NT0RFX0FVVE9NQVRJQxAB'
    'EiUKIUhFQVRfU09VUkNFX09QRVJBVElOR19NT0RFX01BTlVBTBACEioKJkhFQVRfU09VUkNFX0'
    '9QRVJBVElOR19NT0RFX0FERF9PTl9PTkxZEAMSJAogSEVBVF9TT1VSQ0VfT1BFUkFUSU5HX01P'
    'REVfT1RIRVIQBA==');

@$core.Deprecated('Use compressorStateDescriptor instead')
const CompressorState$json = {
  '1': 'CompressorState',
  '2': [
    {'1': 'COMPRESSOR_STATE_UNSPECIFIED', '2': 0},
    {'1': 'COMPRESSOR_STATE_STOPPED', '2': 1},
    {'1': 'COMPRESSOR_STATE_STARTING', '2': 2},
    {'1': 'COMPRESSOR_STATE_RUNNING', '2': 3},
    {'1': 'COMPRESSOR_STATE_STOPPING', '2': 4},
    {'1': 'COMPRESSOR_STATE_BLOCKED', '2': 5},
  ],
};

/// Descriptor for `CompressorState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List compressorStateDescriptor = $convert.base64Decode(
    'Cg9Db21wcmVzc29yU3RhdGUSIAocQ09NUFJFU1NPUl9TVEFURV9VTlNQRUNJRklFRBAAEhwKGE'
    'NPTVBSRVNTT1JfU1RBVEVfU1RPUFBFRBABEh0KGUNPTVBSRVNTT1JfU1RBVEVfU1RBUlRJTkcQ'
    'AhIcChhDT01QUkVTU09SX1NUQVRFX1JVTk5JTkcQAxIdChlDT01QUkVTU09SX1NUQVRFX1NUT1'
    'BQSU5HEAQSHAoYQ09NUFJFU1NPUl9TVEFURV9CTE9DS0VEEAU=');

@$core.Deprecated('Use radioQualityDescriptor instead')
const RadioQuality$json = {
  '1': 'RadioQuality',
  '2': [
    {'1': 'RADIO_QUALITY_UNSPECIFIED', '2': 0},
    {'1': 'RADIO_QUALITY_GOOD', '2': 1},
    {'1': 'RADIO_QUALITY_FAIR', '2': 2},
    {'1': 'RADIO_QUALITY_POOR', '2': 3},
  ],
};

/// Descriptor for `RadioQuality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List radioQualityDescriptor = $convert.base64Decode(
    'CgxSYWRpb1F1YWxpdHkSHQoZUkFESU9fUVVBTElUWV9VTlNQRUNJRklFRBAAEhYKElJBRElPX1'
    'FVQUxJVFlfR09PRBABEhYKElJBRElPX1FVQUxJVFlfRkFJUhACEhYKElJBRElPX1FVQUxJVFlf'
    'UE9PUhAD');

@$core.Deprecated('Use attentionReasonDescriptor instead')
const AttentionReason$json = {
  '1': 'AttentionReason',
  '2': [
    {'1': 'ATTENTION_REASON_UNSPECIFIED', '2': 0},
    {'1': 'ATTENTION_REASON_VALVE_NOT_CALIBRATED', '2': 1},
  ],
};

/// Descriptor for `AttentionReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List attentionReasonDescriptor = $convert.base64Decode(
    'Cg9BdHRlbnRpb25SZWFzb24SIAocQVRURU5USU9OX1JFQVNPTl9VTlNQRUNJRklFRBAAEikKJU'
    'FUVEVOVElPTl9SRUFTT05fVkFMVkVfTk9UX0NBTElCUkFURUQQAQ==');

@$core.Deprecated('Use endpointDescriptor instead')
const Endpoint$json = {
  '1': 'Endpoint',
  '2': [
    {'1': 'endpoint_id', '3': 1, '4': 1, '5': 13, '10': 'endpointId'},
    {
      '1': 'matter_device_type_id',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'matterDeviceTypeId'
    },
    {
      '1': 'thermostat',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ThermostatProperties',
      '9': 0,
      '10': 'thermostat'
    },
    {
      '1': 'temperature_sensor',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.TemperatureSensorProperties',
      '9': 0,
      '10': 'temperatureSensor'
    },
    {
      '1': 'humidity_sensor',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HumiditySensorProperties',
      '9': 0,
      '10': 'humiditySensor'
    },
    {
      '1': 'occupancy_sensor',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.OccupancySensorProperties',
      '9': 0,
      '10': 'occupancySensor'
    },
    {
      '1': 'contact_sensor',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ContactSensorProperties',
      '9': 0,
      '10': 'contactSensor'
    },
    {
      '1': 'window_covering',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.WindowCoveringProperties',
      '9': 0,
      '10': 'windowCovering'
    },
    {
      '1': 'door_lock',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DoorLockProperties',
      '9': 0,
      '10': 'doorLock'
    },
    {
      '1': 'on_off_light',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.OnOffLightProperties',
      '9': 0,
      '10': 'onOffLight'
    },
    {
      '1': 'dimmable_light',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DimmableLightProperties',
      '9': 0,
      '10': 'dimmableLight'
    },
    {
      '1': 'color_temp_light',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ColorTemperatureLightProperties',
      '9': 0,
      '10': 'colorTempLight'
    },
    {
      '1': 'energy_sensor',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.EnergySensorProperties',
      '9': 0,
      '10': 'energySensor'
    },
    {
      '1': 'pressure_sensor',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PressureSensorProperties',
      '9': 0,
      '10': 'pressureSensor'
    },
    {
      '1': 'power_source',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PowerSourceProperties',
      '9': 0,
      '10': 'powerSource'
    },
    {
      '1': 'hm_thermostat',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmThermostatProps',
      '9': 1,
      '10': 'hmThermostat'
    },
    {
      '1': 'hm_maintenance',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmMaintenanceProps',
      '9': 1,
      '10': 'hmMaintenance'
    },
    {
      '1': 'radio_link',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.RadioLink',
      '10': 'radioLink'
    },
    {
      '1': 'heat_source',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HeatSourceReadings',
      '10': 'heatSource'
    },
    {
      '1': 'attention',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DeviceAttention',
      '10': 'attention'
    },
    {
      '1': 'clusters',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ClusterState',
      '10': 'clusters'
    },
    {
      '1': 'vendor_attribute_names',
      '3': 17,
      '4': 3,
      '5': 9,
      '10': 'vendorAttributeNames'
    },
    {
      '1': 'vendor_attribute_behaviours',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.Endpoint.VendorAttributeBehavioursEntry',
      '10': 'vendorAttributeBehaviours'
    },
  ],
  '3': [Endpoint_VendorAttributeBehavioursEntry$json],
  '8': [
    {'1': 'matter_properties'},
    {'1': 'vendor_properties'},
  ],
};

@$core.Deprecated('Use endpointDescriptor instead')
const Endpoint_VendorAttributeBehavioursEntry$json = {
  '1': 'VendorAttributeBehavioursEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeBehaviour',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `Endpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointDescriptor = $convert.base64Decode(
    'CghFbmRwb2ludBIfCgtlbmRwb2ludF9pZBgBIAEoDVIKZW5kcG9pbnRJZBIxChVtYXR0ZXJfZG'
    'V2aWNlX3R5cGVfaWQYAiABKA1SEm1hdHRlckRldmljZVR5cGVJZBJNCgp0aGVybW9zdGF0GAMg'
    'ASgLMisua3VzaW50YS5pb3QuZGV2aWNlLnYxLlRoZXJtb3N0YXRQcm9wZXJ0aWVzSABSCnRoZX'
    'Jtb3N0YXQSYwoSdGVtcGVyYXR1cmVfc2Vuc29yGAQgASgLMjIua3VzaW50YS5pb3QuZGV2aWNl'
    'LnYxLlRlbXBlcmF0dXJlU2Vuc29yUHJvcGVydGllc0gAUhF0ZW1wZXJhdHVyZVNlbnNvchJaCg'
    '9odW1pZGl0eV9zZW5zb3IYBSABKAsyLy5rdXNpbnRhLmlvdC5kZXZpY2UudjEuSHVtaWRpdHlT'
    'ZW5zb3JQcm9wZXJ0aWVzSABSDmh1bWlkaXR5U2Vuc29yEl0KEG9jY3VwYW5jeV9zZW5zb3IYBi'
    'ABKAsyMC5rdXNpbnRhLmlvdC5kZXZpY2UudjEuT2NjdXBhbmN5U2Vuc29yUHJvcGVydGllc0gA'
    'Ug9vY2N1cGFuY3lTZW5zb3ISVwoOY29udGFjdF9zZW5zb3IYByABKAsyLi5rdXNpbnRhLmlvdC'
    '5kZXZpY2UudjEuQ29udGFjdFNlbnNvclByb3BlcnRpZXNIAFINY29udGFjdFNlbnNvchJaCg93'
    'aW5kb3dfY292ZXJpbmcYCCABKAsyLy5rdXNpbnRhLmlvdC5kZXZpY2UudjEuV2luZG93Q292ZX'
    'JpbmdQcm9wZXJ0aWVzSABSDndpbmRvd0NvdmVyaW5nEkgKCWRvb3JfbG9jaxgJIAEoCzIpLmt1'
    'c2ludGEuaW90LmRldmljZS52MS5Eb29yTG9ja1Byb3BlcnRpZXNIAFIIZG9vckxvY2sSTwoMb2'
    '5fb2ZmX2xpZ2h0GAogASgLMisua3VzaW50YS5pb3QuZGV2aWNlLnYxLk9uT2ZmTGlnaHRQcm9w'
    'ZXJ0aWVzSABSCm9uT2ZmTGlnaHQSVwoOZGltbWFibGVfbGlnaHQYCyABKAsyLi5rdXNpbnRhLm'
    'lvdC5kZXZpY2UudjEuRGltbWFibGVMaWdodFByb3BlcnRpZXNIAFINZGltbWFibGVMaWdodBJi'
    'ChBjb2xvcl90ZW1wX2xpZ2h0GAwgASgLMjYua3VzaW50YS5pb3QuZGV2aWNlLnYxLkNvbG9yVG'
    'VtcGVyYXR1cmVMaWdodFByb3BlcnRpZXNIAFIOY29sb3JUZW1wTGlnaHQSVAoNZW5lcmd5X3Nl'
    'bnNvchgNIAEoCzItLmt1c2ludGEuaW90LmRldmljZS52MS5FbmVyZ3lTZW5zb3JQcm9wZXJ0aW'
    'VzSABSDGVuZXJneVNlbnNvchJaCg9wcmVzc3VyZV9zZW5zb3IYDiABKAsyLy5rdXNpbnRhLmlv'
    'dC5kZXZpY2UudjEuUHJlc3N1cmVTZW5zb3JQcm9wZXJ0aWVzSABSDnByZXNzdXJlU2Vuc29yEl'
    'EKDHBvd2VyX3NvdXJjZRgPIAEoCzIsLmt1c2ludGEuaW90LmRldmljZS52MS5Qb3dlclNvdXJj'
    'ZVByb3BlcnRpZXNIAFILcG93ZXJTb3VyY2USWQoNaG1fdGhlcm1vc3RhdBgyIAEoCzIyLmt1c2'
    'ludGEuaW90LnZlbmRvci5ob21lbWF0aWMudjEuSG1UaGVybW9zdGF0UHJvcHNIAVIMaG1UaGVy'
    'bW9zdGF0ElwKDmhtX21haW50ZW5hbmNlGDMgASgLMjMua3VzaW50YS5pb3QudmVuZG9yLmhvbW'
    'VtYXRpYy52MS5IbU1haW50ZW5hbmNlUHJvcHNIAVINaG1NYWludGVuYW5jZRI/CgpyYWRpb19s'
    'aW5rGDQgASgLMiAua3VzaW50YS5pb3QuZGV2aWNlLnYxLlJhZGlvTGlua1IJcmFkaW9MaW5rEk'
    'oKC2hlYXRfc291cmNlGDUgASgLMikua3VzaW50YS5pb3QuZGV2aWNlLnYxLkhlYXRTb3VyY2VS'
    'ZWFkaW5nc1IKaGVhdFNvdXJjZRJECglhdHRlbnRpb24YNiABKAsyJi5rdXNpbnRhLmlvdC5kZX'
    'ZpY2UudjEuRGV2aWNlQXR0ZW50aW9uUglhdHRlbnRpb24SPwoIY2x1c3RlcnMYECADKAsyIy5r'
    'dXNpbnRhLmlvdC5kZXZpY2UudjEuQ2x1c3RlclN0YXRlUghjbHVzdGVycxI0ChZ2ZW5kb3JfYX'
    'R0cmlidXRlX25hbWVzGBEgAygJUhR2ZW5kb3JBdHRyaWJ1dGVOYW1lcxJ+Cht2ZW5kb3JfYXR0'
    'cmlidXRlX2JlaGF2aW91cnMYEiADKAsyPi5rdXNpbnRhLmlvdC5kZXZpY2UudjEuRW5kcG9pbn'
    'QuVmVuZG9yQXR0cmlidXRlQmVoYXZpb3Vyc0VudHJ5Uhl2ZW5kb3JBdHRyaWJ1dGVCZWhhdmlv'
    'dXJzGncKHlZlbmRvckF0dHJpYnV0ZUJlaGF2aW91cnNFbnRyeRIQCgNrZXkYASABKAlSA2tleR'
    'I/CgV2YWx1ZRgCIAEoCzIpLmt1c2ludGEuaW90LmRldmljZS52MS5BdHRyaWJ1dGVCZWhhdmlv'
    'dXJSBXZhbHVlOgI4AUITChFtYXR0ZXJfcHJvcGVydGllc0ITChF2ZW5kb3JfcHJvcGVydGllcw'
    '==');

@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = {
  '1': 'Device',
  '2': [
    {
      '1': 'descriptor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DeviceDescriptor',
      '10': 'descriptor'
    },
    {
      '1': 'endpoints',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.Endpoint',
      '10': 'endpoints'
    },
    {
      '1': 'min_write_interval_seconds',
      '3': 15,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'minWriteIntervalSeconds',
      '17': true
    },
    {
      '1': 'max_write_delay_seconds',
      '3': 16,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'maxWriteDelaySeconds',
      '17': true
    },
    {
      '1': 'last_seen',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'lastSeen'
    },
    {
      '1': 'last_updated',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'lastUpdated'
    },
  ],
  '8': [
    {'1': '_min_write_interval_seconds'},
    {'1': '_max_write_delay_seconds'},
  ],
  '9': [
    {'1': 2, '2': 14},
    {'1': 50, '2': 51},
  ],
  '10': [
    'thermostat',
    'temperature_sensor',
    'humidity_sensor',
    'occupancy_sensor',
    'contact_sensor',
    'window_covering',
    'door_lock',
    'on_off_light',
    'dimmable_light',
    'color_temp_light',
    'energy_sensor',
    'pressure_sensor',
    'homematic'
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode(
    'CgZEZXZpY2USRwoKZGVzY3JpcHRvchgBIAEoCzInLmt1c2ludGEuaW90LmRldmljZS52MS5EZX'
    'ZpY2VEZXNjcmlwdG9yUgpkZXNjcmlwdG9yEj0KCWVuZHBvaW50cxgOIAMoCzIfLmt1c2ludGEu'
    'aW90LmRldmljZS52MS5FbmRwb2ludFIJZW5kcG9pbnRzEkAKGm1pbl93cml0ZV9pbnRlcnZhbF'
    '9zZWNvbmRzGA8gASgNSABSF21pbldyaXRlSW50ZXJ2YWxTZWNvbmRziAEBEjoKF21heF93cml0'
    'ZV9kZWxheV9zZWNvbmRzGBAgASgNSAFSFG1heFdyaXRlRGVsYXlTZWNvbmRziAEBEjcKCWxhc3'
    'Rfc2VlbhgUIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGxhc3RTZWVuEj0KDGxh'
    'c3RfdXBkYXRlZBgVIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2xhc3RVcGRhdG'
    'VkQh0KG19taW5fd3JpdGVfaW50ZXJ2YWxfc2Vjb25kc0IaChhfbWF4X3dyaXRlX2RlbGF5X3Nl'
    'Y29uZHNKBAgCEA5KBAgyEDNSCnRoZXJtb3N0YXRSEnRlbXBlcmF0dXJlX3NlbnNvclIPaHVtaW'
    'RpdHlfc2Vuc29yUhBvY2N1cGFuY3lfc2Vuc29yUg5jb250YWN0X3NlbnNvclIPd2luZG93X2Nv'
    'dmVyaW5nUglkb29yX2xvY2tSDG9uX29mZl9saWdodFIOZGltbWFibGVfbGlnaHRSEGNvbG9yX3'
    'RlbXBfbGlnaHRSDWVuZXJneV9zZW5zb3JSD3ByZXNzdXJlX3NlbnNvclIJaG9tZW1hdGlj');

@$core.Deprecated('Use heatSourceReadingsDescriptor instead')
const HeatSourceReadings$json = {
  '1': 'HeatSourceReadings',
  '2': [
    {
      '1': 'outdoor_centidegrees',
      '3': 1,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 0,
      '10': 'outdoorCentidegrees',
      '17': true
    },
    {
      '1': 'supply_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 1,
      '10': 'supplyCentidegrees',
      '17': true
    },
    {
      '1': 'return_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 2,
      '10': 'returnCentidegrees',
      '17': true
    },
    {
      '1': 'hot_water_top_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 3,
      '10': 'hotWaterTopCentidegrees',
      '17': true
    },
    {
      '1': 'hot_water_charging_centidegrees',
      '3': 5,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 4,
      '10': 'hotWaterChargingCentidegrees',
      '17': true
    },
    {
      '1': 'calculated_supply_centidegrees',
      '3': 6,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 5,
      '10': 'calculatedSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'producing',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 6,
      '10': 'producing',
      '17': true
    },
    {
      '1': 'compressor_state',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 7,
      '10': 'compressorState',
      '17': true
    },
    {
      '1': 'degree_minutes',
      '3': 9,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 8,
      '10': 'degreeMinutes',
      '17': true
    },
    {
      '1': 'alarm_active',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 9,
      '10': 'alarmActive',
      '17': true
    },
    {
      '1': 'alarm_code',
      '3': 11,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 10,
      '10': 'alarmCode',
      '17': true
    },
    {
      '1': 'add_on_heat_watts',
      '3': 12,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 11,
      '10': 'addOnHeatWatts',
      '17': true
    },
    {
      '1': 'external_adjustment_active',
      '3': 30,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 12,
      '10': 'externalAdjustmentActive',
      '17': true
    },
    {
      '1': 'operating_mode',
      '3': 13,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 13,
      '10': 'operatingMode',
      '17': true
    },
    {
      '1': 'heating_stop_outdoor_centidegrees',
      '3': 14,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 14,
      '10': 'heatingStopOutdoorCentidegrees',
      '17': true
    },
    {
      '1': 'add_on_stop_outdoor_centidegrees',
      '3': 15,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 15,
      '10': 'addOnStopOutdoorCentidegrees',
      '17': true
    },
    {
      '1': 'outdoor_filter_hours',
      '3': 16,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 16,
      '10': 'outdoorFilterHours',
      '17': true
    },
    {
      '1': 'add_on_max_watts',
      '3': 17,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 17,
      '10': 'addOnMaxWatts',
      '17': true
    },
    {
      '1': 'own_curve_in_force',
      '3': 31,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 18,
      '10': 'ownCurveInForce',
      '17': true
    },
    {
      '1': 'heating_curve',
      '3': 18,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 19,
      '10': 'heatingCurve',
      '17': true
    },
    {
      '1': 'heating_curve_offset',
      '3': 19,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 20,
      '10': 'heatingCurveOffset',
      '17': true
    },
    {
      '1': 'min_supply_centidegrees',
      '3': 20,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 21,
      '10': 'minSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_plus_30_centidegrees',
      '3': 21,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 22,
      '10': 'ownCurveSupplyPlus30Centidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_plus_20_centidegrees',
      '3': 22,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 23,
      '10': 'ownCurveSupplyPlus20Centidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_plus_10_centidegrees',
      '3': 23,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 24,
      '10': 'ownCurveSupplyPlus10Centidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_0_centidegrees',
      '3': 24,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 25,
      '10': 'ownCurveSupply0Centidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_minus_10_centidegrees',
      '3': 25,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 26,
      '10': 'ownCurveSupplyMinus10Centidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_minus_20_centidegrees',
      '3': 26,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 27,
      '10': 'ownCurveSupplyMinus20Centidegrees',
      '17': true
    },
    {
      '1': 'own_curve_supply_minus_30_centidegrees',
      '3': 27,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 28,
      '10': 'ownCurveSupplyMinus30Centidegrees',
      '17': true
    },
    {
      '1': 'curve_point_outdoor_centidegrees',
      '3': 28,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 29,
      '10': 'curvePointOutdoorCentidegrees',
      '17': true
    },
    {
      '1': 'curve_point_offset_centidegrees',
      '3': 29,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 30,
      '10': 'curvePointOffsetCentidegrees',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_outdoor_centidegrees'},
    {'1': '_supply_centidegrees'},
    {'1': '_return_centidegrees'},
    {'1': '_hot_water_top_centidegrees'},
    {'1': '_hot_water_charging_centidegrees'},
    {'1': '_calculated_supply_centidegrees'},
    {'1': '_producing'},
    {'1': '_compressor_state'},
    {'1': '_degree_minutes'},
    {'1': '_alarm_active'},
    {'1': '_alarm_code'},
    {'1': '_add_on_heat_watts'},
    {'1': '_external_adjustment_active'},
    {'1': '_operating_mode'},
    {'1': '_heating_stop_outdoor_centidegrees'},
    {'1': '_add_on_stop_outdoor_centidegrees'},
    {'1': '_outdoor_filter_hours'},
    {'1': '_add_on_max_watts'},
    {'1': '_own_curve_in_force'},
    {'1': '_heating_curve'},
    {'1': '_heating_curve_offset'},
    {'1': '_min_supply_centidegrees'},
    {'1': '_own_curve_supply_plus_30_centidegrees'},
    {'1': '_own_curve_supply_plus_20_centidegrees'},
    {'1': '_own_curve_supply_plus_10_centidegrees'},
    {'1': '_own_curve_supply_0_centidegrees'},
    {'1': '_own_curve_supply_minus_10_centidegrees'},
    {'1': '_own_curve_supply_minus_20_centidegrees'},
    {'1': '_own_curve_supply_minus_30_centidegrees'},
    {'1': '_curve_point_outdoor_centidegrees'},
    {'1': '_curve_point_offset_centidegrees'},
  ],
};

/// Descriptor for `HeatSourceReadings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatSourceReadingsDescriptor = $convert.base64Decode(
    'ChJIZWF0U291cmNlUmVhZGluZ3MSVAoUb3V0ZG9vcl9jZW50aWRlZ3JlZXMYASABKBFCHKK1GB'
    'RvdXRkb29yX2NlbnRpZGVncmVlc9C1GAVIAFITb3V0ZG9vckNlbnRpZGVncmVlc4gBARJRChNz'
    'dXBwbHlfY2VudGlkZWdyZWVzGAIgASgRQhuitRgTc3VwcGx5X2NlbnRpZGVncmVlc9C1GAVIAV'
    'ISc3VwcGx5Q2VudGlkZWdyZWVziAEBElEKE3JldHVybl9jZW50aWRlZ3JlZXMYAyABKBFCG6K1'
    'GBNyZXR1cm5fY2VudGlkZWdyZWVz0LUYBUgCUhJyZXR1cm5DZW50aWRlZ3JlZXOIAQESZAoaaG'
    '90X3dhdGVyX3RvcF9jZW50aWRlZ3JlZXMYBCABKBFCIqK1GBpob3Rfd2F0ZXJfdG9wX2NlbnRp'
    'ZGVncmVlc9C1GAVIA1IXaG90V2F0ZXJUb3BDZW50aWRlZ3JlZXOIAQEScwofaG90X3dhdGVyX2'
    'NoYXJnaW5nX2NlbnRpZGVncmVlcxgFIAEoEUInorUYH2hvdF93YXRlcl9jaGFyZ2luZ19jZW50'
    'aWRlZ3JlZXPQtRgFSARSHGhvdFdhdGVyQ2hhcmdpbmdDZW50aWRlZ3JlZXOIAQEScQoeY2FsY3'
    'VsYXRlZF9zdXBwbHlfY2VudGlkZWdyZWVzGAYgASgRQiaitRgeY2FsY3VsYXRlZF9zdXBwbHlf'
    'Y2VudGlkZWdyZWVz0LUYBUgFUhxjYWxjdWxhdGVkU3VwcGx5Q2VudGlkZWdyZWVziAEBEjQKCX'
    'Byb2R1Y2luZxgHIAEoDUIRorUYCXByb2R1Y2luZ9C1GAVIBlIJcHJvZHVjaW5niAEBEkgKEGNv'
    'bXByZXNzb3Jfc3RhdGUYCCABKA1CGKK1GBBjb21wcmVzc29yX3N0YXRl0LUYBUgHUg9jb21wcm'
    'Vzc29yU3RhdGWIAQESQgoOZGVncmVlX21pbnV0ZXMYCSABKBFCFqK1GA5kZWdyZWVfbWludXRl'
    'c9C1GAVICFINZGVncmVlTWludXRlc4gBARI8CgxhbGFybV9hY3RpdmUYCiABKAhCFKK1GAxhbG'
    'FybV9hY3RpdmXQtRgFSAlSC2FsYXJtQWN0aXZliAEBEjYKCmFsYXJtX2NvZGUYCyABKA1CEqK1'
    'GAphbGFybV9jb2Rl0LUYBUgKUglhbGFybUNvZGWIAQESSQoRYWRkX29uX2hlYXRfd2F0dHMYDC'
    'ABKA1CGaK1GBFhZGRfb25faGVhdF93YXR0c9C1GAVIC1IOYWRkT25IZWF0V2F0dHOIAQESZQoa'
    'ZXh0ZXJuYWxfYWRqdXN0bWVudF9hY3RpdmUYHiABKAhCIqK1GBpleHRlcm5hbF9hZGp1c3RtZW'
    '50X2FjdGl2ZdC1GAVIDFIYZXh0ZXJuYWxBZGp1c3RtZW50QWN0aXZliAEBEkIKDm9wZXJhdGlu'
    'Z19tb2RlGA0gASgNQhaitRgOb3BlcmF0aW5nX21vZGXQtRgFSA1SDW9wZXJhdGluZ01vZGWIAQ'
    'ESeQohaGVhdGluZ19zdG9wX291dGRvb3JfY2VudGlkZWdyZWVzGA4gASgRQimitRghaGVhdGlu'
    'Z19zdG9wX291dGRvb3JfY2VudGlkZWdyZWVz0LUYBUgOUh5oZWF0aW5nU3RvcE91dGRvb3JDZW'
    '50aWRlZ3JlZXOIAQESdQogYWRkX29uX3N0b3Bfb3V0ZG9vcl9jZW50aWRlZ3JlZXMYDyABKBFC'
    'KKK1GCBhZGRfb25fc3RvcF9vdXRkb29yX2NlbnRpZGVncmVlc9C1GAVID1IcYWRkT25TdG9wT3'
    'V0ZG9vckNlbnRpZGVncmVlc4gBARJTChRvdXRkb29yX2ZpbHRlcl9ob3VycxgQIAEoDUIcorUY'
    'FG91dGRvb3JfZmlsdGVyX2hvdXJz0LUYBUgQUhJvdXRkb29yRmlsdGVySG91cnOIAQESRgoQYW'
    'RkX29uX21heF93YXR0cxgRIAEoDUIYorUYEGFkZF9vbl9tYXhfd2F0dHPQtRgFSBFSDWFkZE9u'
    'TWF4V2F0dHOIAQESTAoSb3duX2N1cnZlX2luX2ZvcmNlGB8gASgIQhqitRgSb3duX2N1cnZlX2'
    'luX2ZvcmNl0LUYBUgSUg9vd25DdXJ2ZUluRm9yY2WIAQESPwoNaGVhdGluZ19jdXJ2ZRgSIAEo'
    'DUIVorUYDWhlYXRpbmdfY3VydmXQtRgFSBNSDGhlYXRpbmdDdXJ2ZYgBARJTChRoZWF0aW5nX2'
    'N1cnZlX29mZnNldBgTIAEoEUIcorUYFGhlYXRpbmdfY3VydmVfb2Zmc2V00LUYBUgUUhJoZWF0'
    'aW5nQ3VydmVPZmZzZXSIAQESXAoXbWluX3N1cHBseV9jZW50aWRlZ3JlZXMYFCABKBFCH6K1GB'
    'dtaW5fc3VwcGx5X2NlbnRpZGVncmVlc9C1GAVIFVIVbWluU3VwcGx5Q2VudGlkZWdyZWVziAEB'
    'EoMBCiVvd25fY3VydmVfc3VwcGx5X3BsdXNfMzBfY2VudGlkZWdyZWVzGBUgASgRQi2itRglb3'
    'duX2N1cnZlX3N1cHBseV9wbHVzXzMwX2NlbnRpZGVncmVlc9C1GAVIFlIgb3duQ3VydmVTdXBw'
    'bHlQbHVzMzBDZW50aWRlZ3JlZXOIAQESgwEKJW93bl9jdXJ2ZV9zdXBwbHlfcGx1c18yMF9jZW'
    '50aWRlZ3JlZXMYFiABKBFCLaK1GCVvd25fY3VydmVfc3VwcGx5X3BsdXNfMjBfY2VudGlkZWdy'
    'ZWVz0LUYBUgXUiBvd25DdXJ2ZVN1cHBseVBsdXMyMENlbnRpZGVncmVlc4gBARKDAQolb3duX2'
    'N1cnZlX3N1cHBseV9wbHVzXzEwX2NlbnRpZGVncmVlcxgXIAEoEUItorUYJW93bl9jdXJ2ZV9z'
    'dXBwbHlfcGx1c18xMF9jZW50aWRlZ3JlZXPQtRgFSBhSIG93bkN1cnZlU3VwcGx5UGx1czEwQ2'
    'VudGlkZWdyZWVziAEBEnIKH293bl9jdXJ2ZV9zdXBwbHlfMF9jZW50aWRlZ3JlZXMYGCABKBFC'
    'J6K1GB9vd25fY3VydmVfc3VwcGx5XzBfY2VudGlkZWdyZWVz0LUYBUgZUhtvd25DdXJ2ZVN1cH'
    'BseTBDZW50aWRlZ3JlZXOIAQEShgEKJm93bl9jdXJ2ZV9zdXBwbHlfbWludXNfMTBfY2VudGlk'
    'ZWdyZWVzGBkgASgRQi6itRgmb3duX2N1cnZlX3N1cHBseV9taW51c18xMF9jZW50aWRlZ3JlZX'
    'PQtRgFSBpSIW93bkN1cnZlU3VwcGx5TWludXMxMENlbnRpZGVncmVlc4gBARKGAQomb3duX2N1'
    'cnZlX3N1cHBseV9taW51c18yMF9jZW50aWRlZ3JlZXMYGiABKBFCLqK1GCZvd25fY3VydmVfc3'
    'VwcGx5X21pbnVzXzIwX2NlbnRpZGVncmVlc9C1GAVIG1Ihb3duQ3VydmVTdXBwbHlNaW51czIw'
    'Q2VudGlkZWdyZWVziAEBEoYBCiZvd25fY3VydmVfc3VwcGx5X21pbnVzXzMwX2NlbnRpZGVncm'
    'VlcxgbIAEoEUIuorUYJm93bl9jdXJ2ZV9zdXBwbHlfbWludXNfMzBfY2VudGlkZWdyZWVz0LUY'
    'BUgcUiFvd25DdXJ2ZVN1cHBseU1pbnVzMzBDZW50aWRlZ3JlZXOIAQESdgogY3VydmVfcG9pbn'
    'Rfb3V0ZG9vcl9jZW50aWRlZ3JlZXMYHCABKBFCKKK1GCBjdXJ2ZV9wb2ludF9vdXRkb29yX2Nl'
    'bnRpZGVncmVlc9C1GAVIHVIdY3VydmVQb2ludE91dGRvb3JDZW50aWRlZ3JlZXOIAQEScwofY3'
    'VydmVfcG9pbnRfb2Zmc2V0X2NlbnRpZGVncmVlcxgdIAEoEUInorUYH2N1cnZlX3BvaW50X29m'
    'ZnNldF9jZW50aWRlZ3JlZXPQtRgFSB5SHGN1cnZlUG9pbnRPZmZzZXRDZW50aWRlZ3JlZXOIAQ'
    'E6F6q1GBNrdXNpbnRhLmhlYXRfc291cmNlQhcKFV9vdXRkb29yX2NlbnRpZGVncmVlc0IWChRf'
    'c3VwcGx5X2NlbnRpZGVncmVlc0IWChRfcmV0dXJuX2NlbnRpZGVncmVlc0IdChtfaG90X3dhdG'
    'VyX3RvcF9jZW50aWRlZ3JlZXNCIgogX2hvdF93YXRlcl9jaGFyZ2luZ19jZW50aWRlZ3JlZXNC'
    'IQofX2NhbGN1bGF0ZWRfc3VwcGx5X2NlbnRpZGVncmVlc0IMCgpfcHJvZHVjaW5nQhMKEV9jb2'
    '1wcmVzc29yX3N0YXRlQhEKD19kZWdyZWVfbWludXRlc0IPCg1fYWxhcm1fYWN0aXZlQg0KC19h'
    'bGFybV9jb2RlQhQKEl9hZGRfb25faGVhdF93YXR0c0IdChtfZXh0ZXJuYWxfYWRqdXN0bWVudF'
    '9hY3RpdmVCEQoPX29wZXJhdGluZ19tb2RlQiQKIl9oZWF0aW5nX3N0b3Bfb3V0ZG9vcl9jZW50'
    'aWRlZ3JlZXNCIwohX2FkZF9vbl9zdG9wX291dGRvb3JfY2VudGlkZWdyZWVzQhcKFV9vdXRkb2'
    '9yX2ZpbHRlcl9ob3Vyc0ITChFfYWRkX29uX21heF93YXR0c0IVChNfb3duX2N1cnZlX2luX2Zv'
    'cmNlQhAKDl9oZWF0aW5nX2N1cnZlQhcKFV9oZWF0aW5nX2N1cnZlX29mZnNldEIaChhfbWluX3'
    'N1cHBseV9jZW50aWRlZ3JlZXNCKAomX293bl9jdXJ2ZV9zdXBwbHlfcGx1c18zMF9jZW50aWRl'
    'Z3JlZXNCKAomX293bl9jdXJ2ZV9zdXBwbHlfcGx1c18yMF9jZW50aWRlZ3JlZXNCKAomX293bl'
    '9jdXJ2ZV9zdXBwbHlfcGx1c18xMF9jZW50aWRlZ3JlZXNCIgogX293bl9jdXJ2ZV9zdXBwbHlf'
    'MF9jZW50aWRlZ3JlZXNCKQonX293bl9jdXJ2ZV9zdXBwbHlfbWludXNfMTBfY2VudGlkZWdyZW'
    'VzQikKJ19vd25fY3VydmVfc3VwcGx5X21pbnVzXzIwX2NlbnRpZGVncmVlc0IpCidfb3duX2N1'
    'cnZlX3N1cHBseV9taW51c18zMF9jZW50aWRlZ3JlZXNCIwohX2N1cnZlX3BvaW50X291dGRvb3'
    'JfY2VudGlkZWdyZWVzQiIKIF9jdXJ2ZV9wb2ludF9vZmZzZXRfY2VudGlkZWdyZWVz');

@$core.Deprecated('Use deviceAttentionDescriptor instead')
const DeviceAttention$json = {
  '1': 'DeviceAttention',
  '2': [
    {
      '1': 'attention_reason',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 0,
      '10': 'attentionReason',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_attention_reason'},
  ],
};

/// Descriptor for `DeviceAttention`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAttentionDescriptor = $convert.base64Decode(
    'Cg9EZXZpY2VBdHRlbnRpb24SSAoQYXR0ZW50aW9uX3JlYXNvbhgBIAEoDUIYorUYEGF0dGVudG'
    'lvbl9yZWFzb27QtRgFSABSD2F0dGVudGlvblJlYXNvbogBAToVqrUYEWt1c2ludGEuYXR0ZW50'
    'aW9uQhMKEV9hdHRlbnRpb25fcmVhc29u');

@$core.Deprecated('Use radioLinkDescriptor instead')
const RadioLink$json = {
  '1': 'RadioLink',
  '2': [
    {
      '1': 'quality',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 0,
      '10': 'quality',
      '17': true
    },
    {
      '1': 'rssi_dbm',
      '3': 2,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 1,
      '10': 'rssiDbm',
      '17': true
    },
    {
      '1': 'snr_db',
      '3': 3,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 2,
      '10': 'snrDb',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_quality'},
    {'1': '_rssi_dbm'},
    {'1': '_snr_db'},
  ],
};

/// Descriptor for `RadioLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radioLinkDescriptor = $convert.base64Decode(
    'CglSYWRpb0xpbmsSLgoHcXVhbGl0eRgBIAEoDUIPorUYB3F1YWxpdHnQtRgFSABSB3F1YWxpdH'
    'mIAQESMAoIcnNzaV9kYm0YAiABKBFCEKK1GAhyc3NpX2RibdC1GAVIAVIHcnNzaURibYgBARIq'
    'CgZzbnJfZGIYAyABKAJCDqK1GAZzbnJfZGLQtRgFSAJSBXNuckRiiAEBOhGqtRgNa3VzaW50YS'
    '5yYWRpb0IKCghfcXVhbGl0eUILCglfcnNzaV9kYm1CCQoHX3Nucl9kYg==');
