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

@$core.Deprecated('Use endpointDescriptor instead')
const Endpoint$json = {
  '1': 'Endpoint',
  '2': [
    {'1': 'endpoint_id', '3': 1, '4': 1, '5': 13, '10': 'endpointId'},
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
      '1': 'power_source',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PowerSourceProperties',
      '9': 0,
      '10': 'powerSource'
    },
    {
      '1': 'homematic',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HomematicVendorExtension',
      '9': 1,
      '10': 'homematic'
    },
  ],
  '8': [
    {'1': 'properties'},
    {'1': 'vendor'},
  ],
};

/// Descriptor for `Endpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointDescriptor = $convert.base64Decode(
    'CghFbmRwb2ludBIfCgtlbmRwb2ludF9pZBgBIAEoDVIKZW5kcG9pbnRJZBJNCgp0aGVybW9zdG'
    'F0GAIgASgLMisua3VzaW50YS5pb3QuZGV2aWNlLnYxLlRoZXJtb3N0YXRQcm9wZXJ0aWVzSABS'
    'CnRoZXJtb3N0YXQSYwoSdGVtcGVyYXR1cmVfc2Vuc29yGAMgASgLMjIua3VzaW50YS5pb3QuZG'
    'V2aWNlLnYxLlRlbXBlcmF0dXJlU2Vuc29yUHJvcGVydGllc0gAUhF0ZW1wZXJhdHVyZVNlbnNv'
    'chJaCg9odW1pZGl0eV9zZW5zb3IYBCABKAsyLy5rdXNpbnRhLmlvdC5kZXZpY2UudjEuSHVtaW'
    'RpdHlTZW5zb3JQcm9wZXJ0aWVzSABSDmh1bWlkaXR5U2Vuc29yEl0KEG9jY3VwYW5jeV9zZW5z'
    'b3IYBSABKAsyMC5rdXNpbnRhLmlvdC5kZXZpY2UudjEuT2NjdXBhbmN5U2Vuc29yUHJvcGVydG'
    'llc0gAUg9vY2N1cGFuY3lTZW5zb3ISVwoOY29udGFjdF9zZW5zb3IYBiABKAsyLi5rdXNpbnRh'
    'LmlvdC5kZXZpY2UudjEuQ29udGFjdFNlbnNvclByb3BlcnRpZXNIAFINY29udGFjdFNlbnNvch'
    'JaCg93aW5kb3dfY292ZXJpbmcYByABKAsyLy5rdXNpbnRhLmlvdC5kZXZpY2UudjEuV2luZG93'
    'Q292ZXJpbmdQcm9wZXJ0aWVzSABSDndpbmRvd0NvdmVyaW5nEkgKCWRvb3JfbG9jaxgIIAEoCz'
    'IpLmt1c2ludGEuaW90LmRldmljZS52MS5Eb29yTG9ja1Byb3BlcnRpZXNIAFIIZG9vckxvY2sS'
    'TwoMb25fb2ZmX2xpZ2h0GAkgASgLMisua3VzaW50YS5pb3QuZGV2aWNlLnYxLk9uT2ZmTGlnaH'
    'RQcm9wZXJ0aWVzSABSCm9uT2ZmTGlnaHQSVwoOZGltbWFibGVfbGlnaHQYCiABKAsyLi5rdXNp'
    'bnRhLmlvdC5kZXZpY2UudjEuRGltbWFibGVMaWdodFByb3BlcnRpZXNIAFINZGltbWFibGVMaW'
    'dodBJiChBjb2xvcl90ZW1wX2xpZ2h0GAsgASgLMjYua3VzaW50YS5pb3QuZGV2aWNlLnYxLkNv'
    'bG9yVGVtcGVyYXR1cmVMaWdodFByb3BlcnRpZXNIAFIOY29sb3JUZW1wTGlnaHQSVAoNZW5lcm'
    'd5X3NlbnNvchgMIAEoCzItLmt1c2ludGEuaW90LmRldmljZS52MS5FbmVyZ3lTZW5zb3JQcm9w'
    'ZXJ0aWVzSABSDGVuZXJneVNlbnNvchJaCg9wcmVzc3VyZV9zZW5zb3IYDSABKAsyLy5rdXNpbn'
    'RhLmlvdC5kZXZpY2UudjEuUHJlc3N1cmVTZW5zb3JQcm9wZXJ0aWVzSABSDnByZXNzdXJlU2Vu'
    'c29yElEKDHBvd2VyX3NvdXJjZRgOIAEoCzIsLmt1c2ludGEuaW90LmRldmljZS52MS5Qb3dlcl'
    'NvdXJjZVByb3BlcnRpZXNIAFILcG93ZXJTb3VyY2USWQoJaG9tZW1hdGljGDIgASgLMjkua3Vz'
    'aW50YS5pb3QudmVuZG9yLmhvbWVtYXRpYy52MS5Ib21lbWF0aWNWZW5kb3JFeHRlbnNpb25IAV'
    'IJaG9tZW1hdGljQgwKCnByb3BlcnRpZXNCCAoGdmVuZG9y');

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
    'aW90LmRldmljZS52MS5FbmRwb2ludFIJZW5kcG9pbnRzEjcKCWxhc3Rfc2VlbhgUIAEoCzIaLm'
    'dvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGxhc3RTZWVuEj0KDGxhc3RfdXBkYXRlZBgVIAEo'
    'CzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2xhc3RVcGRhdGVkSgQIAhAOSgQIMhAzUg'
    'p0aGVybW9zdGF0UhJ0ZW1wZXJhdHVyZV9zZW5zb3JSD2h1bWlkaXR5X3NlbnNvclIQb2NjdXBh'
    'bmN5X3NlbnNvclIOY29udGFjdF9zZW5zb3JSD3dpbmRvd19jb3ZlcmluZ1IJZG9vcl9sb2NrUg'
    'xvbl9vZmZfbGlnaHRSDmRpbW1hYmxlX2xpZ2h0UhBjb2xvcl90ZW1wX2xpZ2h0Ug1lbmVyZ3lf'
    'c2Vuc29yUg9wcmVzc3VyZV9zZW5zb3JSCWhvbWVtYXRpYw==');
