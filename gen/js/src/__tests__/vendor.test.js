// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HomematicVendorExtensionSchema,
  HmThermostatPropsSchema,
  HmWindowActuatorPropsSchema,
  HmDoorSensorPropsSchema,
} from '../kusinta/iot/vendor/homematic/v1/homematic_pb.js'
import { DeviceSchema } from '../kusinta/iot/device/v1/device_pb.js'

describe('HmThermostatProps', () => {
  it('round-trips boost_mode and control_mode', () => {
    const p = create(HmThermostatPropsSchema, {
      boostMode: true, boostTimePeriod: 15.5, controlMode: 2, frostProtection: false,
    })
    const decoded = fromBinary(HmThermostatPropsSchema, toBinary(HmThermostatPropsSchema, p))
    expect(decoded.boostMode).toBe(true)
    expect(decoded.boostTimePeriod).toBeCloseTo(15.5, 3)
    expect(decoded.controlMode).toBe(2)
    expect(decoded.frostProtection).toBe(false)
  })
})

describe('HmWindowActuatorProps', () => {
  it('round-trips drive_state and error flags', () => {
    const p = create(HmWindowActuatorPropsSchema, { driveState: 1, errorEfuse: false, errorMotorCoilsTemp: true })
    const decoded = fromBinary(HmWindowActuatorPropsSchema, toBinary(HmWindowActuatorPropsSchema, p))
    expect(decoded.driveState).toBe(1)
    expect(decoded.errorMotorCoilsTemp).toBe(true)
  })
})

describe('HmDoorSensorProps', () => {
  it('round-trips sabotage and low_battery flags', () => {
    const p = create(HmDoorSensorPropsSchema, { sabotage: false, lowBattery: true })
    const decoded = fromBinary(HmDoorSensorPropsSchema, toBinary(HmDoorSensorPropsSchema, p))
    expect(decoded.sabotage).toBe(false)
    expect(decoded.lowBattery).toBe(true)
  })
})

describe('HomematicVendorExtension', () => {
  it('round-trips homematic_address and thermostat props', () => {
    const ext = create(HomematicVendorExtensionSchema, {
      homematicAddress: 'MEQ1234567',
      homematicType: 'HmIP-eTRV-2',
      homematicProps: { case: 'hmThermostat', value: { boostMode: false, controlMode: 1, currentProfilePeriod: 3.0 } },
    })
    const decoded = fromBinary(HomematicVendorExtensionSchema, toBinary(HomematicVendorExtensionSchema, ext))
    expect(decoded.homematicAddress).toBe('MEQ1234567')
    expect(decoded.homematicType).toBe('HmIP-eTRV-2')
    expect(decoded.homematicProps?.case).toBe('hmThermostat')
    if (decoded.homematicProps?.case === 'hmThermostat') {
      expect(decoded.homematicProps.value.controlMode).toBe(1)
    }
  })

  it('round-trips wall thermostat props', () => {
    const ext = create(HomematicVendorExtensionSchema, {
      homematicAddress: 'MEQ9876543',
      homematicType: 'HmIP-WTH-2',
      homematicProps: { case: 'hmWallThermostat', value: { displayMode: 1 } },
    })
    const decoded = fromBinary(HomematicVendorExtensionSchema, toBinary(HomematicVendorExtensionSchema, ext))
    expect(decoded.homematicProps?.case).toBe('hmWallThermostat')
  })
})

describe('Device with HomematicVendorExtension (field 50)', () => {
  it('stores homematic extension in the oneof', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'hm-therm-1' }, matterDeviceTypeId: 0x0301 },
      properties: {
        case: 'homematic',
        value: {
          homematicAddress: 'MEQ1234567',
          homematicType: 'HmIP-eTRV-2',
          homematicProps: { case: 'hmThermostat', value: { controlMode: 2 } },
        },
      },
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.properties?.case).toBe('homematic')
    if (decoded.properties?.case === 'homematic') {
      expect(decoded.properties.value.homematicAddress).toBe('MEQ1234567')
    }
  })
})
