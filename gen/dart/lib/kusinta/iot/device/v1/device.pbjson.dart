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
      '1': 'thermostat',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ThermostatProperties',
      '9': 0,
      '10': 'thermostat'
    },
    {
      '1': 'temperature_sensor',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.TemperatureSensorProperties',
      '9': 0,
      '10': 'temperatureSensor'
    },
    {
      '1': 'humidity_sensor',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HumiditySensorProperties',
      '9': 0,
      '10': 'humiditySensor'
    },
    {
      '1': 'occupancy_sensor',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.OccupancySensorProperties',
      '9': 0,
      '10': 'occupancySensor'
    },
    {
      '1': 'contact_sensor',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ContactSensorProperties',
      '9': 0,
      '10': 'contactSensor'
    },
    {
      '1': 'window_covering',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.WindowCoveringProperties',
      '9': 0,
      '10': 'windowCovering'
    },
    {
      '1': 'door_lock',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DoorLockProperties',
      '9': 0,
      '10': 'doorLock'
    },
    {
      '1': 'on_off_light',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.OnOffLightProperties',
      '9': 0,
      '10': 'onOffLight'
    },
    {
      '1': 'dimmable_light',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DimmableLightProperties',
      '9': 0,
      '10': 'dimmableLight'
    },
    {
      '1': 'color_temp_light',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ColorTemperatureLightProperties',
      '9': 0,
      '10': 'colorTempLight'
    },
    {
      '1': 'energy_sensor',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.EnergySensorProperties',
      '9': 0,
      '10': 'energySensor'
    },
    {
      '1': 'pressure_sensor',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PressureSensorProperties',
      '9': 0,
      '10': 'pressureSensor'
    },
    {
      '1': 'homematic',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HomematicVendorExtension',
      '9': 0,
      '10': 'homematic'
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
    {'1': 'properties'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode(
    'CgZEZXZpY2USRwoKZGVzY3JpcHRvchgBIAEoCzInLmt1c2ludGEuaW90LmRldmljZS52MS5EZX'
    'ZpY2VEZXNjcmlwdG9yUgpkZXNjcmlwdG9yEk0KCnRoZXJtb3N0YXQYAiABKAsyKy5rdXNpbnRh'
    'LmlvdC5kZXZpY2UudjEuVGhlcm1vc3RhdFByb3BlcnRpZXNIAFIKdGhlcm1vc3RhdBJjChJ0ZW'
    '1wZXJhdHVyZV9zZW5zb3IYAyABKAsyMi5rdXNpbnRhLmlvdC5kZXZpY2UudjEuVGVtcGVyYXR1'
    'cmVTZW5zb3JQcm9wZXJ0aWVzSABSEXRlbXBlcmF0dXJlU2Vuc29yEloKD2h1bWlkaXR5X3Nlbn'
    'NvchgEIAEoCzIvLmt1c2ludGEuaW90LmRldmljZS52MS5IdW1pZGl0eVNlbnNvclByb3BlcnRp'
    'ZXNIAFIOaHVtaWRpdHlTZW5zb3ISXQoQb2NjdXBhbmN5X3NlbnNvchgFIAEoCzIwLmt1c2ludG'
    'EuaW90LmRldmljZS52MS5PY2N1cGFuY3lTZW5zb3JQcm9wZXJ0aWVzSABSD29jY3VwYW5jeVNl'
    'bnNvchJXCg5jb250YWN0X3NlbnNvchgGIAEoCzIuLmt1c2ludGEuaW90LmRldmljZS52MS5Db2'
    '50YWN0U2Vuc29yUHJvcGVydGllc0gAUg1jb250YWN0U2Vuc29yEloKD3dpbmRvd19jb3Zlcmlu'
    'ZxgHIAEoCzIvLmt1c2ludGEuaW90LmRldmljZS52MS5XaW5kb3dDb3ZlcmluZ1Byb3BlcnRpZX'
    'NIAFIOd2luZG93Q292ZXJpbmcSSAoJZG9vcl9sb2NrGAggASgLMikua3VzaW50YS5pb3QuZGV2'
    'aWNlLnYxLkRvb3JMb2NrUHJvcGVydGllc0gAUghkb29yTG9jaxJPCgxvbl9vZmZfbGlnaHQYCS'
    'ABKAsyKy5rdXNpbnRhLmlvdC5kZXZpY2UudjEuT25PZmZMaWdodFByb3BlcnRpZXNIAFIKb25P'
    'ZmZMaWdodBJXCg5kaW1tYWJsZV9saWdodBgKIAEoCzIuLmt1c2ludGEuaW90LmRldmljZS52MS'
    '5EaW1tYWJsZUxpZ2h0UHJvcGVydGllc0gAUg1kaW1tYWJsZUxpZ2h0EmIKEGNvbG9yX3RlbXBf'
    'bGlnaHQYCyABKAsyNi5rdXNpbnRhLmlvdC5kZXZpY2UudjEuQ29sb3JUZW1wZXJhdHVyZUxpZ2'
    'h0UHJvcGVydGllc0gAUg5jb2xvclRlbXBMaWdodBJUCg1lbmVyZ3lfc2Vuc29yGAwgASgLMi0u'
    'a3VzaW50YS5pb3QuZGV2aWNlLnYxLkVuZXJneVNlbnNvclByb3BlcnRpZXNIAFIMZW5lcmd5U2'
    'Vuc29yEloKD3ByZXNzdXJlX3NlbnNvchgNIAEoCzIvLmt1c2ludGEuaW90LmRldmljZS52MS5Q'
    'cmVzc3VyZVNlbnNvclByb3BlcnRpZXNIAFIOcHJlc3N1cmVTZW5zb3ISWQoJaG9tZW1hdGljGD'
    'IgASgLMjkua3VzaW50YS5pb3QudmVuZG9yLmhvbWVtYXRpYy52MS5Ib21lbWF0aWNWZW5kb3JF'
    'eHRlbnNpb25IAFIJaG9tZW1hdGljEjcKCWxhc3Rfc2VlbhgUIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBSCGxhc3RTZWVuEj0KDGxhc3RfdXBkYXRlZBgVIAEoCzIaLmdvb2dsZS5w'
    'cm90b2J1Zi5UaW1lc3RhbXBSC2xhc3RVcGRhdGVkQgwKCnByb3BlcnRpZXM=');
