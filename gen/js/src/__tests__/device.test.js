// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { DeviceDescriptorSchema } from '../kusinta/iot/device/v1/descriptor_pb.js'
import { DeviceOwnershipType, DeviceLifecycleState } from '../kusinta/iot/common/v1/types_pb.js'
import {
  ThermostatPropertiesSchema,
  TemperatureSensorPropertiesSchema,
  WindowCoveringPropertiesSchema,
  DoorLockPropertiesSchema,
  ContactSensorPropertiesSchema,
  OnOffLightPropertiesSchema,
  DimmableLightPropertiesSchema,
  EnergySensorPropertiesSchema,
} from '../kusinta/iot/device/v1/properties_pb.js'
import { DeviceSchema } from '../kusinta/iot/device/v1/device_pb.js'
import { PropertyUpdateSchema, PropertyUpdateBatchSchema } from '../kusinta/iot/device/v1/property_update_pb.js'

describe('DeviceDescriptor', () => {
  it('round-trips matter_device_type_id for thermostat (0x0301 = 769)', () => {
    const d = create(DeviceDescriptorSchema, {
      deviceId: { value: 'dev-001' },
      matterDeviceTypeId: 0x0301,
      vendorName: 'eQ-3',
      productName: 'HM-CC-RT-DN',
      serialNumber: 'MEQ1234567',
      nodeLabel: 'Living room thermostat',
      vendorId: 0x0135,
      productId: 0x0095,
      hardwareVersionString: '1.4',
      softwareVersionString: '2.8.0',
      connectorId: { value: 'homematic-ccu3' },
      spaceId: { value: 'room-uuid' },
      ownership: DeviceOwnershipType.COMPANY,
      lifecycle: DeviceLifecycleState.OWNED,
    })
    const decoded = fromBinary(DeviceDescriptorSchema, toBinary(DeviceDescriptorSchema, d))
    expect(decoded.matterDeviceTypeId).toBe(0x0301)
    expect(decoded.vendorName).toBe('eQ-3')
    expect(decoded.ownership).toBe(DeviceOwnershipType.COMPANY)
  })

  it('round-trips resident-owned lifecycle', () => {
    const d = create(DeviceDescriptorSchema, {
      deviceId: { value: 'dev-resident-001' },
      matterDeviceTypeId: 0x0100,
      ownership: DeviceOwnershipType.RESIDENT,
      lifecycle: DeviceLifecycleState.PENDING_CLAIM,
      ownerUserId: { value: 'user-abc' },
    })
    const decoded = fromBinary(DeviceDescriptorSchema, toBinary(DeviceDescriptorSchema, d))
    expect(decoded.ownership).toBe(DeviceOwnershipType.RESIDENT)
    expect(decoded.lifecycle).toBe(DeviceLifecycleState.PENDING_CLAIM)
    expect(decoded.ownerUserId?.value).toBe('user-abc')
  })
})

describe('ThermostatProperties — Matter Thermostat cluster 0x0201', () => {
  it('round-trips occupied_heating_setpoint (21.50°C = 2150 centidegrees)', () => {
    const p = create(ThermostatPropertiesSchema, { occupiedHeatingSetpoint: 2150 })
    const decoded = fromBinary(ThermostatPropertiesSchema, toBinary(ThermostatPropertiesSchema, p))
    expect(decoded.occupiedHeatingSetpoint).toBe(2150)
  })

  it('preserves negative local_temperature (frost: -5.00°C = -500)', () => {
    const p = create(ThermostatPropertiesSchema, { localTemperature: -500 })
    const decoded = fromBinary(ThermostatPropertiesSchema, toBinary(ThermostatPropertiesSchema, p))
    expect(decoded.localTemperature).toBe(-500)
  })

  it('round-trips min/max setpoint limits (property-owner constraints)', () => {
    const p = create(ThermostatPropertiesSchema, { minHeatSetpointLimit: 1600, maxHeatSetpointLimit: 2200 })
    const decoded = fromBinary(ThermostatPropertiesSchema, toBinary(ThermostatPropertiesSchema, p))
    expect(decoded.minHeatSetpointLimit).toBe(1600)
    expect(decoded.maxHeatSetpointLimit).toBe(2200)
  })

  it('round-trips system_mode enum values', () => {
    const p = create(ThermostatPropertiesSchema, { systemMode: 4 }) // Heat=4
    const decoded = fromBinary(ThermostatPropertiesSchema, toBinary(ThermostatPropertiesSchema, p))
    expect(decoded.systemMode).toBe(4)
  })
})

describe('TemperatureSensorProperties — Matter Temperature Measurement 0x0402', () => {
  it('round-trips measured_value', () => {
    const p = create(TemperatureSensorPropertiesSchema, { measuredValue: 2100 })
    const decoded = fromBinary(TemperatureSensorPropertiesSchema, toBinary(TemperatureSensorPropertiesSchema, p))
    expect(decoded.measuredValue).toBe(2100)
  })
})

describe('WindowCoveringProperties — Matter Window Covering 0x0102', () => {
  it('round-trips position as percent100ths (50% open = 5000)', () => {
    const p = create(WindowCoveringPropertiesSchema, { currentPositionLiftPercent100ths: 5000 })
    const decoded = fromBinary(WindowCoveringPropertiesSchema, toBinary(WindowCoveringPropertiesSchema, p))
    expect(decoded.currentPositionLiftPercent100ths).toBe(5000)
  })
})

describe('DoorLockProperties — Matter Door Lock 0x0101', () => {
  it('round-trips lock_state (Locked=1)', () => {
    const p = create(DoorLockPropertiesSchema, { lockState: 1 })
    const decoded = fromBinary(DoorLockPropertiesSchema, toBinary(DoorLockPropertiesSchema, p))
    expect(decoded.lockState).toBe(1)
  })
})

describe('ContactSensorProperties — Matter Boolean State 0x0045', () => {
  it('round-trips state_value false (contact open = alarm)', () => {
    const p = create(ContactSensorPropertiesSchema, { stateValue: false })
    const decoded = fromBinary(ContactSensorPropertiesSchema, toBinary(ContactSensorPropertiesSchema, p))
    expect(decoded.stateValue).toBe(false)
  })
})

describe('OnOffLightProperties — Matter On/Off 0x0006', () => {
  it('round-trips on_off true', () => {
    const p = create(OnOffLightPropertiesSchema, { onOff: true })
    const decoded = fromBinary(OnOffLightPropertiesSchema, toBinary(OnOffLightPropertiesSchema, p))
    expect(decoded.onOff).toBe(true)
  })
})

describe('DimmableLightProperties — Matter Level Control 0x0008', () => {
  it('round-trips current_level (0–254)', () => {
    const p = create(DimmableLightPropertiesSchema, { onOff: true, currentLevel: 127 })
    const decoded = fromBinary(DimmableLightPropertiesSchema, toBinary(DimmableLightPropertiesSchema, p))
    expect(decoded.currentLevel).toBe(127)
  })
})

describe('Device oneof properties', () => {
  it('stores thermostat properties in the oneof', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'therm-1' }, matterDeviceTypeId: 0x0301 },
      properties: { case: 'thermostat', value: { occupiedHeatingSetpoint: 2000 } },
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.properties?.case).toBe('thermostat')
    if (decoded.properties?.case === 'thermostat') {
      expect(decoded.properties.value.occupiedHeatingSetpoint).toBe(2000)
    }
  })

  it('stores temperature sensor properties in the oneof', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'temp-1' }, matterDeviceTypeId: 0x0302 },
      properties: { case: 'temperatureSensor', value: { measuredValue: 1950 } },
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.properties?.case).toBe('temperatureSensor')
  })
})

describe('PropertyUpdate', () => {
  it('round-trips int_value for thermostat setpoint', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'therm-1' },
      attributeName: 'OccupiedHeatingSetpoint',
      value: { case: 'intValue', value: 2150 },
      clusterIdHex: '0201',
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.attributeName).toBe('OccupiedHeatingSetpoint')
    expect(decoded.value?.case).toBe('intValue')
    if (decoded.value?.case === 'intValue') expect(decoded.value.value).toBe(2150)
  })

  it('round-trips bool_value for on/off light', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'light-1' },
      attributeName: 'OnOff',
      value: { case: 'boolValue', value: true },
      clusterIdHex: '0006',
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.value?.case).toBe('boolValue')
    if (decoded.value?.case === 'boolValue') expect(decoded.value.value).toBe(true)
  })
})

describe('PropertyUpdateBatch', () => {
  it('round-trips multiple updates', () => {
    const batch = create(PropertyUpdateBatchSchema, {
      updates: [
        { deviceId: { value: 'd1' }, attributeName: 'LocalTemperature', value: { case: 'intValue', value: 1900 } },
        { deviceId: { value: 'd1' }, attributeName: 'OccupiedHeatingSetpoint', value: { case: 'intValue', value: 2100 } },
      ],
    })
    const decoded = fromBinary(PropertyUpdateBatchSchema, toBinary(PropertyUpdateBatchSchema, batch))
    expect(decoded.updates.length).toBe(2)
    expect(decoded.updates[0].attributeName).toBe('LocalTemperature')
  })
})

describe('EnergySensorProperties', () => {
  it('no longer uses the field numbers that carried the old scaling', () => {
    const numbers = EnergySensorPropertiesSchema.fields.map((f) => f.number).sort()
    expect(numbers).toEqual([5, 6, 7, 8])
  })

  it('round-trips active_power in milliwatts above the int32 ceiling', () => {
    const p = create(EnergySensorPropertiesSchema, { activePower: 3_500_000_000n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.activePower).toBe(3_500_000_000n)
  })

  it('round-trips export as negative active_power', () => {
    const p = create(EnergySensorPropertiesSchema, { activePower: -1_500_000n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.activePower).toBe(-1_500_000n)
  })

  it('keeps sub-watt resolution in active_power', () => {
    const p = create(EnergySensorPropertiesSchema, { activePower: 1n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.activePower).toBe(1n)
  })

  it('round-trips voltage in millivolts', () => {
    const p = create(EnergySensorPropertiesSchema, { voltage: 230_500n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.voltage).toBe(230_500n)
  })

  it('round-trips active_current in milliamps with direction', () => {
    const p = create(EnergySensorPropertiesSchema, { activeCurrent: -16_250n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.activeCurrent).toBe(-16_250n)
  })

  it('round-trips frequency in millihertz', () => {
    const p = create(EnergySensorPropertiesSchema, { frequency: 49_985n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.frequency).toBe(49_985n)
  })
})
