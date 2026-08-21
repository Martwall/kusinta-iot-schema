// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HomematicDeviceIdentitySchema,
  HmThermostatPropsSchema,
} from '../kusinta/iot/vendor/homematic/v1/homematic_pb.js'
import { EndpointSchema } from '../kusinta/iot/device/v1/device_pb.js'
import { DeviceDescriptorSchema } from '../kusinta/iot/device/v1/descriptor_pb.js'

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
      properties: { case: 'thermostat', value: { localTemperature: 2150 } },
      vendor: { case: 'hmThermostat', value: { controlMode: 2, level: 0.5 } },
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect(decoded.properties?.case).toBe('thermostat')
    expect(decoded.vendor?.case).toBe('hmThermostat')
    if (decoded.vendor?.case === 'hmThermostat') {
      expect(decoded.vendor.value.level).toBe(0.5)
      expect(decoded.vendor.value.controlMode).toBe(2)
    }
  })
})
