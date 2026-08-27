// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HomematicDeviceIdentitySchema,
  HmMaintenancePropsSchema,
  HmThermostatPropsSchema,
} from '../kusinta/iot/vendor/homematic/v1/homematic_pb.js'
import { EndpointSchema } from '../kusinta/iot/device/v1/device_pb.js'
import { DeviceDescriptorSchema } from '../kusinta/iot/device/v1/descriptor_pb.js'

describe('HmThermostatProps', () => {
  it('round-trips boost_mode and control_mode', () => {
    const p = create(HmThermostatPropsSchema, {
      boostMode: true, boostTimeRemaining: 15, controlMode: 2, frostProtection: false,
    })
    const decoded = fromBinary(HmThermostatPropsSchema, toBinary(HmThermostatPropsSchema, p))
    expect(decoded.boostMode).toBe(true)
    expect(decoded.boostTimeRemaining).toBe(15)
    expect(decoded.controlMode).toBe(2)
    expect(decoded.frostProtection).toBe(false)
  })
})

describe('HomematicDeviceIdentity', () => {
  it('lives on the descriptor, describing the physical device', () => {
    const d = create(DeviceDescriptorSchema, {
      deviceId: { value: 'valve-1' },
      vendorIdentity: { case: 'homematic', value: { address: 'MEQ1234567', type: 'HmIP-eTRV-2' } },
    })
    const decoded = fromBinary(DeviceDescriptorSchema, toBinary(DeviceDescriptorSchema, d))
    expect(decoded.vendorIdentity?.case).toBe('homematic')
    if (decoded.vendorIdentity?.case === 'homematic') {
      expect(decoded.vendorIdentity.value.address).toBe('MEQ1234567')
    }
  })

  it('is not duplicated onto endpoints', () => {
    const names = EndpointSchema.fields.map((f) => f.name)
    expect(names).not.toContain('homematic_address')
    expect(names).not.toContain('homematic')
  })
})

describe('Endpoint vendor props', () => {
  it('carries vendor readings alongside typed Matter properties', () => {
    const e = create(EndpointSchema, {
      endpointId: 1,
      matterDeviceTypeId: 0x0301,
      matterProperties: { case: 'thermostat', value: { localTemperature: 2150 } },
      vendorProperties: { case: 'hmThermostat', value: { controlMode: 2, valveState: 3 } },
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect(decoded.matterProperties?.case).toBe('thermostat')
    expect(decoded.vendorProperties?.case).toBe('hmThermostat')
    if (decoded.vendorProperties?.case === 'hmThermostat') {
      expect(decoded.vendorProperties.value.valveState).toBe(3)
      expect(decoded.vendorProperties.value.controlMode).toBe(2)
    }
  })
})

describe('HmMaintenanceProps', () => {
  it('carries a negative RSSI rather than wrapping it', () => {
    const p = create(HmMaintenancePropsSchema, { rssiDevice: -72, rssiPeer: -80 })
    const decoded = fromBinary(HmMaintenancePropsSchema, toBinary(HmMaintenancePropsSchema, p))
    expect(decoded.rssiDevice).toBe(-72)
    expect(decoded.rssiPeer).toBe(-80)
  })

  it('distinguishes no tamper detected from a device that cannot detect tamper', () => {
    const reporting = create(HmMaintenancePropsSchema, { sabotage: false })
    const decoded = fromBinary(HmMaintenancePropsSchema, toBinary(HmMaintenancePropsSchema, reporting))
    expect(decoded.sabotage).toBe(false)
    expect(create(HmMaintenancePropsSchema, {}).sabotage).toBeUndefined()
  })

  it('rides on the same endpoint as the power source properties it explains', () => {
    const e = create(EndpointSchema, {
      endpointId: 0xF000,
      matterDeviceTypeId: 0x0011,
      matterProperties: { case: 'powerSource', value: { batVoltage: 2600 } },
      vendorProperties: { case: 'hmMaintenance', value: { unreach: false, configPending: true } },
      vendorAttributeNames: ['ERROR_CODE', 'RSSI_DEVICE'],
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect(decoded.vendorProperties?.case).toBe('hmMaintenance')
    expect(decoded.vendorAttributeNames).toEqual(['ERROR_CODE', 'RSSI_DEVICE'])
  })
})

describe('valve position', () => {
  it('is no longer a vendor field', () => {
    const names = HmThermostatPropsSchema.fields.map((f) => f.name)
    expect(names).not.toContain('level')
  })
})
