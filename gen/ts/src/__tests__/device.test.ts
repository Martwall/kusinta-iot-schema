import { describe, it, expect } from 'vitest'
import { DeviceDescriptor } from '../device/descriptor.js'
import { DeviceOwnershipType, DeviceLifecycleState } from '../common/types.js'
import { ThermostatProperties, TemperatureSensorProperties, WindowCoveringProperties, DoorLockProperties, ContactSensorProperties, OnOffLightProperties, DimmableLightProperties } from '../device/properties.js'
import { Device } from '../device/device.js'
import { PropertyUpdate, PropertyUpdateBatch } from '../device/property_update.js'

describe('DeviceDescriptor', () => {
  it('round-trips matter_device_type_id for thermostat (0x0301 = 769)', () => {
    const d: DeviceDescriptor = {
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
      ownerUserId: undefined,
      claimedAt: undefined,
    }
    const decoded = DeviceDescriptor.decode(DeviceDescriptor.encode(d).finish())
    expect(decoded.matterDeviceTypeId).toBe(0x0301)
    expect(decoded.vendorName).toBe('eQ-3')
    expect(decoded.ownership).toBe(DeviceOwnershipType.COMPANY)
  })

  it('round-trips resident-owned lifecycle', () => {
    const d: DeviceDescriptor = {
      deviceId: { value: 'dev-resident-001' },
      matterDeviceTypeId: 0x0100,
      ownership: DeviceOwnershipType.RESIDENT,
      lifecycle: DeviceLifecycleState.PENDING_CLAIM,
      ownerUserId: { value: 'user-abc' },
    }
    const decoded = DeviceDescriptor.decode(DeviceDescriptor.encode(d).finish())
    expect(decoded.ownership).toBe(DeviceOwnershipType.RESIDENT)
    expect(decoded.lifecycle).toBe(DeviceLifecycleState.PENDING_CLAIM)
    expect(decoded.ownerUserId?.value).toBe('user-abc')
  })
})

describe('ThermostatProperties — Matter Thermostat cluster 0x0201', () => {
  it('round-trips occupied_heating_setpoint (21.50°C = 2150 centidegrees)', () => {
    const p: ThermostatProperties = { occupiedHeatingSetpoint: 2150 }
    const decoded = ThermostatProperties.decode(ThermostatProperties.encode(p).finish())
    expect(decoded.occupiedHeatingSetpoint).toBe(2150)
  })

  it('preserves negative local_temperature (frost: -5.00°C = -500)', () => {
    const p: ThermostatProperties = { localTemperature: -500 }
    const decoded = ThermostatProperties.decode(ThermostatProperties.encode(p).finish())
    expect(decoded.localTemperature).toBe(-500)
  })

  it('round-trips min/max setpoint limits (property-owner constraints)', () => {
    const p: ThermostatProperties = { minHeatSetpointLimit: 1600, maxHeatSetpointLimit: 2200 }
    const decoded = ThermostatProperties.decode(ThermostatProperties.encode(p).finish())
    expect(decoded.minHeatSetpointLimit).toBe(1600)
    expect(decoded.maxHeatSetpointLimit).toBe(2200)
  })

  it('round-trips system_mode enum values', () => {
    const p: ThermostatProperties = { systemMode: 4 } // Heat=4
    const decoded = ThermostatProperties.decode(ThermostatProperties.encode(p).finish())
    expect(decoded.systemMode).toBe(4)
  })
})

describe('TemperatureSensorProperties — Matter Temperature Measurement 0x0402', () => {
  it('round-trips measured_value', () => {
    const p: TemperatureSensorProperties = { measuredValue: 2100 } // 21.00°C
    const decoded = TemperatureSensorProperties.decode(TemperatureSensorProperties.encode(p).finish())
    expect(decoded.measuredValue).toBe(2100)
  })
})

describe('WindowCoveringProperties — Matter Window Covering 0x0102', () => {
  it('round-trips position as percent100ths (50% open = 5000)', () => {
    const p: WindowCoveringProperties = { currentPositionLiftPercent100ths: 5000 }
    const decoded = WindowCoveringProperties.decode(WindowCoveringProperties.encode(p).finish())
    expect(decoded.currentPositionLiftPercent100ths).toBe(5000)
  })
})

describe('DoorLockProperties — Matter Door Lock 0x0101', () => {
  it('round-trips lock_state (Locked=1)', () => {
    const p: DoorLockProperties = { lockState: 1 }
    const decoded = DoorLockProperties.decode(DoorLockProperties.encode(p).finish())
    expect(decoded.lockState).toBe(1)
  })
})

describe('ContactSensorProperties — Matter Boolean State 0x0045', () => {
  it('round-trips state_value false (contact open = alarm)', () => {
    const p: ContactSensorProperties = { stateValue: false }
    const decoded = ContactSensorProperties.decode(ContactSensorProperties.encode(p).finish())
    expect(decoded.stateValue).toBe(false)
  })
})

describe('OnOffLightProperties — Matter On/Off 0x0006', () => {
  it('round-trips on_off true', () => {
    const p: OnOffLightProperties = { onOff: true }
    const decoded = OnOffLightProperties.decode(OnOffLightProperties.encode(p).finish())
    expect(decoded.onOff).toBe(true)
  })
})

describe('DimmableLightProperties — Matter Level Control 0x0008', () => {
  it('round-trips current_level (0–254)', () => {
    const p: DimmableLightProperties = { onOff: true, currentLevel: 127 }
    const decoded = DimmableLightProperties.decode(DimmableLightProperties.encode(p).finish())
    expect(decoded.currentLevel).toBe(127)
  })
})

describe('Device oneof properties', () => {
  it('stores thermostat properties in the oneof', () => {
    const d: Device = {
      descriptor: { deviceId: { value: 'therm-1' }, matterDeviceTypeId: 0x0301 },
      properties: { $case: 'thermostat', thermostat: { occupiedHeatingSetpoint: 2000 } },
    }
    const decoded = Device.decode(Device.encode(d).finish())
    expect(decoded.properties?.$case).toBe('thermostat')
    if (decoded.properties?.$case === 'thermostat') {
      expect(decoded.properties.thermostat.occupiedHeatingSetpoint).toBe(2000)
    }
  })

  it('stores temperature sensor properties in the oneof', () => {
    const d: Device = {
      descriptor: { deviceId: { value: 'temp-1' }, matterDeviceTypeId: 0x0302 },
      properties: { $case: 'temperatureSensor', temperatureSensor: { measuredValue: 1950 } },
    }
    const decoded = Device.decode(Device.encode(d).finish())
    expect(decoded.properties?.$case).toBe('temperatureSensor')
  })
})

describe('PropertyUpdate', () => {
  it('round-trips int_value for thermostat setpoint', () => {
    const u: PropertyUpdate = {
      deviceId: { value: 'therm-1' },
      attributeName: 'OccupiedHeatingSetpoint',
      value: { $case: 'intValue', intValue: 2150 },
      clusterIdHex: '0201',
    }
    const decoded = PropertyUpdate.decode(PropertyUpdate.encode(u).finish())
    expect(decoded.attributeName).toBe('OccupiedHeatingSetpoint')
    expect(decoded.value?.$case).toBe('intValue')
    if (decoded.value?.$case === 'intValue') expect(decoded.value.intValue).toBe(2150)
  })

  it('round-trips bool_value for on/off light', () => {
    const u: PropertyUpdate = {
      deviceId: { value: 'light-1' },
      attributeName: 'OnOff',
      value: { $case: 'boolValue', boolValue: true },
      clusterIdHex: '0006',
    }
    const decoded = PropertyUpdate.decode(PropertyUpdate.encode(u).finish())
    expect(decoded.value?.$case).toBe('boolValue')
    if (decoded.value?.$case === 'boolValue') expect(decoded.value.boolValue).toBe(true)
  })
})

describe('PropertyUpdateBatch', () => {
  it('round-trips multiple updates', () => {
    const batch: PropertyUpdateBatch = {
      updates: [
        { deviceId: { value: 'd1' }, attributeName: 'LocalTemperature', value: { $case: 'intValue', intValue: 1900 } },
        { deviceId: { value: 'd1' }, attributeName: 'OccupiedHeatingSetpoint', value: { $case: 'intValue', intValue: 2100 } },
      ],
    }
    const decoded = PropertyUpdateBatch.decode(PropertyUpdateBatch.encode(batch).finish())
    expect(decoded.updates.length).toBe(2)
    expect(decoded.updates[0].attributeName).toBe('LocalTemperature')
  })
})
