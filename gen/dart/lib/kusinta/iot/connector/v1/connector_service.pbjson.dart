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
import '../../access/v1/acl.pbjson.dart' as $7;
import '../../common/v1/pairing.pbjson.dart' as $13;
import '../../device/v1/cluster_state.pbjson.dart' as $9;
import '../../device/v1/descriptor.pbjson.dart' as $4;
import '../../device/v1/device.pbjson.dart' as $3;
import '../../device/v1/device_event.pbjson.dart' as $12;
import '../../device/v1/properties.pbjson.dart' as $8;
import '../../device/v1/property_update.pbjson.dart' as $10;
import '../../identity/v1/identity.pbjson.dart' as $2;
import '../../link/v1/link.pbjson.dart' as $6;
import '../../vendor/homematic/v1/homematic.pbjson.dart' as $5;
import '../../webrtc/v1/command.pbjson.dart' as $11;
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
  '.kusinta.iot.link.v1.LinkCapability': $6.LinkCapability$json,
  '.kusinta.iot.access.v1.AttributeRef': $7.AttributeRef$json,
  '.kusinta.iot.device.v1.Endpoint': $3.Endpoint$json,
  '.kusinta.iot.device.v1.ThermostatProperties': $8.ThermostatProperties$json,
  '.kusinta.iot.device.v1.TemperatureSensorProperties':
      $8.TemperatureSensorProperties$json,
  '.kusinta.iot.device.v1.HumiditySensorProperties':
      $8.HumiditySensorProperties$json,
  '.kusinta.iot.device.v1.OccupancySensorProperties':
      $8.OccupancySensorProperties$json,
  '.kusinta.iot.device.v1.ContactSensorProperties':
      $8.ContactSensorProperties$json,
  '.kusinta.iot.device.v1.WindowCoveringProperties':
      $8.WindowCoveringProperties$json,
  '.kusinta.iot.device.v1.DoorLockProperties': $8.DoorLockProperties$json,
  '.kusinta.iot.device.v1.OnOffLightProperties': $8.OnOffLightProperties$json,
  '.kusinta.iot.device.v1.DimmableLightProperties':
      $8.DimmableLightProperties$json,
  '.kusinta.iot.device.v1.ColorTemperatureLightProperties':
      $8.ColorTemperatureLightProperties$json,
  '.kusinta.iot.device.v1.EnergySensorProperties':
      $8.EnergySensorProperties$json,
  '.kusinta.iot.device.v1.PressureSensorProperties':
      $8.PressureSensorProperties$json,
  '.kusinta.iot.device.v1.PowerSourceProperties': $8.PowerSourceProperties$json,
  '.kusinta.iot.device.v1.ClusterState': $9.ClusterState$json,
  '.kusinta.iot.device.v1.AttributeState': $9.AttributeState$json,
  '.kusinta.iot.device.v1.AttributeValue': $9.AttributeValue$json,
  '.kusinta.iot.device.v1.AttributeValueList': $9.AttributeValueList$json,
  '.kusinta.iot.device.v1.AttributeValueStruct': $9.AttributeValueStruct$json,
  '.kusinta.iot.device.v1.AttributeValueStruct.FieldsEntry':
      $9.AttributeValueStruct_FieldsEntry$json,
  '.kusinta.iot.device.v1.NullValue': $9.NullValue$json,
  '.kusinta.iot.vendor.homematic.v1.HmThermostatProps':
      $5.HmThermostatProps$json,
  '.kusinta.iot.vendor.homematic.v1.HmMaintenanceProps':
      $5.HmMaintenanceProps$json,
  '.kusinta.iot.link.v1.DeviceLink': $6.DeviceLink$json,
  '.kusinta.iot.device.v1.PropertyUpdateBatch': $10.PropertyUpdateBatch$json,
  '.kusinta.iot.device.v1.PropertyUpdate': $10.PropertyUpdate$json,
  '.kusinta.iot.connector.v1.DeviceAnnouncement': $0.DeviceAnnouncement$json,
  '.kusinta.iot.connector.v1.DeviceRemoval': $0.DeviceRemoval$json,
  '.kusinta.iot.connector.v1.ConnectorCommandResult':
      $0.ConnectorCommandResult$json,
  '.kusinta.iot.webrtc.v1.CommandError': $11.CommandError$json,
  '.kusinta.iot.connector.v1.HeartBeat': $0.HeartBeat$json,
  '.kusinta.iot.device.v1.DeviceEventBatch': $12.DeviceEventBatch$json,
  '.kusinta.iot.device.v1.DeviceEvent': $12.DeviceEvent$json,
  '.kusinta.iot.connector.v1.PairingModeResult': $0.PairingModeResult$json,
  '.kusinta.iot.common.v1.PairingErrorDetail': $13.PairingErrorDetail$json,
  '.kusinta.iot.connector.v1.PairingModeEnded': $0.PairingModeEnded$json,
  '.kusinta.iot.connector.v1.LinkResult': $0.LinkResult$json,
  '.kusinta.iot.connector.v1.LinksReported': $0.LinksReported$json,
  '.kusinta.iot.connector.v1.SessionResponse': $0.SessionResponse$json,
  '.kusinta.iot.connector.v1.HandshakeAck': $0.HandshakeAck$json,
  '.kusinta.iot.identity.v1.GatewayId': $2.GatewayId$json,
  '.kusinta.iot.connector.v1.SubscribeDevice': $0.SubscribeDevice$json,
  '.kusinta.iot.connector.v1.UnsubscribeDevice': $0.UnsubscribeDevice$json,
  '.kusinta.iot.connector.v1.GatewayError': $0.GatewayError$json,
  '.kusinta.iot.webrtc.v1.DeviceCommand': $11.DeviceCommand$json,
  '.kusinta.iot.webrtc.v1.ThermostatSetpointParams':
      $11.ThermostatSetpointParams$json,
  '.kusinta.iot.webrtc.v1.LevelControlParams': $11.LevelControlParams$json,
  '.kusinta.iot.webrtc.v1.OnOffParams': $11.OnOffParams$json,
  '.kusinta.iot.webrtc.v1.WindowCoveringLiftParams':
      $11.WindowCoveringLiftParams$json,
  '.kusinta.iot.webrtc.v1.DoorLockParams': $11.DoorLockParams$json,
  '.kusinta.iot.webrtc.v1.AttributeWriteRequest':
      $11.AttributeWriteRequest$json,
  '.kusinta.iot.connector.v1.EnterPairingMode': $0.EnterPairingMode$json,
  '.kusinta.iot.common.v1.PairingWindow': $13.PairingWindow$json,
  '.kusinta.iot.connector.v1.CreateLink': $0.CreateLink$json,
  '.kusinta.iot.connector.v1.RemoveLink': $0.RemoveLink$json,
  '.kusinta.iot.connector.v1.ListLinks': $0.ListLinks$json,
};

/// Descriptor for `ConnectorGatewayService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List connectorGatewayServiceDescriptor = $convert.base64Decode(
    'ChdDb25uZWN0b3JHYXRld2F5U2VydmljZRJiCgdTZXNzaW9uEigua3VzaW50YS5pb3QuY29ubm'
    'VjdG9yLnYxLlNlc3Npb25SZXF1ZXN0Gikua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLlNlc3Np'
    'b25SZXNwb25zZSgBMAE=');
