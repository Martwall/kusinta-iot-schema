// This is a generated file - do not edit.
//
// Generated from kusinta/iot/connector/v1/connector_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../../../../google/protobuf/timestamp.pbjson.dart' as $1;
import '../../access/v1/acl.pbjson.dart' as $11;
import '../../device/v1/cluster_state.pbjson.dart' as $7;
import '../../device/v1/descriptor.pbjson.dart' as $4;
import '../../device/v1/device.pbjson.dart' as $3;
import '../../device/v1/device_event.pbjson.dart' as $10;
import '../../device/v1/properties.pbjson.dart' as $6;
import '../../device/v1/property_update.pbjson.dart' as $8;
import '../../identity/v1/identity.pbjson.dart' as $2;
import '../../vendor/homematic/v1/homematic.pbjson.dart' as $5;
import '../../webrtc/v1/command.pbjson.dart' as $9;
import 'connector.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic> ConnectorGatewayServiceBase$json =
    {
  '1': 'ConnectorGatewayService',
  '2': [
    {
      '1': 'Session',
      '2': '.kusinta.iot.connector.v1.SessionRequest',
      '3': '.kusinta.iot.connector.v1.SessionResponse',
      '5': true,
      '6': true
    },
  ],
};

@$core.Deprecated('Use connectorGatewayServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    ConnectorGatewayServiceBase$messageJson = {
  '.kusinta.iot.connector.v1.SessionRequest': $0.SessionRequest$json,
  '.google.protobuf.Timestamp': $1.Timestamp$json,
  '.kusinta.iot.connector.v1.ConnectorHandshake': $0.ConnectorHandshake$json,
  '.kusinta.iot.connector.v1.ConnectorInfo': $0.ConnectorInfo$json,
  '.kusinta.iot.identity.v1.ConnectorId': $2.ConnectorId$json,
  '.kusinta.iot.device.v1.Device': $3.Device$json,
  '.kusinta.iot.device.v1.DeviceDescriptor': $4.DeviceDescriptor$json,
  '.kusinta.iot.identity.v1.DeviceId': $2.DeviceId$json,
  '.kusinta.iot.identity.v1.SpaceId': $2.SpaceId$json,
  '.kusinta.iot.identity.v1.UserId': $2.UserId$json,
  '.kusinta.iot.vendor.homematic.v1.HomematicDeviceIdentity':
      $5.HomematicDeviceIdentity$json,
  '.kusinta.iot.device.v1.Endpoint': $3.Endpoint$json,
  '.kusinta.iot.device.v1.ThermostatProperties': $6.ThermostatProperties$json,
  '.kusinta.iot.device.v1.TemperatureSensorProperties':
      $6.TemperatureSensorProperties$json,
  '.kusinta.iot.device.v1.HumiditySensorProperties':
      $6.HumiditySensorProperties$json,
  '.kusinta.iot.device.v1.OccupancySensorProperties':
      $6.OccupancySensorProperties$json,
  '.kusinta.iot.device.v1.ContactSensorProperties':
      $6.ContactSensorProperties$json,
  '.kusinta.iot.device.v1.WindowCoveringProperties':
      $6.WindowCoveringProperties$json,
  '.kusinta.iot.device.v1.DoorLockProperties': $6.DoorLockProperties$json,
  '.kusinta.iot.device.v1.OnOffLightProperties': $6.OnOffLightProperties$json,
  '.kusinta.iot.device.v1.DimmableLightProperties':
      $6.DimmableLightProperties$json,
  '.kusinta.iot.device.v1.ColorTemperatureLightProperties':
      $6.ColorTemperatureLightProperties$json,
  '.kusinta.iot.device.v1.EnergySensorProperties':
      $6.EnergySensorProperties$json,
  '.kusinta.iot.device.v1.PressureSensorProperties':
      $6.PressureSensorProperties$json,
  '.kusinta.iot.device.v1.PowerSourceProperties': $6.PowerSourceProperties$json,
  '.kusinta.iot.device.v1.ClusterState': $7.ClusterState$json,
  '.kusinta.iot.device.v1.AttributeState': $7.AttributeState$json,
  '.kusinta.iot.device.v1.AttributeValue': $7.AttributeValue$json,
  '.kusinta.iot.device.v1.AttributeValueList': $7.AttributeValueList$json,
  '.kusinta.iot.device.v1.AttributeValueStruct': $7.AttributeValueStruct$json,
  '.kusinta.iot.device.v1.AttributeValueStruct.FieldsEntry':
      $7.AttributeValueStruct_FieldsEntry$json,
  '.kusinta.iot.device.v1.NullValue': $7.NullValue$json,
  '.kusinta.iot.vendor.homematic.v1.HmThermostatProps':
      $5.HmThermostatProps$json,
  '.kusinta.iot.vendor.homematic.v1.HmMaintenanceProps':
      $5.HmMaintenanceProps$json,
  '.kusinta.iot.device.v1.PropertyUpdateBatch': $8.PropertyUpdateBatch$json,
  '.kusinta.iot.device.v1.PropertyUpdate': $8.PropertyUpdate$json,
  '.kusinta.iot.connector.v1.DeviceAnnouncement': $0.DeviceAnnouncement$json,
  '.kusinta.iot.connector.v1.DeviceRemoval': $0.DeviceRemoval$json,
  '.kusinta.iot.connector.v1.ConnectorCommandResult':
      $0.ConnectorCommandResult$json,
  '.kusinta.iot.webrtc.v1.CommandError': $9.CommandError$json,
  '.kusinta.iot.connector.v1.HeartBeat': $0.HeartBeat$json,
  '.kusinta.iot.device.v1.DeviceEventBatch': $10.DeviceEventBatch$json,
  '.kusinta.iot.device.v1.DeviceEvent': $10.DeviceEvent$json,
  '.kusinta.iot.connector.v1.SessionResponse': $0.SessionResponse$json,
  '.kusinta.iot.connector.v1.HandshakeAck': $0.HandshakeAck$json,
  '.kusinta.iot.identity.v1.GatewayId': $2.GatewayId$json,
  '.kusinta.iot.connector.v1.SubscribeDevice': $0.SubscribeDevice$json,
  '.kusinta.iot.connector.v1.UnsubscribeDevice': $0.UnsubscribeDevice$json,
  '.kusinta.iot.connector.v1.GatewayError': $0.GatewayError$json,
  '.kusinta.iot.webrtc.v1.DeviceCommand': $9.DeviceCommand$json,
  '.kusinta.iot.webrtc.v1.ThermostatSetpointParams':
      $9.ThermostatSetpointParams$json,
  '.kusinta.iot.webrtc.v1.LevelControlParams': $9.LevelControlParams$json,
  '.kusinta.iot.webrtc.v1.OnOffParams': $9.OnOffParams$json,
  '.kusinta.iot.webrtc.v1.WindowCoveringLiftParams':
      $9.WindowCoveringLiftParams$json,
  '.kusinta.iot.webrtc.v1.DoorLockParams': $9.DoorLockParams$json,
  '.kusinta.iot.webrtc.v1.AttributeWriteRequest': $9.AttributeWriteRequest$json,
  '.kusinta.iot.access.v1.AttributeRef': $11.AttributeRef$json,
};

/// Descriptor for `ConnectorGatewayService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List connectorGatewayServiceDescriptor = $convert.base64Decode(
    'ChdDb25uZWN0b3JHYXRld2F5U2VydmljZRJiCgdTZXNzaW9uEigua3VzaW50YS5pb3QuY29ubm'
    'VjdG9yLnYxLlNlc3Npb25SZXF1ZXN0Gikua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLlNlc3Np'
    'b25SZXNwb25zZSgBMAE=');
