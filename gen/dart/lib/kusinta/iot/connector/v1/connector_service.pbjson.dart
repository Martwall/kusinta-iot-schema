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
import '../../common/v1/pairing.pbjson.dart' as $14;
import '../../common/v1/types.pbjson.dart' as $8;
import '../../device/v1/cluster_state.pbjson.dart' as $10;
import '../../device/v1/descriptor.pbjson.dart' as $4;
import '../../device/v1/device.pbjson.dart' as $3;
import '../../device/v1/device_event.pbjson.dart' as $13;
import '../../device/v1/properties.pbjson.dart' as $9;
import '../../device/v1/property_update.pbjson.dart' as $11;
import '../../identity/v1/identity.pbjson.dart' as $2;
import '../../link/v1/link.pbjson.dart' as $6;
import '../../vendor/homematic/v1/homematic.pbjson.dart' as $5;
import '../../webrtc/v1/command.pbjson.dart' as $12;
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
  '.kusinta.iot.common.v1.AssetOwner': $8.AssetOwner$json,
  '.kusinta.iot.device.v1.Endpoint': $3.Endpoint$json,
  '.kusinta.iot.device.v1.ThermostatProperties': $9.ThermostatProperties$json,
  '.kusinta.iot.device.v1.TemperatureSensorProperties':
      $9.TemperatureSensorProperties$json,
  '.kusinta.iot.device.v1.HumiditySensorProperties':
      $9.HumiditySensorProperties$json,
  '.kusinta.iot.device.v1.OccupancySensorProperties':
      $9.OccupancySensorProperties$json,
  '.kusinta.iot.device.v1.ContactSensorProperties':
      $9.ContactSensorProperties$json,
  '.kusinta.iot.device.v1.WindowCoveringProperties':
      $9.WindowCoveringProperties$json,
  '.kusinta.iot.device.v1.DoorLockProperties': $9.DoorLockProperties$json,
  '.kusinta.iot.device.v1.OnOffLightProperties': $9.OnOffLightProperties$json,
  '.kusinta.iot.device.v1.DimmableLightProperties':
      $9.DimmableLightProperties$json,
  '.kusinta.iot.device.v1.ColorTemperatureLightProperties':
      $9.ColorTemperatureLightProperties$json,
  '.kusinta.iot.device.v1.EnergySensorProperties':
      $9.EnergySensorProperties$json,
  '.kusinta.iot.device.v1.PressureSensorProperties':
      $9.PressureSensorProperties$json,
  '.kusinta.iot.device.v1.PowerSourceProperties': $9.PowerSourceProperties$json,
  '.kusinta.iot.device.v1.ClusterState': $10.ClusterState$json,
  '.kusinta.iot.device.v1.AttributeState': $10.AttributeState$json,
  '.kusinta.iot.device.v1.AttributeValue': $10.AttributeValue$json,
  '.kusinta.iot.device.v1.AttributeValueList': $10.AttributeValueList$json,
  '.kusinta.iot.device.v1.AttributeValueStruct': $10.AttributeValueStruct$json,
  '.kusinta.iot.device.v1.AttributeValueStruct.FieldsEntry':
      $10.AttributeValueStruct_FieldsEntry$json,
  '.kusinta.iot.device.v1.NullValue': $10.NullValue$json,
  '.kusinta.iot.device.v1.ClusterState.AttributeStepsEntry':
      $10.ClusterState_AttributeStepsEntry$json,
  '.kusinta.iot.device.v1.ClusterState.AttributeBehavioursEntry':
      $10.ClusterState_AttributeBehavioursEntry$json,
  '.kusinta.iot.device.v1.AttributeBehaviour': $10.AttributeBehaviour$json,
  '.kusinta.iot.device.v1.StickyWrite': $10.StickyWrite$json,
  '.kusinta.iot.device.v1.LeasedWrite': $10.LeasedWrite$json,
  '.kusinta.iot.device.v1.Endpoint.VendorAttributeBehavioursEntry':
      $3.Endpoint_VendorAttributeBehavioursEntry$json,
  '.kusinta.iot.vendor.homematic.v1.HmThermostatProps':
      $5.HmThermostatProps$json,
  '.kusinta.iot.vendor.homematic.v1.HmMaintenanceProps':
      $5.HmMaintenanceProps$json,
  '.kusinta.iot.device.v1.RadioLink': $3.RadioLink$json,
  '.kusinta.iot.link.v1.DeviceLink': $6.DeviceLink$json,
  '.kusinta.iot.link.v1.LinkSettings': $6.LinkSettings$json,
  '.kusinta.iot.link.v1.ClimateLeadSettings': $6.ClimateLeadSettings$json,
  '.kusinta.iot.connector.v1.BackendHealthReport': $0.BackendHealthReport$json,
  '.kusinta.iot.common.v1.BackendHealth': $8.BackendHealth$json,
  '.kusinta.iot.device.v1.PropertyUpdateBatch': $11.PropertyUpdateBatch$json,
  '.kusinta.iot.device.v1.PropertyUpdate': $11.PropertyUpdate$json,
  '.kusinta.iot.connector.v1.DeviceAnnouncement': $0.DeviceAnnouncement$json,
  '.kusinta.iot.connector.v1.DeviceRemoval': $0.DeviceRemoval$json,
  '.kusinta.iot.connector.v1.ConnectorCommandResult':
      $0.ConnectorCommandResult$json,
  '.kusinta.iot.webrtc.v1.CommandError': $12.CommandError$json,
  '.kusinta.iot.webrtc.v1.CommandError.MetadataEntry':
      $12.CommandError_MetadataEntry$json,
  '.kusinta.iot.connector.v1.HeartBeat': $0.HeartBeat$json,
  '.kusinta.iot.device.v1.DeviceEventBatch': $13.DeviceEventBatch$json,
  '.kusinta.iot.device.v1.DeviceEvent': $13.DeviceEvent$json,
  '.kusinta.iot.connector.v1.PairingModeResult': $0.PairingModeResult$json,
  '.kusinta.iot.common.v1.PairingErrorDetail': $14.PairingErrorDetail$json,
  '.kusinta.iot.connector.v1.PairingModeEnded': $0.PairingModeEnded$json,
  '.kusinta.iot.connector.v1.LinkResult': $0.LinkResult$json,
  '.kusinta.iot.connector.v1.LinksReported': $0.LinksReported$json,
  '.kusinta.iot.connector.v1.ReinitializeBackendResult':
      $0.ReinitializeBackendResult$json,
  '.kusinta.iot.connector.v1.SessionResponse': $0.SessionResponse$json,
  '.kusinta.iot.connector.v1.HandshakeAck': $0.HandshakeAck$json,
  '.kusinta.iot.identity.v1.GatewayId': $2.GatewayId$json,
  '.kusinta.iot.connector.v1.SubscribeDevice': $0.SubscribeDevice$json,
  '.kusinta.iot.connector.v1.UnsubscribeDevice': $0.UnsubscribeDevice$json,
  '.kusinta.iot.connector.v1.GatewayError': $0.GatewayError$json,
  '.kusinta.iot.webrtc.v1.DeviceCommand': $12.DeviceCommand$json,
  '.kusinta.iot.webrtc.v1.ThermostatSetpointParams':
      $12.ThermostatSetpointParams$json,
  '.kusinta.iot.webrtc.v1.LevelControlParams': $12.LevelControlParams$json,
  '.kusinta.iot.webrtc.v1.OnOffParams': $12.OnOffParams$json,
  '.kusinta.iot.webrtc.v1.WindowCoveringLiftParams':
      $12.WindowCoveringLiftParams$json,
  '.kusinta.iot.webrtc.v1.DoorLockParams': $12.DoorLockParams$json,
  '.kusinta.iot.webrtc.v1.AttributeWriteRequest':
      $12.AttributeWriteRequest$json,
  '.kusinta.iot.connector.v1.EnterPairingMode': $0.EnterPairingMode$json,
  '.kusinta.iot.common.v1.PairingWindow': $14.PairingWindow$json,
  '.kusinta.iot.connector.v1.CreateLink': $0.CreateLink$json,
  '.kusinta.iot.connector.v1.RemoveLink': $0.RemoveLink$json,
  '.kusinta.iot.connector.v1.ListLinks': $0.ListLinks$json,
  '.kusinta.iot.connector.v1.ReinitializeBackend': $0.ReinitializeBackend$json,
};

/// Descriptor for `ConnectorGatewayService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List connectorGatewayServiceDescriptor = $convert.base64Decode(
    'ChdDb25uZWN0b3JHYXRld2F5U2VydmljZRJiCgdTZXNzaW9uEigua3VzaW50YS5pb3QuY29ubm'
    'VjdG9yLnYxLlNlc3Npb25SZXF1ZXN0Gikua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLlNlc3Np'
    'b25SZXNwb25zZSgBMAE=');
