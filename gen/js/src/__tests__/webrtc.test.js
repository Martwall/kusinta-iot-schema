// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  GatewayMessageSchema,
  AppMessageSchema,
  AppHandshakeSchema,
  HandshakeRejectedSchema,
  GatewayErrorSchema,
  GatewayErrorCode,
  SubscribeDevicesSchema,
  UnsubscribeDevicesSchema,
  SubscriptionAckSchema,
} from '../kusinta/iot/webrtc/v1/envelope_pb.js'
import { DeviceCommandSchema, CommandResultSchema } from '../kusinta/iot/webrtc/v1/command_pb.js'
import {
  DeviceStateSnapshotSchema,
  DevicePropertyEventSchema,
  DeviceAddedSchema,
  DeviceRemovedSchema,
} from '../kusinta/iot/webrtc/v1/device_state_pb.js'
import { LivePermissionUpdateSchema } from '../kusinta/iot/webrtc/v1/permission_push_pb.js'

describe('AppHandshake', () => {
  it('round-trips jwt and subscribe_device_ids', () => {
    const h = create(AppHandshakeSchema, {
      jwt: 'eyJhbGciOiJSUzI1NiJ9.test.sig',
      subscribeDeviceIds: [{ value: 'dev-1' }, { value: 'dev-2' }],
    })
    const decoded = fromBinary(AppHandshakeSchema, toBinary(AppHandshakeSchema, h))
    expect(decoded.jwt).toBe('eyJhbGciOiJSUzI1NiJ9.test.sig')
    expect(decoded.subscribeDeviceIds).toHaveLength(2)
    expect(decoded.subscribeDeviceIds[0].value).toBe('dev-1')
  })
})

describe('DeviceCommand', () => {
  it('round-trips thermostat setpoint command', () => {
    const cmd = create(DeviceCommandSchema, {
      commandId: 'cmd-uuid-1',
      deviceId: { value: 'therm-1' },
      clusterIdHex: '0201',
      commandName: 'SetpointRaiseLower',
      parameters: { case: 'thermostatSetpoint', value: { mode: 4, amount: 50 } },
    })
    const decoded = fromBinary(DeviceCommandSchema, toBinary(DeviceCommandSchema, cmd))
    expect(decoded.commandId).toBe('cmd-uuid-1')
    expect(decoded.deviceId?.value).toBe('therm-1')
    expect(decoded.commandName).toBe('SetpointRaiseLower')
    expect(decoded.parameters?.case).toBe('thermostatSetpoint')
    if (decoded.parameters?.case === 'thermostatSetpoint') {
      expect(decoded.parameters.value.mode).toBe(4)
      expect(decoded.parameters.value.amount).toBe(50)
    }
  })

  it('round-trips on/off command', () => {
    const cmd = create(DeviceCommandSchema, {
      commandId: 'cmd-uuid-2',
      deviceId: { value: 'light-1' },
      clusterIdHex: '0006',
      commandName: 'Toggle',
      parameters: { case: 'onOff', value: { toggle: true } },
    })
    const decoded = fromBinary(DeviceCommandSchema, toBinary(DeviceCommandSchema, cmd))
    expect(decoded.parameters?.case).toBe('onOff')
    if (decoded.parameters?.case === 'onOff') {
      expect(decoded.parameters.value.toggle).toBe(true)
    }
  })

  it('round-trips level control command', () => {
    const cmd = create(DeviceCommandSchema, {
      commandId: 'cmd-uuid-3',
      deviceId: { value: 'light-2' },
      clusterIdHex: '0008',
      commandName: 'MoveToLevel',
      parameters: { case: 'levelControl', value: { level: 127, transitionTime: 10 } },
    })
    const decoded = fromBinary(DeviceCommandSchema, toBinary(DeviceCommandSchema, cmd))
    expect(decoded.parameters?.case).toBe('levelControl')
    if (decoded.parameters?.case === 'levelControl') {
      expect(decoded.parameters.value.level).toBe(127)
      expect(decoded.parameters.value.transitionTime).toBe(10)
    }
  })

  it('round-trips window covering lift command', () => {
    const cmd = create(DeviceCommandSchema, {
      commandId: 'cmd-uuid-4',
      deviceId: { value: 'blind-1' },
      clusterIdHex: '0102',
      commandName: 'GoToLiftPercentage',
      parameters: { case: 'windowCoveringLift', value: { liftPercent100ths: 5000 } },
    })
    const decoded = fromBinary(DeviceCommandSchema, toBinary(DeviceCommandSchema, cmd))
    expect(decoded.parameters?.case).toBe('windowCoveringLift')
    if (decoded.parameters?.case === 'windowCoveringLift') {
      expect(decoded.parameters.value.liftPercent100ths).toBe(5000)
    }
  })

  it('round-trips door lock command', () => {
    const cmd = create(DeviceCommandSchema, {
      commandId: 'cmd-uuid-5',
      deviceId: { value: 'lock-1' },
      clusterIdHex: '0101',
      commandName: 'LockDoor',
      parameters: { case: 'doorLock', value: { lockState: 1 } },
    })
    const decoded = fromBinary(DeviceCommandSchema, toBinary(DeviceCommandSchema, cmd))
    expect(decoded.parameters?.case).toBe('doorLock')
    if (decoded.parameters?.case === 'doorLock') {
      expect(decoded.parameters.value.lockState).toBe(1)
    }
  })
})

describe('CommandResult', () => {
  it('round-trips successful result', () => {
    const result = create(CommandResultSchema, { commandId: 'cmd-uuid-1', success: true })
    const decoded = fromBinary(CommandResultSchema, toBinary(CommandResultSchema, result))
    expect(decoded.commandId).toBe('cmd-uuid-1')
    expect(decoded.success).toBe(true)
  })

  it('round-trips failed result with error', () => {
    const result = create(CommandResultSchema, {
      commandId: 'cmd-uuid-2',
      success: false,
      error: { code: 'PERMISSION_DENIED', message: 'Setpoint exceeds property-owner limit' },
    })
    const decoded = fromBinary(CommandResultSchema, toBinary(CommandResultSchema, result))
    expect(decoded.success).toBe(false)
    expect(decoded.error?.code).toBe('PERMISSION_DENIED')
  })
})

describe('DeviceStateSnapshot', () => {
  it('round-trips with devices and permissions', () => {
    const snap = create(DeviceStateSnapshotSchema, {
      devices: [{
        descriptor: { deviceId: { value: 'therm-1' }, matterDeviceTypeId: 0x0301 },
        properties: { case: 'thermostat', value: { occupiedHeatingSetpoint: 2100 } },
      }],
      permissions: { userId: { value: 'user-1' }, gatewayId: { value: 'gw-1' }, deviceAcls: [] },
    })
    const decoded = fromBinary(DeviceStateSnapshotSchema, toBinary(DeviceStateSnapshotSchema, snap))
    expect(decoded.devices).toHaveLength(1)
    expect(decoded.devices[0].descriptor?.deviceId?.value).toBe('therm-1')
    expect(decoded.permissions?.userId?.value).toBe('user-1')
  })
})

describe('DevicePropertyEvent', () => {
  it('round-trips a property update event', () => {
    const event = create(DevicePropertyEventSchema, {
      update: {
        deviceId: { value: 'therm-1' },
        attributeName: 'LocalTemperature',
        value: { case: 'intValue', value: 2050 },
        clusterIdHex: '0402',
      },
    })
    const decoded = fromBinary(DevicePropertyEventSchema, toBinary(DevicePropertyEventSchema, event))
    expect(decoded.update?.attributeName).toBe('LocalTemperature')
    expect(decoded.update?.value?.case).toBe('intValue')
  })
})

describe('LivePermissionUpdate', () => {
  it('round-trips added and removed devices', () => {
    const update = create(LivePermissionUpdateSchema, {
      newPermissions: { userId: { value: 'user-1' }, gatewayId: { value: 'gw-1' }, deviceAcls: [] },
      addedDevices: [{ value: 'dev-new-1' }],
      removedDevices: [{ value: 'dev-old-1' }],
      changeReason: 'DEVICE_ASSIGNED',
    })
    const decoded = fromBinary(LivePermissionUpdateSchema, toBinary(LivePermissionUpdateSchema, update))
    expect(decoded.addedDevices).toHaveLength(1)
    expect(decoded.addedDevices[0].value).toBe('dev-new-1')
    expect(decoded.removedDevices).toHaveLength(1)
    expect(decoded.changeReason).toBe('DEVICE_ASSIGNED')
  })
})

describe('GatewayMessage oneof payload', () => {
  it('round-trips state_snapshot payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-001',
      payload: {
        case: 'stateSnapshot',
        value: {
          devices: [],
          permissions: { userId: { value: 'user-1' }, gatewayId: { value: 'gw-1' }, deviceAcls: [] },
        },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.messageId).toBe('gw-msg-001')
    expect(decoded.payload?.case).toBe('stateSnapshot')
  })

  it('round-trips property_event payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-002',
      payload: {
        case: 'propertyEvent',
        value: {
          update: {
            deviceId: { value: 'therm-1' },
            attributeName: 'OccupiedHeatingSetpoint',
            value: { case: 'intValue', value: 2100 },
            clusterIdHex: '0201',
          },
        },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('propertyEvent')
    if (decoded.payload?.case === 'propertyEvent') {
      expect(decoded.payload.value.update?.attributeName).toBe('OccupiedHeatingSetpoint')
    }
  })

  it('round-trips pong payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-003',
      payload: { case: 'pong', value: {} },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('pong')
  })

  it('round-trips handshake_rejected payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-reject-1',
      payload: { case: 'handshakeRejected', value: { reason: 'JWT signature invalid' } },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('handshakeRejected')
    if (decoded.payload?.case === 'handshakeRejected') {
      expect(decoded.payload.value.reason).toBe('JWT signature invalid')
    }
  })

  it('round-trips device_added payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-added-1',
      payload: {
        case: 'deviceAdded',
        value: {
          device: {
            descriptor: { deviceId: { value: 'hm:ABC123' }, matterDeviceTypeId: 0x0301 },
          },
        },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('deviceAdded')
    if (decoded.payload?.case === 'deviceAdded') {
      expect(decoded.payload.value.device?.descriptor?.deviceId?.value).toBe('hm:ABC123')
    }
  })

  it('round-trips device_removed payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-removed-1',
      payload: {
        case: 'deviceRemoved',
        value: { deviceId: { value: 'hm:ABC123' }, reason: 'unpaired at the CCU' },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('deviceRemoved')
    if (decoded.payload?.case === 'deviceRemoved') {
      expect(decoded.payload.value.deviceId?.value).toBe('hm:ABC123')
    }
  })

  it('round-trips subscription_ack payload', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-ack-1',
      payload: {
        case: 'subscriptionAck',
        value: { inReplyTo: 'app-msg-sub-1', subscribed: [{ value: 'therm-1' }] },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('subscriptionAck')
    if (decoded.payload?.case === 'subscriptionAck') {
      expect(decoded.payload.value.inReplyTo).toBe('app-msg-sub-1')
    }
  })
})

describe('GatewayError', () => {
  it('defaults code to UNSPECIFIED when the sender omits it', () => {
    const err = create(GatewayErrorSchema, { message: 'something went wrong' })
    const decoded = fromBinary(GatewayErrorSchema, toBinary(GatewayErrorSchema, err))
    expect(decoded.code).toBe(GatewayErrorCode.UNSPECIFIED)
  })

  it('round-trips a permanent refusal code', () => {
    const err = create(GatewayErrorSchema, {
      code: GatewayErrorCode.NOT_ENTITLED,
      message: 'user has no access to device therm-1',
    })
    const decoded = fromBinary(GatewayErrorSchema, toBinary(GatewayErrorSchema, err))
    expect(decoded.code).toBe(GatewayErrorCode.NOT_ENTITLED)
    expect(decoded.message).toBe('user has no access to device therm-1')
  })

  it('round-trips metadata entries', () => {
    const err = create(GatewayErrorSchema, {
      code: GatewayErrorCode.NOT_ENTITLED,
      metadata: { device_id: 'therm-1' },
    })
    const decoded = fromBinary(GatewayErrorSchema, toBinary(GatewayErrorSchema, err))
    expect(decoded.metadata.device_id).toBe('therm-1')
  })
})

describe('GatewayMessage error payload', () => {
  it('round-trips error payload with a machine-readable code', () => {
    const msg = create(GatewayMessageSchema, {
      messageId: 'gw-msg-err-1',
      payload: {
        case: 'error',
        value: { code: GatewayErrorCode.INVALID_REQUEST, message: 'unknown cluster_id_hex' },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, msg))
    expect(decoded.payload?.case).toBe('error')
    if (decoded.payload?.case === 'error') {
      expect(decoded.payload.value.code).toBe(GatewayErrorCode.INVALID_REQUEST)
      expect(decoded.payload.value.message).toBe('unknown cluster_id_hex')
    }
  })

  it('ignores the legacy string error on reserved field 7', () => {
    // field 7, wire type 2, "boom" — what a pre-GatewayError gateway sent
    const legacy = new Uint8Array([0x3a, 0x04, 0x62, 0x6f, 0x6f, 0x6d])
    const decoded = fromBinary(GatewayMessageSchema, legacy)
    expect(decoded.payload?.case).toBeUndefined()
  })
})

describe('DeviceRemoved', () => {
  it('round-trips a device_id with no reason given', () => {
    const removed = create(DeviceRemovedSchema, { deviceId: { value: 'therm-1' } })
    const decoded = fromBinary(DeviceRemovedSchema, toBinary(DeviceRemovedSchema, removed))
    expect(decoded.deviceId?.value).toBe('therm-1')
    expect(decoded.reason).toBe('')
  })

  it('round-trips the reason passed through from the connector', () => {
    const removed = create(DeviceRemovedSchema, {
      deviceId: { value: 'therm-1' },
      reason: 'unpaired at the CCU',
    })
    const decoded = fromBinary(DeviceRemovedSchema, toBinary(DeviceRemovedSchema, removed))
    expect(decoded.reason).toBe('unpaired at the CCU')
  })
})

describe('DeviceAdded', () => {
  it('round-trips a full device with typed properties', () => {
    const added = create(DeviceAddedSchema, {
      device: {
        descriptor: { deviceId: { value: 'hm:ABC123' }, matterDeviceTypeId: 0x0301 },
        properties: { case: 'thermostat', value: { occupiedHeatingSetpoint: 2100 } },
      },
    })
    const decoded = fromBinary(DeviceAddedSchema, toBinary(DeviceAddedSchema, added))
    expect(decoded.device?.descriptor?.deviceId?.value).toBe('hm:ABC123')
    expect(decoded.device?.properties?.case).toBe('thermostat')
    if (decoded.device?.properties?.case === 'thermostat') {
      expect(decoded.device.properties.value.occupiedHeatingSetpoint).toBe(2100)
    }
  })
})

describe('SubscribeDevices', () => {
  it('round-trips an empty device_ids list as a no-op request', () => {
    const sub = create(SubscribeDevicesSchema, {})
    const decoded = fromBinary(SubscribeDevicesSchema, toBinary(SubscribeDevicesSchema, sub))
    expect(decoded.deviceIds).toHaveLength(0)
  })

  it('round-trips a batch of device ids', () => {
    const sub = create(SubscribeDevicesSchema, {
      deviceIds: [{ value: 'therm-1' }, { value: 'light-1' }],
    })
    const decoded = fromBinary(SubscribeDevicesSchema, toBinary(SubscribeDevicesSchema, sub))
    expect(decoded.deviceIds).toHaveLength(2)
    expect(decoded.deviceIds[1].value).toBe('light-1')
  })
})

describe('UnsubscribeDevices', () => {
  it('round-trips a batch of device ids', () => {
    const unsub = create(UnsubscribeDevicesSchema, { deviceIds: [{ value: 'therm-1' }] })
    const decoded = fromBinary(UnsubscribeDevicesSchema, toBinary(UnsubscribeDevicesSchema, unsub))
    expect(decoded.deviceIds).toHaveLength(1)
    expect(decoded.deviceIds[0].value).toBe('therm-1')
  })
})

describe('SubscriptionAck', () => {
  it('reports a refused device with its id and code', () => {
    const ack = create(SubscriptionAckSchema, {
      inReplyTo: 'app-msg-sub-1',
      subscribed: [{ value: 'therm-1' }],
      refused: [{
        deviceId: { value: 'therm-99' },
        code: GatewayErrorCode.NOT_ENTITLED,
        message: 'user has no access to device therm-99',
      }],
    })
    const decoded = fromBinary(SubscriptionAckSchema, toBinary(SubscriptionAckSchema, ack))
    expect(decoded.refused).toHaveLength(1)
    expect(decoded.refused[0].deviceId?.value).toBe('therm-99')
    expect(decoded.refused[0].code).toBe(GatewayErrorCode.NOT_ENTITLED)
  })

  it('carries the effective subscription set after the change', () => {
    const ack = create(SubscriptionAckSchema, {
      inReplyTo: 'app-msg-sub-2',
      subscribed: [{ value: 'therm-1' }, { value: 'light-1' }],
    })
    const decoded = fromBinary(SubscriptionAckSchema, toBinary(SubscriptionAckSchema, ack))
    expect(decoded.inReplyTo).toBe('app-msg-sub-2')
    expect(decoded.subscribed.map((d) => d.value)).toEqual(['therm-1', 'light-1'])
  })

  it('leaves refused empty when every id was accepted', () => {
    const ack = create(SubscriptionAckSchema, {
      inReplyTo: 'app-msg-sub-3',
      subscribed: [{ value: 'therm-1' }],
    })
    const decoded = fromBinary(SubscriptionAckSchema, toBinary(SubscriptionAckSchema, ack))
    expect(decoded.refused).toHaveLength(0)
  })
})

describe('AppMessage oneof payload', () => {
  it('round-trips handshake payload', () => {
    const msg = create(AppMessageSchema, {
      messageId: 'app-msg-001',
      payload: {
        case: 'handshake',
        value: { jwt: 'token.payload.sig', subscribeDeviceIds: [{ value: 'dev-1' }] },
      },
    })
    const decoded = fromBinary(AppMessageSchema, toBinary(AppMessageSchema, msg))
    expect(decoded.messageId).toBe('app-msg-001')
    expect(decoded.payload?.case).toBe('handshake')
    if (decoded.payload?.case === 'handshake') {
      expect(decoded.payload.value.jwt).toBe('token.payload.sig')
    }
  })

  it('round-trips command payload', () => {
    const msg = create(AppMessageSchema, {
      messageId: 'app-msg-002',
      payload: {
        case: 'command',
        value: {
          commandId: 'cmd-1',
          deviceId: { value: 'light-1' },
          clusterIdHex: '0006',
          commandName: 'Toggle',
          parameters: { case: 'onOff', value: { toggle: true } },
        },
      },
    })
    const decoded = fromBinary(AppMessageSchema, toBinary(AppMessageSchema, msg))
    expect(decoded.payload?.case).toBe('command')
  })

  it('round-trips ping payload', () => {
    const msg = create(AppMessageSchema, {
      messageId: 'app-msg-003',
      payload: { case: 'ping', value: {} },
    })
    const decoded = fromBinary(AppMessageSchema, toBinary(AppMessageSchema, msg))
    expect(decoded.payload?.case).toBe('ping')
  })

  it('round-trips subscribe payload', () => {
    const msg = create(AppMessageSchema, {
      messageId: 'app-msg-sub-1',
      payload: { case: 'subscribe', value: { deviceIds: [{ value: 'therm-1' }] } },
    })
    const decoded = fromBinary(AppMessageSchema, toBinary(AppMessageSchema, msg))
    expect(decoded.payload?.case).toBe('subscribe')
    if (decoded.payload?.case === 'subscribe') {
      expect(decoded.payload.value.deviceIds[0].value).toBe('therm-1')
    }
  })

  it('round-trips unsubscribe payload', () => {
    const msg = create(AppMessageSchema, {
      messageId: 'app-msg-unsub-1',
      payload: { case: 'unsubscribe', value: { deviceIds: [{ value: 'therm-1' }] } },
    })
    const decoded = fromBinary(AppMessageSchema, toBinary(AppMessageSchema, msg))
    expect(decoded.payload?.case).toBe('unsubscribe')
    if (decoded.payload?.case === 'unsubscribe') {
      expect(decoded.payload.value.deviceIds[0].value).toBe('therm-1')
    }
  })
})
