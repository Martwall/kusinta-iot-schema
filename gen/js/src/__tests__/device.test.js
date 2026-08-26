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
import { DeviceSchema, EndpointSchema } from '../kusinta/iot/device/v1/device_pb.js'
import { AttributeValueSchema, ClusterStateSchema } from '../kusinta/iot/device/v1/cluster_state_pb.js'
import { PropertyUpdateSchema, PropertyUpdateBatchSchema, ValueProvenance } from '../kusinta/iot/device/v1/property_update_pb.js'

describe('DeviceDescriptor', () => {

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

describe('PropertyUpdate', () => {
  it('round-trips int_value for thermostat setpoint', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'therm-1' },
      attributeName: 'OccupiedHeatingSetpoint',
      value: { case: 'intValue', value: 2150 },
      clusterId: 0x0201,
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
      clusterId: 0x0006,
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.value?.case).toBe('boolValue')
    if (decoded.value?.case === 'boolValue') expect(decoded.value.value).toBe(true)
  })

  it('defaults provenance to unspecified', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'therm-1' },
      attributeName: 'OccupiedHeatingSetpoint',
      value: { case: 'intValue', value: 2150 },
      clusterId: 0x0201,
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.provenance).toBe(ValueProvenance.UNSPECIFIED)
  })

  it('round-trips an optimistic provenance', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'therm-1' },
      attributeName: 'OccupiedHeatingSetpoint',
      value: { case: 'intValue', value: 2250 },
      clusterId: 0x0201,
      provenance: ValueProvenance.OPTIMISTIC,
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.provenance).toBe(ValueProvenance.OPTIMISTIC)
  })

  it('round-trips a corrected provenance distinctly from confirmed', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'therm-1' },
      attributeName: 'OccupiedHeatingSetpoint',
      value: { case: 'intValue', value: 2150 },
      clusterId: 0x0201,
      provenance: ValueProvenance.CORRECTED,
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.provenance).toBe(ValueProvenance.CORRECTED)
    expect(decoded.provenance).not.toBe(ValueProvenance.CONFIRMED)
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

describe('Endpoints — several device types on one device', () => {
  it('carries a thermostat and a humidity sensor on one device', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'wall-therm-1' } },
      endpoints: [
        { endpointId: 1, matterDeviceTypeId: 0x0301, matterProperties: { case: 'thermostat', value: { localTemperature: 2150 } } },
        { endpointId: 2, matterDeviceTypeId: 0x0307, matterProperties: { case: 'humiditySensor', value: { measuredValue: 4500 } } },
      ],
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.endpoints.map((e) => e.matterDeviceTypeId)).toEqual([0x0301, 0x0307])
    expect(decoded.endpoints[1].matterProperties?.case).toBe('humiditySensor')
  })

  it('keeps four endpoints of the same device type distinguishable', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'actuator-1' }, matterDeviceTypeId: 0x0100 },
      endpoints: [1, 2, 3, 4].map((n) => ({
        endpointId: n,
        matterDeviceTypeId: 0x0100,
        matterProperties: { case: 'onOffLight', value: { onOff: n % 2 === 1 } },
      })),
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.endpoints.map((e) => e.endpointId)).toEqual([1, 2, 3, 4])
  })

  it('carries a power source on its own endpoint', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'valve-1' }, matterDeviceTypeId: 0x0301 },
      endpoints: [
        { endpointId: 1, matterDeviceTypeId: 0x0301, matterProperties: { case: 'thermostat', value: { localTemperature: 2150 } } },
        { endpointId: 2, matterDeviceTypeId: 0x0011, matterProperties: { case: 'powerSource', value: { batPercentRemaining: 150, batChargeLevel: 1 } } },
      ],
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.endpoints[1].matterProperties?.case).toBe('powerSource')
    if (decoded.endpoints[1].matterProperties?.case === 'powerSource') {
      expect(decoded.endpoints[1].matterProperties.value.batPercentRemaining).toBe(150)
    }
  })

  it('leaves endpoints empty for a device that has reported nothing typed', () => {
    const d = create(DeviceSchema, {
      descriptor: { deviceId: { value: 'unknown-1' } },
    })
    const decoded = fromBinary(DeviceSchema, toBinary(DeviceSchema, d))
    expect(decoded.endpoints).toHaveLength(0)
    expect(decoded.descriptor?.deviceId?.value).toBe('unknown-1')
  })
})

describe('PropertyUpdate — endpoint and vendor addressing', () => {
  it('addresses an endpoint', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'wall-therm-1' },
      endpointId: 2,
      attributeName: 'MeasuredValue',
      value: { case: 'intValue', value: 4500 },
      clusterId: 0x0405,
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.endpointId).toBe(2)
  })

  it('leaves endpoint_id undefined rather than defaulting to zero', () => {
    const u = create(PropertyUpdateSchema, { attributeName: 'MeasuredValue' })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.endpointId).toBeUndefined()
  })

  it('routes to the vendor branch when a vendor extension is named', () => {
    const u = create(PropertyUpdateSchema, {
      deviceId: { value: 'valve-1' },
      endpointId: 1,
      vendorExtension: 'homematic.thermostat',
      attributeName: 'VALVE_STATE',
      value: { case: 'uintValue', value: 3 },
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.vendorExtension).toBe('homematic.thermostat')
    expect(decoded.clusterId).toBeUndefined()
  })

  it('leaves vendor_extension undefined on a Matter update', () => {
    const u = create(PropertyUpdateSchema, {
      endpointId: 1,
      attributeName: 'LocalTemperature',
      clusterId: 0x0201,
    })
    const decoded = fromBinary(PropertyUpdateSchema, toBinary(PropertyUpdateSchema, u))
    expect(decoded.vendorExtension).toBeUndefined()
  })
})

describe('ClusterState — the generic carrier', () => {
  it('reports an unmodelled cluster alongside typed properties', () => {
    const e = create(EndpointSchema, {
      endpointId: 1,
      matterDeviceTypeId: 0x0301,
      matterProperties: { case: 'thermostat', value: { localTemperature: 2150 } },
      clusters: [
        {
          clusterId: 0x0204,
          attributes: [{ attributeId: 0x0000, value: { value: { case: 'uintValue', value: 1n } } }],
        },
      ],
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect(decoded.matterProperties?.case).toBe('thermostat')
    expect(decoded.clusters[0].clusterId).toBe(0x0204)
    expect(decoded.clusters[0].attributes[0].value?.value?.case).toBe('uintValue')
  })

  it('carries cluster metadata for a modelled cluster without duplicating its values', () => {
    const e = create(EndpointSchema, {
      endpointId: 1,
      matterDeviceTypeId: 0x0301,
      matterProperties: { case: 'thermostat', value: { localTemperature: 2150 } },
      clusters: [{ clusterId: 0x0201, clusterRevision: 6, featureMap: 0b0011 }],
    })
    const decoded = fromBinary(EndpointSchema, toBinary(EndpointSchema, e))
    expect(decoded.clusters[0].featureMap).toBe(0b0011)
    expect(decoded.clusters[0].attributes).toHaveLength(0)
  })

  it('distinguishes a Matter null from an absent value', () => {
    const nul = create(AttributeValueSchema, { value: { case: 'nullValue', value: {} } })
    const absent = create(AttributeValueSchema, {})
    expect(nul.value?.case).toBe('nullValue')
    expect(absent.value?.case).toBeUndefined()
    expect(toBinary(AttributeValueSchema, nul)).not.toEqual(toBinary(AttributeValueSchema, absent))
  })

  it('nests a list of structs, the shape DeviceTypeList has', () => {
    const v = create(AttributeValueSchema, {
      value: {
        case: 'listValue',
        value: {
          values: [
            { value: { case: 'structValue', value: { fields: { 0: { value: { case: 'uintValue', value: 0x0301n } } } } } },
          ],
        },
      },
    })
    const decoded = fromBinary(AttributeValueSchema, toBinary(AttributeValueSchema, v))
    expect(decoded.value?.case).toBe('listValue')
  })
})

describe('bridged devices', () => {
  it('names the bridge a device sits behind', () => {
    const d = create(DeviceDescriptorSchema, {
      deviceId: { value: 'bridge-1:ep3' },
      bridgedBy: { value: 'bridge-1' },
    })
    const decoded = fromBinary(DeviceDescriptorSchema, toBinary(DeviceDescriptorSchema, d))
    expect(decoded.bridgedBy?.value).toBe('bridge-1')
  })

  it('leaves bridged_by unset for a directly reached device', () => {
    const d = create(DeviceDescriptorSchema, { deviceId: { value: 'valve-1' } })
    const decoded = fromBinary(DeviceDescriptorSchema, toBinary(DeviceDescriptorSchema, d))
    expect(decoded.bridgedBy).toBeUndefined()
  })
})

describe('implemented attribute lists', () => {
  it('names the attributes a cluster instance actually implements', () => {
    const state = create(ClusterStateSchema, {
      clusterId: 0x0201,
      attributeIds: [0x0000, 0x0012, 0x0008],
    })
    const decoded = fromBinary(ClusterStateSchema, toBinary(ClusterStateSchema, state))
    expect(decoded.attributeIds).toEqual([0x0000, 0x0012, 0x0008])
  })

  it('is empty rather than a claim of nothing when the producer does not know', () => {
    expect(create(ClusterStateSchema, { clusterId: 0x0201 }).attributeIds).toEqual([])
  })
})
