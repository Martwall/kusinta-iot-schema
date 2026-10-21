// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HeatingPlantSchema,
  HeatingCircuitSchema,
  FloorCircuitSchema,
  FloorZoneSchema,
  ContactBindingSchema,
  ComfortLoadSchema,
} from '../kusinta/iot/heating/v1/heating_pb.js'

/**
 * A relay channel whose contact is closed while the channel is off: a changeover relay
 * wired through its normally closed contact.
 * @param {number} endpointId
 */
const ncChannel = (endpointId) => ({
  output: {
    deviceId: { value: 'relay-1' },
    attribute: { attributeName: 'OnOff', clusterId: 0x0006, attributeId: 0x0000, endpointId },
  },
  closedValue: { value: { case: /** @type {const} */ ('boolValue'), value: false } },
})

/**
 * @template T
 * @param {import('@bufbuild/protobuf').GenMessage<T>} schema
 * @param {import('@bufbuild/protobuf').MessageInitShape<import('@bufbuild/protobuf').GenMessage<T>>} init
 * @returns {T}
 */
const onTheWire = (schema, init) => fromBinary(schema, toBinary(schema, create(schema, init)))

describe('contact binding', () => {
  it('states which output value closes the contact, since that is a wiring fact', () => {
    const decoded = onTheWire(ContactBindingSchema, ncChannel(2))
    expect(decoded.closedValue?.value).toEqual({ case: 'boolValue', value: false })
  })
})

describe('heating plant', () => {
  it('is read only when it has no control', () => {
    expect(create(HeatingPlantSchema, {}).control.case).toBeUndefined()
  })

  it('steers a heat pump through its SG Ready inputs and add-on heater block', () => {
    const decoded = onTheWire(HeatingPlantSchema, {
      control: {
        case: 'heatPump',
        value: { sgReadyBlock: ncChannel(1), sgReadyBoost: ncChannel(2), addOnHeaterBlock: ncChannel(3) },
      },
    })
    expect(decoded.control).toMatchObject({
      case: 'heatPump',
      value: {
        sgReadyBlock: { output: { attribute: { endpointId: 1 } } },
        sgReadyBoost: { output: { attribute: { endpointId: 2 } } },
        addOnHeaterBlock: { output: { attribute: { endpointId: 3 } } },
      },
    })
  })
})

describe('heating circuit', () => {
  it('is a radiator or a floor circuit, by its distribution', () => {
    const decoded = onTheWire(HeatingCircuitSchema, { plantId: 'plant-1', distribution: { case: 'radiator', value: {} } })
    expect(decoded.distribution.case).toBe('radiator')
  })

  it('leaves an unknown supply cap absent rather than 0 °C', () => {
    expect(create(FloorCircuitSchema, {}).supplyCapCentidegrees).toBeUndefined()
  })
})

describe('floor zone', () => {
  it('heats several rooms by area share, steered by one control room', () => {
    const decoded = onTheWire(FloorZoneSchema, {
      circuitId: 'circuit-1',
      name: 'SL 4',
      output: ncChannel(4),
      rooms: [
        { roomId: { value: 'room-hall' }, areaSharePermille: 400 },
        { roomId: { value: 'room-bath' }, areaSharePermille: 600 },
      ],
      controlRoomId: { value: 'room-bath' },
    })
    expect(decoded).toMatchObject({
      rooms: [
        { roomId: { value: 'room-hall' }, areaSharePermille: 400 },
        { roomId: { value: 'room-bath' }, areaSharePermille: 600 },
      ],
      controlRoomId: { value: 'room-bath' },
    })
  })
})

describe('comfort load', () => {
  it('carries its time windows, in minutes of the building’s local day', () => {
    const decoded = onTheWire(ComfortLoadSchema, {
      roomId: { value: 'room-bath' },
      output: ncChannel(5),
      windows: [{ weekdays: 0b0011111, startMinute: 360, endMinute: 480 }],
    })
    expect(decoded.windows).toMatchObject([{ weekdays: 0b0011111, startMinute: 360, endMinute: 480 }])
  })

  it('has no windows by default', () => {
    expect(create(ComfortLoadSchema, {}).windows).toEqual([])
  })
})
