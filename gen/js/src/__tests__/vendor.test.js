// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HomematicVendorExtensionSchema,
  HmThermostatPropsSchema,
} from '../kusinta/iot/vendor/homematic/v1/homematic_pb.js'
import { EndpointSchema } from '../kusinta/iot/device/v1/device_pb.js'

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

})

describe('Endpoint with HomematicVendorExtension (field 50)', () => {
  it('carries the vendor extension alongside typed Matter properties', () => {
    const e = create(EndpointSchema, {
      endpointId: 1,
      properties: { case: 'thermostat', value: { localTemperature: 2150 } },
      vendor: {
        case: 'homematic',
        value: {
          homematicAddress: 'MEQ1234567',
          homematicType: 'HmIP-eTRV-2',
          homematicProps: { case: 'hmThermostat', value: { controlMode: 2, level: 0.5 } },
        },
      },
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect(decoded.properties?.case).toBe('thermostat')
    expect(decoded.vendor?.case).toBe('homematic')
    if (decoded.vendor?.case === 'homematic') {
      expect(decoded.vendor.value.homematicAddress).toBe('MEQ1234567')
      if (decoded.vendor.value.homematicProps?.case === 'hmThermostat') {
        expect(decoded.vendor.value.homematicProps.value.level).toBe(0.5)
      }
    }
  })

})
