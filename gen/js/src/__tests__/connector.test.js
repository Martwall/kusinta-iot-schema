// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  ConnectRequestSchema,
  ConnectResponseSchema,
  ConnectorHandshakeSchema,
  HandshakeAckSchema,
  DeviceAnnouncementSchema,
  DeviceRemovalSchema,
} from '../kusinta/iot/connector/v1/connector_pb.js'
import { ConnectorTransport } from '../kusinta/iot/common/v1/types_pb.js'

describe('ConnectorHandshake', () => {
  it('round-trips with known_devices', () => {
    const h = create(ConnectorHandshakeSchema, {
      info: {
        connectorId: { value: 'homematic-ccu3' },
        displayName: 'HomeMatic CCU3',
        version: '1.0.0',
        transport: ConnectorTransport.UNIX_SOCKET,
        endpoint: '/run/kusinta/connectors/homematic.sock',
        supportedDeviceTypeIds: [0x0301, 0x0302],
      },
      knownDevices: [{ deviceId: { value: 'dev-1' }, matterDeviceTypeId: 0x0301 }],
    })
    const decoded = fromBinary(ConnectorHandshakeSchema, toBinary(ConnectorHandshakeSchema, h))
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
    const ack = create(HandshakeAckSchema, { accepted: true, reason: '', gatewayId: { value: 'gw-abc' } })
    const decoded = fromBinary(HandshakeAckSchema, toBinary(HandshakeAckSchema, ack))
    expect(decoded.accepted).toBe(true)
    expect(decoded.gatewayId?.value).toBe('gw-abc')
  })

  it('round-trips rejected ack with reason', () => {
    const ack = create(HandshakeAckSchema, { accepted: false, reason: 'Unknown connector ID' })
    const decoded = fromBinary(HandshakeAckSchema, toBinary(HandshakeAckSchema, ack))
    expect(decoded.accepted).toBe(false)
    expect(decoded.reason).toBe('Unknown connector ID')
  })
})

describe('DeviceAnnouncement', () => {
  it('round-trips descriptor', () => {
    const ann = create(DeviceAnnouncementSchema, {
      descriptor: { deviceId: { value: 'dev-new-1' }, matterDeviceTypeId: 0x0307, vendorName: 'eQ-3', productName: 'HmIP-STH' },
    })
    const decoded = fromBinary(DeviceAnnouncementSchema, toBinary(DeviceAnnouncementSchema, ann))
    expect(decoded.descriptor?.deviceId?.value).toBe('dev-new-1')
    expect(decoded.descriptor?.matterDeviceTypeId).toBe(0x0307)
  })
})

describe('DeviceRemoval', () => {
  it('round-trips device_id and reason', () => {
    const rem = create(DeviceRemovalSchema, { deviceId: { value: 'dev-1' }, reason: 'Device unpaired from CCU3' })
    const decoded = fromBinary(DeviceRemovalSchema, toBinary(DeviceRemovalSchema, rem))
    expect(decoded.deviceId?.value).toBe('dev-1')
    expect(decoded.reason).toBe('Device unpaired from CCU3')
  })
})

describe('ConnectRequest oneof payload', () => {
  it('round-trips handshake payload', () => {
    const msg = create(ConnectRequestSchema, {
      messageId: 'msg-001',
      payload: {
        case: 'handshake',
        value: {
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
    })
    const decoded = fromBinary(ConnectRequestSchema, toBinary(ConnectRequestSchema, msg))
    expect(decoded.messageId).toBe('msg-001')
    expect(decoded.payload?.case).toBe('handshake')
    if (decoded.payload?.case === 'handshake') {
      expect(decoded.payload.value.info?.connectorId?.value).toBe('conn-1')
    }
  })

  it('round-trips property_update payload', () => {
    const msg = create(ConnectRequestSchema, {
      messageId: 'msg-002',
      payload: {
        case: 'propertyUpdate',
        value: {
          updates: [{
            deviceId: { value: 'dev-1' },
            attributeName: 'OccupiedHeatingSetpoint',
            value: { case: 'intValue', value: 2150 },
            clusterIdHex: '0201',
          }],
        },
      },
    })
    const decoded = fromBinary(ConnectRequestSchema, toBinary(ConnectRequestSchema, msg))
    expect(decoded.payload?.case).toBe('propertyUpdate')
    if (decoded.payload?.case === 'propertyUpdate') {
      expect(decoded.payload.value.updates).toHaveLength(1)
      expect(decoded.payload.value.updates[0].attributeName).toBe('OccupiedHeatingSetpoint')
    }
  })

  it('round-trips heartbeat payload', () => {
    const msg = create(ConnectRequestSchema, {
      messageId: 'msg-hb-1',
      payload: { case: 'heartbeat', value: {} },
    })
    const decoded = fromBinary(ConnectRequestSchema, toBinary(ConnectRequestSchema, msg))
    expect(decoded.payload?.case).toBe('heartbeat')
  })
})

describe('ConnectResponse oneof payload', () => {
  it('round-trips handshake_ack payload', () => {
    const msg = create(ConnectResponseSchema, {
      messageId: 'gw-msg-001',
      payload: { case: 'handshakeAck', value: { accepted: true, gatewayId: { value: 'gw-1' } } },
    })
    const decoded = fromBinary(ConnectResponseSchema, toBinary(ConnectResponseSchema, msg))
    expect(decoded.payload?.case).toBe('handshakeAck')
    if (decoded.payload?.case === 'handshakeAck') {
      expect(decoded.payload.value.accepted).toBe(true)
    }
  })
})
