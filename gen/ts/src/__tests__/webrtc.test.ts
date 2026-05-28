import { describe, it, expect } from 'vitest'
import { GatewayMessage, AppMessage, AppHandshake, Ping, Pong } from '../webrtc/envelope.js'
import { DeviceCommand, CommandResult, ThermostatSetpointParams, LevelControlParams, OnOffParams, WindowCoveringLiftParams, DoorLockParams } from '../webrtc/command.js'
import { DeviceStateSnapshot, DevicePropertyEvent } from '../webrtc/device_state.js'
import { LivePermissionUpdate } from '../webrtc/permission_push.js'

describe('AppHandshake', () => {
  it('round-trips jwt and subscribe_device_ids', () => {
    const h: AppHandshake = {
      jwt: 'eyJhbGciOiJSUzI1NiJ9.test.sig',
      subscribeDeviceIds: [{ value: 'dev-1' }, { value: 'dev-2' }],
    }
    const decoded = AppHandshake.decode(AppHandshake.encode(h).finish())
    expect(decoded.jwt).toBe('eyJhbGciOiJSUzI1NiJ9.test.sig')
    expect(decoded.subscribeDeviceIds).toHaveLength(2)
    expect(decoded.subscribeDeviceIds[0].value).toBe('dev-1')
  })
})

describe('DeviceCommand', () => {
  it('round-trips thermostat setpoint command', () => {
    const cmd: DeviceCommand = {
      commandId: 'cmd-uuid-1',
      deviceId: { value: 'therm-1' },
      clusterIdHex: '0201',
      commandName: 'SetpointRaiseLower',
      parameters: {
        $case: 'thermostatSetpoint',
        thermostatSetpoint: { mode: 4, amount: 50 }, // Heat, +0.50°C
      },
    }
    const decoded = DeviceCommand.decode(DeviceCommand.encode(cmd).finish())
    expect(decoded.commandId).toBe('cmd-uuid-1')
    expect(decoded.deviceId?.value).toBe('therm-1')
    expect(decoded.commandName).toBe('SetpointRaiseLower')
    expect(decoded.parameters?.$case).toBe('thermostatSetpoint')
    if (decoded.parameters?.$case === 'thermostatSetpoint') {
      expect(decoded.parameters.thermostatSetpoint.mode).toBe(4)
      expect(decoded.parameters.thermostatSetpoint.amount).toBe(50)
    }
  })

  it('round-trips on/off command', () => {
    const cmd: DeviceCommand = {
      commandId: 'cmd-uuid-2',
      deviceId: { value: 'light-1' },
      clusterIdHex: '0006',
      commandName: 'Toggle',
      parameters: { $case: 'onOff', onOff: { toggle: true } },
    }
    const decoded = DeviceCommand.decode(DeviceCommand.encode(cmd).finish())
    expect(decoded.parameters?.$case).toBe('onOff')
    if (decoded.parameters?.$case === 'onOff') {
      expect(decoded.parameters.onOff.toggle).toBe(true)
    }
  })

  it('round-trips level control command', () => {
    const cmd: DeviceCommand = {
      commandId: 'cmd-uuid-3',
      deviceId: { value: 'light-2' },
      clusterIdHex: '0008',
      commandName: 'MoveToLevel',
      parameters: { $case: 'levelControl', levelControl: { level: 127, transitionTime: 10 } },
    }
    const decoded = DeviceCommand.decode(DeviceCommand.encode(cmd).finish())
    expect(decoded.parameters?.$case).toBe('levelControl')
    if (decoded.parameters?.$case === 'levelControl') {
      expect(decoded.parameters.levelControl.level).toBe(127)
      expect(decoded.parameters.levelControl.transitionTime).toBe(10)
    }
  })

  it('round-trips window covering lift command', () => {
    const cmd: DeviceCommand = {
      commandId: 'cmd-uuid-4',
      deviceId: { value: 'blind-1' },
      clusterIdHex: '0102',
      commandName: 'GoToLiftPercentage',
      parameters: {
        $case: 'windowCoveringLift',
        windowCoveringLift: { liftPercent100ths: 5000 },
      },
    }
    const decoded = DeviceCommand.decode(DeviceCommand.encode(cmd).finish())
    expect(decoded.parameters?.$case).toBe('windowCoveringLift')
    if (decoded.parameters?.$case === 'windowCoveringLift') {
      expect(decoded.parameters.windowCoveringLift.liftPercent100ths).toBe(5000)
    }
  })

  it('round-trips door lock command', () => {
    const cmd: DeviceCommand = {
      commandId: 'cmd-uuid-5',
      deviceId: { value: 'lock-1' },
      clusterIdHex: '0101',
      commandName: 'LockDoor',
      parameters: { $case: 'doorLock', doorLock: { lockState: 1 } },
    }
    const decoded = DeviceCommand.decode(DeviceCommand.encode(cmd).finish())
    expect(decoded.parameters?.$case).toBe('doorLock')
    if (decoded.parameters?.$case === 'doorLock') {
      expect(decoded.parameters.doorLock.lockState).toBe(1)
    }
  })
})

describe('CommandResult', () => {
  it('round-trips successful result', () => {
    const result: CommandResult = {
      commandId: 'cmd-uuid-1',
      success: true,
    }
    const decoded = CommandResult.decode(CommandResult.encode(result).finish())
    expect(decoded.commandId).toBe('cmd-uuid-1')
    expect(decoded.success).toBe(true)
  })

  it('round-trips failed result with error', () => {
    const result: CommandResult = {
      commandId: 'cmd-uuid-2',
      success: false,
      error: { code: 'PERMISSION_DENIED', message: 'Setpoint exceeds property-owner limit' },
    }
    const decoded = CommandResult.decode(CommandResult.encode(result).finish())
    expect(decoded.success).toBe(false)
    expect(decoded.error?.code).toBe('PERMISSION_DENIED')
  })
})

describe('DeviceStateSnapshot', () => {
  it('round-trips with devices and permissions', () => {
    const snap: DeviceStateSnapshot = {
      devices: [
        {
          descriptor: { deviceId: { value: 'therm-1' }, matterDeviceTypeId: 0x0301 },
          properties: { $case: 'thermostat', thermostat: { occupiedHeatingSetpoint: 2100 } },
        },
      ],
      permissions: {
        userId: { value: 'user-1' },
        gatewayId: { value: 'gw-1' },
        deviceAcls: [],
      },
    }
    const decoded = DeviceStateSnapshot.decode(DeviceStateSnapshot.encode(snap).finish())
    expect(decoded.devices).toHaveLength(1)
    expect(decoded.devices[0].descriptor?.deviceId?.value).toBe('therm-1')
    expect(decoded.permissions?.userId?.value).toBe('user-1')
  })
})

describe('DevicePropertyEvent', () => {
  it('round-trips a property update event', () => {
    const event: DevicePropertyEvent = {
      update: {
        deviceId: { value: 'therm-1' },
        attributeName: 'LocalTemperature',
        value: { $case: 'intValue', intValue: 2050 },
        clusterIdHex: '0402',
      },
    }
    const decoded = DevicePropertyEvent.decode(DevicePropertyEvent.encode(event).finish())
    expect(decoded.update?.attributeName).toBe('LocalTemperature')
    expect(decoded.update?.value?.$case).toBe('intValue')
  })
})

describe('LivePermissionUpdate', () => {
  it('round-trips added and removed devices', () => {
    const update: LivePermissionUpdate = {
      newPermissions: {
        userId: { value: 'user-1' },
        gatewayId: { value: 'gw-1' },
        deviceAcls: [],
      },
      addedDevices: [{ value: 'dev-new-1' }],
      removedDevices: [{ value: 'dev-old-1' }],
      changeReason: 'DEVICE_ASSIGNED',
    }
    const decoded = LivePermissionUpdate.decode(LivePermissionUpdate.encode(update).finish())
    expect(decoded.addedDevices).toHaveLength(1)
    expect(decoded.addedDevices[0].value).toBe('dev-new-1')
    expect(decoded.removedDevices).toHaveLength(1)
    expect(decoded.changeReason).toBe('DEVICE_ASSIGNED')
  })
})

describe('GatewayMessage oneof payload', () => {
  it('round-trips state_snapshot payload', () => {
    const msg: GatewayMessage = {
      messageId: 'gw-msg-001',
      payload: {
        $case: 'stateSnapshot',
        stateSnapshot: {
          devices: [],
          permissions: { userId: { value: 'user-1' }, gatewayId: { value: 'gw-1' }, deviceAcls: [] },
        },
      },
    }
    const decoded = GatewayMessage.decode(GatewayMessage.encode(msg).finish())
    expect(decoded.messageId).toBe('gw-msg-001')
    expect(decoded.payload?.$case).toBe('stateSnapshot')
  })

  it('round-trips property_event payload', () => {
    const msg: GatewayMessage = {
      messageId: 'gw-msg-002',
      payload: {
        $case: 'propertyEvent',
        propertyEvent: {
          update: {
            deviceId: { value: 'therm-1' },
            attributeName: 'OccupiedHeatingSetpoint',
            value: { $case: 'intValue', intValue: 2100 },
            clusterIdHex: '0201',
          },
        },
      },
    }
    const decoded = GatewayMessage.decode(GatewayMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('propertyEvent')
    if (decoded.payload?.$case === 'propertyEvent') {
      expect(decoded.payload.propertyEvent.update?.attributeName).toBe('OccupiedHeatingSetpoint')
    }
  })

  it('round-trips pong payload', () => {
    const msg: GatewayMessage = {
      messageId: 'gw-msg-003',
      payload: { $case: 'pong', pong: {} },
    }
    const decoded = GatewayMessage.decode(GatewayMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('pong')
  })
})

describe('AppMessage oneof payload', () => {
  it('round-trips handshake payload', () => {
    const msg: AppMessage = {
      messageId: 'app-msg-001',
      payload: {
        $case: 'handshake',
        handshake: {
          jwt: 'token.payload.sig',
          subscribeDeviceIds: [{ value: 'dev-1' }],
        },
      },
    }
    const decoded = AppMessage.decode(AppMessage.encode(msg).finish())
    expect(decoded.messageId).toBe('app-msg-001')
    expect(decoded.payload?.$case).toBe('handshake')
    if (decoded.payload?.$case === 'handshake') {
      expect(decoded.payload.handshake.jwt).toBe('token.payload.sig')
    }
  })

  it('round-trips command payload', () => {
    const msg: AppMessage = {
      messageId: 'app-msg-002',
      payload: {
        $case: 'command',
        command: {
          commandId: 'cmd-1',
          deviceId: { value: 'light-1' },
          clusterIdHex: '0006',
          commandName: 'Toggle',
          parameters: { $case: 'onOff', onOff: { toggle: true } },
        },
      },
    }
    const decoded = AppMessage.decode(AppMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('command')
  })

  it('round-trips ping payload', () => {
    const msg: AppMessage = {
      messageId: 'app-msg-003',
      payload: { $case: 'ping', ping: {} },
    }
    const decoded = AppMessage.decode(AppMessage.encode(msg).finish())
    expect(decoded.payload?.$case).toBe('ping')
  })
})
