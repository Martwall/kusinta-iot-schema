import { describe, it, expect } from 'vitest'
import {
  ConnectorToGatewayMessage,
  GatewayToConnectorMessage,
  ConnectorHandshake,
  HandshakeAck,
  DeviceAnnouncement,
  DeviceRemoval,
  ConnectorInfo,
  HeartBeat,
} from '../connector/connector.js'
import { ConnectorTransport } from '../common/types.js'

describe('ConnectorHandshake', () => {
  it('round-trips with known_devices', () => {
    const h: ConnectorHandshake = {
      info: {
        connectorId: { value: 'homematic-ccu3' },
        displayName: 'HomeMatic CCU3',
        version: '1.0.0',
        transport: ConnectorTransport.UNIX_SOCKET,
        endpoint: '/run/kusinta/connectors/homematic.sock',
        supportedDeviceTypeIds: [0x0301, 0x0302],
      },
      knownDevices: [
        { deviceId: { value: 'dev-1' }, matterDeviceTypeId: 0x0301 },
      ],
    }
    const decoded = ConnectorHandshake.decode(ConnectorHandshake.encode(h).finish())
    expect(decoded.info?.connectorId?.value).toBe('homematic-ccu3')
    expect(decoded.info?.displayName).toBe('HomeMatic CCU3')
    expect(decoded.info?.transport).toBe(ConnectorTransport.UNIX_SOCKET)
    expect(decoded.info?.supportedDeviceTypeIds).toEqual([0x0301, 0x0302])
    expect(decoded.knownDevices).toHaveLength(1)
    expect(decoded.knownDevices[0].deviceId?.value).toBe('dev-1')
  })
})

describe('HandshakeAck', () => {
  it('round-trips accepted ack', () => {
    const ack: HandshakeAck = {
      accepted: true,
      reason: '',
      gatewayId: { value: 'gw-abc' },
    }
    const decoded = HandshakeAck.decode(HandshakeAck.encode(ack).finish())
    expect(decoded.accepted).toBe(true)
    expect(decoded.gatewayId?.value).toBe('gw-abc')
  })

  it('round-trips rejected ack with reason', () => {
    const ack: HandshakeAck = {
      accepted: false,
      reason: 'Unknown connector ID',
    }
    const decoded = HandshakeAck.decode(HandshakeAck.encode(ack).finish())
    expect(decoded.accepted).toBe(false)
    expect(decoded.reason).toBe('Unknown connector ID')
  })
})

describe('DeviceAnnouncement', () => {
  it('round-trips descriptor', () => {
    const ann: DeviceAnnouncement = {
      descriptor: {
        deviceId: { value: 'dev-new-1' },
        matterDeviceTypeId: 0x0307,
        vendorName: 'eQ-3',
        productName: 'HmIP-STH',
      },
    }
    const decoded = DeviceAnnouncement.decode(DeviceAnnouncement.encode(ann).finish())
    expect(decoded.descriptor?.deviceId?.value).toBe('dev-new-1')
    expect(decoded.descriptor?.matterDeviceTypeId).toBe(0x0307)
  })
})

describe('DeviceRemoval', () => {
  it('round-trips device_id and reason', () => {
    const rem: DeviceRemoval = {
      deviceId: { value: 'dev-1' },
      reason: 'Device unpaired from CCU3',
    }
    const decoded = DeviceRemoval.decode(DeviceRemoval.encode(rem).finish())
    expect(decoded.deviceId?.value).toBe('dev-1')
    expect(decoded.reason).toBe('Device unpaired from CCU3')
  })
})

describe('ConnectorToGatewayMessage oneof payload', () => {
  it('round-trips handshake payload', () => {
    const msg: ConnectorToGatewayMessage = {
      messageId: 'msg-001',
      payload: {
        $case: 'handshake',
        handshake: {
          info: {
            connectorId: { value: 'conn-1' },
            displayName: 'Test Connector',
            version: '0.1.0',
            transport: ConnectorTransport.UNIX_SOCKET,
            endpoint: '/run/test.sock',
          },
          knownDevices: [],
        },
      },
    }
    const decoded = ConnectorToGatewayMessage.decode(ConnectorToGatewayMessage.encode(msg).finish())
    expect(decoded.messageId).toBe('msg-001')
    expect(decoded.payload?.$case).toBe('handshake')
    if (decoded.payload?.$case === 'handshake') {
      expect(decoded.payload.handshake.info?.connectorId?.value).toBe('conn-1')
    }
  })

  it('round-trips property_update payload', () => {
    const msg: ConnectorToGatewayMessage = {
      messageId: 'msg-002',
      payload: {
        $case: 'propertyUpdate',
        propertyUpdate: {
          updates: [
            {
              deviceId: { value: 'dev-1' },
              attributeName: 'OccupiedHeatingSetpoint',
              value: { $case: 'intValue', intValue: 2150 },
              clusterIdHex: '0201',
            },
          ],
        },
      },
    }
    const decoded = ConnectorToGatewayMessage.decode(ConnectorToGatewayMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('propertyUpdate')
    if (decoded.payload?.$case === 'propertyUpdate') {
      expect(decoded.payload.propertyUpdate.updates).toHaveLength(1)
      expect(decoded.payload.propertyUpdate.updates[0].attributeName).toBe('OccupiedHeatingSetpoint')
    }
  })

  it('round-trips heartbeat payload', () => {
    const msg: ConnectorToGatewayMessage = {
      messageId: 'msg-hb-1',
      payload: { $case: 'heartbeat', heartbeat: {} },
    }
    const decoded = ConnectorToGatewayMessage.decode(ConnectorToGatewayMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('heartbeat')
  })
})

describe('GatewayToConnectorMessage oneof payload', () => {
  it('round-trips handshake_ack payload', () => {
    const msg: GatewayToConnectorMessage = {
      messageId: 'gw-msg-001',
      payload: {
        $case: 'handshakeAck',
        handshakeAck: { accepted: true, gatewayId: { value: 'gw-1' } },
      },
    }
    const decoded = GatewayToConnectorMessage.decode(GatewayToConnectorMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('handshakeAck')
    if (decoded.payload?.$case === 'handshakeAck') {
      expect(decoded.payload.handshakeAck.accepted).toBe(true)
    }
  })
})
