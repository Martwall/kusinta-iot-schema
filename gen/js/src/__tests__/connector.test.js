// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  SessionRequestSchema,
  SessionResponseSchema,
  ConnectorHandshakeSchema,
  HandshakeAckSchema,
  DeviceAnnouncementSchema,
  DeviceRemovalSchema,
} from '../kusinta/iot/connector/v1/connector_pb.js'
import { ConnectorTransport } from '../kusinta/iot/common/v1/types_pb.js'
import {
  DeviceCommandSchema,
  CommandErrorCode,
  CommandResultSchema,
} from '../kusinta/iot/webrtc/v1/command_pb.js'
import { ConnectorCommandResultSchema } from '../kusinta/iot/connector/v1/connector_pb.js'

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
      knownDevices: [
        {
          descriptor: { deviceId: { value: 'dev-1' } },
          endpoints: [{ endpointId: 1, matterDeviceTypeId: 0x0301 }],
        },
      ],
    })
    const decoded = fromBinary(ConnectorHandshakeSchema, toBinary(ConnectorHandshakeSchema, h))
    expect(decoded.info?.connectorId?.value).toBe('homematic-ccu3')
    expect(decoded.info?.displayName).toBe('HomeMatic CCU3')
    expect(decoded.info?.transport).toBe(ConnectorTransport.UNIX_SOCKET)
    expect(decoded.info?.supportedDeviceTypeIds).toEqual([0x0301, 0x0302])
    expect(decoded.knownDevices).toHaveLength(1)
    expect(decoded.knownDevices[0].descriptor?.deviceId?.value).toBe('dev-1')
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
  it('round-trips a device with its endpoints', () => {
    const ann = create(DeviceAnnouncementSchema, {
      device: {
        descriptor: { deviceId: { value: 'dev-new-1' }, vendorName: 'eQ-3', productName: 'HmIP-STH' },
        endpoints: [{ endpointId: 1, matterDeviceTypeId: 0x0307 }],
      },
    })
    const decoded = fromBinary(DeviceAnnouncementSchema, toBinary(DeviceAnnouncementSchema, ann))
    expect(decoded.device?.descriptor?.deviceId?.value).toBe('dev-new-1')
    expect(decoded.device?.endpoints[0].matterDeviceTypeId).toBe(0x0307)
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

describe('SessionRequest oneof payload', () => {
  it('round-trips handshake payload', () => {
    const msg = create(SessionRequestSchema, {
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
    const decoded = fromBinary(SessionRequestSchema, toBinary(SessionRequestSchema, msg))
    expect(decoded.messageId).toBe('msg-001')
    expect(decoded.payload?.case).toBe('handshake')
    if (decoded.payload?.case === 'handshake') {
      expect(decoded.payload.value.info?.connectorId?.value).toBe('conn-1')
    }
  })

  it('round-trips property_update payload', () => {
    const msg = create(SessionRequestSchema, {
      messageId: 'msg-002',
      payload: {
        case: 'propertyUpdate',
        value: {
          updates: [{
            deviceId: { value: 'dev-1' },
            attributeName: 'OccupiedHeatingSetpoint',
            value: { case: 'intValue', value: 2150 },
            clusterId: 0x0201,
          }],
        },
      },
    })
    const decoded = fromBinary(SessionRequestSchema, toBinary(SessionRequestSchema, msg))
    expect(decoded.payload?.case).toBe('propertyUpdate')
    if (decoded.payload?.case === 'propertyUpdate') {
      expect(decoded.payload.value.updates).toHaveLength(1)
      expect(decoded.payload.value.updates[0].attributeName).toBe('OccupiedHeatingSetpoint')
    }
  })

  it('round-trips heartbeat payload', () => {
    const msg = create(SessionRequestSchema, {
      messageId: 'msg-hb-1',
      payload: { case: 'heartbeat', value: {} },
    })
    const decoded = fromBinary(SessionRequestSchema, toBinary(SessionRequestSchema, msg))
    expect(decoded.payload?.case).toBe('heartbeat')
  })
})

describe('SessionResponse oneof payload', () => {
  it('round-trips handshake_ack payload', () => {
    const msg = create(SessionResponseSchema, {
      messageId: 'gw-msg-001',
      payload: { case: 'handshakeAck', value: { accepted: true, gatewayId: { value: 'gw-1' } } },
    })
    const decoded = fromBinary(SessionResponseSchema, toBinary(SessionResponseSchema, msg))
    expect(decoded.payload?.case).toBe('handshakeAck')
    if (decoded.payload?.case === 'handshakeAck') {
      expect(decoded.payload.value.accepted).toBe(true)
    }
  })

  it('round-trips execute_command payload', () => {
    const msg = create(SessionResponseSchema, {
      messageId: 'gw-cmd-001',
      payload: {
        case: 'executeCommand',
        value: {
          requestId: 'cmd-uuid-1',
          deviceId: { value: 'light-1' },
          clusterId: 0x0006,
          commandName: 'Toggle',
          parameters: { case: 'onOff', value: { toggle: true } },
        },
      },
    })
    const decoded = fromBinary(SessionResponseSchema, toBinary(SessionResponseSchema, msg))
    expect(decoded.payload?.case).toBe('executeCommand')
    if (decoded.payload?.case === 'executeCommand') {
      expect(decoded.payload.value.requestId).toBe('cmd-uuid-1')
      expect(decoded.payload.value.deviceId?.value).toBe('light-1')
    }
  })
})

describe('ConnectorCommandResult', () => {
  it('reports a refusal in the same closed vocabulary the app is given', () => {
    const result = create(ConnectorCommandResultSchema, {
      requestId: 'cmd-1',
      success: false,
      error: { code: CommandErrorCode.REJECTED_BY_DEVICE, message: 'device refused the mode' },
    })
    const decoded = fromBinary(ConnectorCommandResultSchema, toBinary(ConnectorCommandResultSchema, result))
    expect(decoded.error?.code).toBe(CommandErrorCode.REJECTED_BY_DEVICE)
  })

  // Both legs name the same type, so the gateway forwards the error rather than mapping a
  // string it has to keep a table for.
  it('carries an error the gateway can forward to the app leg unchanged', () => {
    const fromConnector = create(ConnectorCommandResultSchema, {
      requestId: 'cmd-1',
      success: false,
      error: { code: CommandErrorCode.UNREACHABLE, message: 'device asleep' },
    })
    const toApp = create(CommandResultSchema, {
      requestId: fromConnector.requestId,
      success: false,
      error: fromConnector.error,
    })
    const decoded = fromBinary(CommandResultSchema, toBinary(CommandResultSchema, toApp))
    expect(decoded.error?.code).toBe(CommandErrorCode.UNREACHABLE)
  })

  it('states no settle window by default', () => {
    const result = create(ConnectorCommandResultSchema, { requestId: 'cmd-1', success: true })
    const decoded = fromBinary(ConnectorCommandResultSchema, toBinary(ConnectorCommandResultSchema, result))
    expect(decoded.settlesBy).toBeUndefined()
  })

  it('round-trips a settle window the connector knows and the gateway does not', () => {
    const result = create(ConnectorCommandResultSchema, {
      requestId: 'cmd-1',
      success: true,
      settlesBy: { seconds: 1700000000n, nanos: 0 },
    })
    const decoded = fromBinary(ConnectorCommandResultSchema, toBinary(ConnectorCommandResultSchema, result))
    expect(decoded.settlesBy?.seconds).toBe(1700000000n)
  })
})
