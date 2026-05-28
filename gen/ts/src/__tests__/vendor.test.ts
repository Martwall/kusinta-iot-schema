import { describe, it, expect } from 'vitest'
import { HomematicVendorExtension, HmThermostatProps, HmWallThermostatProps, HmWindowActuatorProps, HmDoorSensorProps } from '../vendor/homematic/homematic_ext.js'
import { Device } from '../device/device.js'

describe('HmThermostatProps', () => {
  it('round-trips boost_mode and control_mode', () => {
    const p: HmThermostatProps = {
      boostMode: true,
      boostTimePeriod: 15.5,
      controlMode: 2,
      frostProtection: false,
    }
    const decoded = HmThermostatProps.decode(HmThermostatProps.encode(p).finish())
    expect(decoded.boostMode).toBe(true)
    expect(decoded.boostTimePeriod).toBeCloseTo(15.5, 3)
    expect(decoded.controlMode).toBe(2)
    expect(decoded.frostProtection).toBe(false)
  })
})

describe('HmWindowActuatorProps', () => {
  it('round-trips drive_state and error flags', () => {
    const p: HmWindowActuatorProps = {
      driveState: 1,
      errorEfuse: false,
      errorMotorCoilsTemp: true,
    }
    const decoded = HmWindowActuatorProps.decode(HmWindowActuatorProps.encode(p).finish())
    expect(decoded.driveState).toBe(1)
    expect(decoded.errorMotorCoilsTemp).toBe(true)
  })
})

describe('HmDoorSensorProps', () => {
  it('round-trips sabotage and low_battery flags', () => {
    const p: HmDoorSensorProps = { sabotage: false, lowBattery: true }
    const decoded = HmDoorSensorProps.decode(HmDoorSensorProps.encode(p).finish())
    expect(decoded.sabotage).toBe(false)
    expect(decoded.lowBattery).toBe(true)
  })
})

describe('HomematicVendorExtension', () => {
  it('round-trips homematic_address and thermostat props', () => {
    const ext: HomematicVendorExtension = {
      homematicAddress: 'MEQ1234567',
      homematicType: 'HmIP-eTRV-2',
      homematicProps: {
        $case: 'hmThermostat',
        hmThermostat: {
          boostMode: false,
          controlMode: 1,
          currentProfilePeriod: 3.0,
        },
      },
    }
    const decoded = HomematicVendorExtension.decode(HomematicVendorExtension.encode(ext).finish())
    expect(decoded.homematicAddress).toBe('MEQ1234567')
    expect(decoded.homematicType).toBe('HmIP-eTRV-2')
    expect(decoded.homematicProps?.$case).toBe('hmThermostat')
    if (decoded.homematicProps?.$case === 'hmThermostat') {
      expect(decoded.homematicProps.hmThermostat.controlMode).toBe(1)
    }
  })

  it('round-trips wall thermostat props', () => {
    const ext: HomematicVendorExtension = {
      homematicAddress: 'MEQ9876543',
      homematicType: 'HmIP-WTH-2',
      homematicProps: {
        $case: 'hmWallThermostat',
        hmWallThermostat: { displayMode: 1 },
      },
    }
    const decoded = HomematicVendorExtension.decode(HomematicVendorExtension.encode(ext).finish())
    expect(decoded.homematicProps?.$case).toBe('hmWallThermostat')
  })
})

describe('Device with HomematicVendorExtension (field 50)', () => {
  it('stores homematic extension in the oneof', () => {
    const d: Device = {
      descriptor: { deviceId: { value: 'hm-therm-1' }, matterDeviceTypeId: 0x0301 },
      properties: {
        $case: 'homematic',
        homematic: {
          homematicAddress: 'MEQ1234567',
          homematicType: 'HmIP-eTRV-2',
          homematicProps: { $case: 'hmThermostat', hmThermostat: { controlMode: 2 } },
        },
      },
    }
    const decoded = Device.decode(Device.encode(d).finish())
    expect(decoded.properties?.$case).toBe('homematic')
    if (decoded.properties?.$case === 'homematic') {
      expect(decoded.properties.homematic.homematicAddress).toBe('MEQ1234567')
    }
  })
})
