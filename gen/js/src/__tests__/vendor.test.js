// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HomematicDeviceIdentitySchema,
  HmMaintenancePropsSchema,
  HmThermostatPropsSchema,
} from '../kusinta/iot/vendor/homematic/v1/homematic_pb.js'
import {
  CompressorState,
  EndpointSchema,
  HeatSourceProduction,
  HeatSourceReadingsSchema,
  RadioLinkSchema,
  RadioQuality,
} from '../kusinta/iot/device/v1/device_pb.js'
import { PropertyUpdateSchema } from '../kusinta/iot/device/v1/property_update_pb.js'
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

describe('RadioLink', () => {
  it('rides beside the maintenance extension on the power source endpoint', () => {
    const e = create(EndpointSchema, {
      endpointId: 0xF000,
      matterDeviceTypeId: 0x0011,
      vendorProperties: { case: 'hmMaintenance', value: { unreach: false } },
      radioLink: { quality: RadioQuality.FAIR, rssiDbm: -90 },
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect([decoded.vendorProperties?.case, decoded.radioLink?.quality]).toEqual([
      'hmMaintenance',
      RadioQuality.FAIR,
    ])
  })

  it('pins the quality numbers that travel on the wire', () => {
    expect([RadioQuality.UNSPECIFIED, RadioQuality.GOOD, RadioQuality.FAIR, RadioQuality.POOR]).toEqual([
      0, 1, 2, 3,
    ])
  })

  it('leaves unreported readings absent', () => {
    const decoded = fromBinary(RadioLinkSchema, toBinary(RadioLinkSchema, create(RadioLinkSchema, {})))
    expect([decoded.quality, decoded.rssiDbm, decoded.snrDb]).toEqual([
      undefined,
      undefined,
      undefined,
    ])
  })

  it('carries a negative rssi and snr', () => {
    const link = create(RadioLinkSchema, { quality: RadioQuality.POOR, rssiDbm: -117, snrDb: -7.5 })
    const decoded = fromBinary(RadioLinkSchema, toBinary(RadioLinkSchema, link))
    expect([decoded.rssiDbm, decoded.snrDb]).toEqual([-117, -7.5])
  })
})

describe('HeatSourceReadings', () => {
  it('rides beside the radio link on a heat pump endpoint', () => {
    const e = create(EndpointSchema, {
      endpointId: 1,
      matterDeviceTypeId: 0x0309,
      radioLink: { quality: RadioQuality.GOOD },
      heatSource: { supplyCentidegrees: 3550, returnCentidegrees: 2810 },
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect([decoded.radioLink?.quality, decoded.heatSource?.supplyCentidegrees]).toEqual([
      RadioQuality.GOOD,
      3550,
    ])
  })

  it('leaves unreported readings absent', () => {
    const decoded = fromBinary(
      HeatSourceReadingsSchema,
      toBinary(HeatSourceReadingsSchema, create(HeatSourceReadingsSchema, {})),
    )
    expect([decoded.outdoorCentidegrees, decoded.hotWaterTopCentidegrees]).toEqual([undefined, undefined])
  })

  it('carries a frosty outdoor reading and a reading of zero', () => {
    const readings = create(HeatSourceReadingsSchema, { outdoorCentidegrees: -1850, hotWaterChargingCentidegrees: 0 })
    const decoded = fromBinary(HeatSourceReadingsSchema, toBinary(HeatSourceReadingsSchema, readings))
    expect([decoded.outdoorCentidegrees, decoded.hotWaterChargingCentidegrees]).toEqual([-1850, 0])
  })

  it('carries the run state: what it produces, its compressor, degree minutes and an alarm', () => {
    const readings = create(HeatSourceReadingsSchema, {
      producing: HeatSourceProduction.HOT_WATER,
      compressorState: CompressorState.STARTING,
      degreeMinutes: -420,
      alarmActive: true,
      alarmCode: 183,
    })
    const decoded = fromBinary(HeatSourceReadingsSchema, toBinary(HeatSourceReadingsSchema, readings))
    expect([
      decoded.producing,
      decoded.compressorState,
      decoded.degreeMinutes,
      decoded.alarmActive,
      decoded.alarmCode,
    ]).toEqual([HeatSourceProduction.HOT_WATER, CompressorState.STARTING, -420, true, 183])
  })

  it('tells no alarm apart from an unreported one', () => {
    const decoded = fromBinary(
      HeatSourceReadingsSchema,
      toBinary(HeatSourceReadingsSchema, create(HeatSourceReadingsSchema, { alarmActive: false })),
    )
    expect([decoded.alarmActive, decoded.alarmCode, decoded.producing]).toEqual([false, undefined, undefined])
  })

  it('pins the production and compressor numbers that travel on the wire', () => {
    expect([
      HeatSourceProduction.UNSPECIFIED,
      HeatSourceProduction.OFF,
      HeatSourceProduction.SPACE_HEATING,
      HeatSourceProduction.HOT_WATER,
      HeatSourceProduction.POOL,
      HeatSourceProduction.COOLING,
      HeatSourceProduction.OTHER,
      CompressorState.UNSPECIFIED,
      CompressorState.STOPPED,
      CompressorState.STARTING,
      CompressorState.RUNNING,
      CompressorState.STOPPING,
    ]).toEqual([0, 1, 2, 3, 4, 5, 6, 0, 1, 2, 3, 4])
  })

  it('travels as a vendor update with an int value', () => {
    const update = create(PropertyUpdateSchema, {
      endpointId: 1,
      vendorExtension: 'kusinta.heat_source',
      attributeName: 'calculated_supply_centidegrees',
      value: { case: 'intValue', value: 3720 },
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, update))
    expect([decoded.vendorExtension, decoded.value.case, decoded.value.value]).toEqual([
      'kusinta.heat_source',
      'intValue',
      3720,
    ])
  })
})

describe('valve position', () => {
  it('is no longer a vendor field', () => {
    const names = HmThermostatPropsSchema.fields.map((f) => f.name)
    expect(names).not.toContain('level')
  })
})
