// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  HeatingPlantSchema,
  HeatingCircuitSchema,
  ContactBindingSchema,
  ComfortLoadSchema,
  HeatSourceKind,
  CircuitKind,
  CommissioningState,
} from '../kusinta/iot/heating/v1/heating_pb.js'

const LIVING_ROOM = { value: 'room-living' }
const HALLWAY = { value: 'room-hall' }

/**
 * A relay channel whose contact is closed while the channel is off: a changeover relay
 * wired through its normally closed contact.
 * @param {number} endpointId
 */
const ncChannel = (endpointId) => ({
  deviceId: { value: 'relay-1' },
  output: { attributeName: 'OnOff', clusterId: 0x0006, attributeId: 0x0000, endpointId },
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

  it('is not stated as commissioned until the gateway says so', () => {
    expect(create(ContactBindingSchema, ncChannel(2)).commissioning).toBe(CommissioningState.UNSPECIFIED)
  })

  it('carries the commissioning state the gateway reports', () => {
    const decoded = onTheWire(ContactBindingSchema, { ...ncChannel(2), commissioning: CommissioningState.PASSED })
    expect(decoded.commissioning).toBe(CommissioningState.PASSED)
  })
})

describe('heating plant', () => {
  it('names its heat source', () => {
    const decoded = onTheWire(HeatingPlantSchema, { source: HeatSourceKind.EXHAUST_AIR_HEAT_PUMP })
    expect(decoded.source).toBe(HeatSourceKind.EXHAUST_AIR_HEAT_PUMP)
  })

  it('binds the two SG Ready inputs by what each means when closed alone', () => {
    const decoded = onTheWire(HeatingPlantSchema, { sgReadyBlock: ncChannel(1), sgReadyBoost: ncChannel(2) })
    expect([decoded.sgReadyBlock?.output?.endpointId, decoded.sgReadyBoost?.output?.endpointId]).toEqual([1, 2])
  })

  it('binds the add-on heat block apart from SG Ready', () => {
    const decoded = onTheWire(HeatingPlantSchema, { addHeatBlock: ncChannel(3) })
    expect(decoded.addHeatBlock?.output?.endpointId).toBe(3)
  })

  it('carries the revision a replacement must name', () => {
    const decoded = onTheWire(HeatingPlantSchema, { revision: 7n })
    expect(decoded.revision).toBe(7n)
  })
})

describe('floor circuit', () => {
  it('leaves an unknown supply cap absent rather than 0 °C', () => {
    expect(create(HeatingCircuitSchema, { kind: CircuitKind.FLOOR }).supplyCapCentidegrees).toBeUndefined()
  })

  it('binds its supply and return probes', () => {
    const decoded = onTheWire(HeatingCircuitSchema, {
      kind: CircuitKind.FLOOR,
      supplyProbe: { deviceId: { value: 'probe-1' }, reading: { endpointId: 1, clusterId: 0x0402, attributeId: 0 } },
      returnProbe: { deviceId: { value: 'probe-1' }, reading: { endpointId: 2, clusterId: 0x0402, attributeId: 0 } },
    })
    expect([decoded.supplyProbe?.reading?.endpointId, decoded.returnProbe?.reading?.endpointId]).toEqual([1, 2])
  })

  it('lets one zone heat several rooms, one of them its control room', () => {
    const decoded = onTheWire(HeatingCircuitSchema, {
      kind: CircuitKind.FLOOR,
      zones: [
        {
          name: 'SL 4',
          output: ncChannel(4),
          rooms: [
            { roomId: HALLWAY, areaSharePermille: 400 },
            { roomId: LIVING_ROOM, areaSharePermille: 600, isControl: true },
          ],
        },
      ],
    })
    expect(decoded.zones[0].rooms.map((r) => [r.roomId?.value, r.areaSharePermille, r.isControl])).toEqual([
      ['room-hall', 400, false],
      ['room-living', 600, true],
    ])
  })

  it('lets one room be heated by several zones', () => {
    const decoded = onTheWire(HeatingCircuitSchema, {
      kind: CircuitKind.FLOOR,
      zones: [
        { name: 'SL 2', output: ncChannel(2), rooms: [{ roomId: LIVING_ROOM, areaSharePermille: 1000, isControl: true }] },
        { name: 'SL 3', output: ncChannel(3), rooms: [{ roomId: LIVING_ROOM, areaSharePermille: 1000, isControl: true }] },
      ],
    })
    expect(decoded.zones.map((z) => z.rooms[0].roomId?.value)).toEqual(['room-living', 'room-living'])
  })
})

describe('comfort load', () => {
  it('carries its time windows, in minutes of the building’s local day', () => {
    const decoded = onTheWire(ComfortLoadSchema, {
      roomId: { value: 'room-bath' },
      output: ncChannel(5),
      windows: [{ weekdays: 0b0011111, startMinute: 360, endMinute: 480 }],
    })
    expect(decoded.windows[0]).toMatchObject({ weekdays: 0b0011111, startMinute: 360, endMinute: 480 })
  })

  it('has no windows by default', () => {
    expect(create(ComfortLoadSchema, {}).windows).toEqual([])
  })
})
