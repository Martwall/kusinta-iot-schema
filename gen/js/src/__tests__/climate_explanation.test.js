// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { timestampFromMs } from '@bufbuild/protobuf/wkt'
import {
  RoomClimateSchema,
  ClimateExplanationSchema,
  ClimateExplanationKind,
  FloorZoneOffReason,
} from '../kusinta/iot/climate/v1/climate_pb.js'

const ROOM = { value: 'room-1' }

/** @param {import('@bufbuild/protobuf').MessageInitShape<typeof RoomClimateSchema>} init */
const roundTrip = (init) =>
  fromBinary(RoomClimateSchema, toBinary(RoomClimateSchema, create(RoomClimateSchema, init)))

describe('climate explanations', () => {
  it('has none when nothing explains the room beyond its target', () => {
    expect(create(RoomClimateSchema, { spaceId: ROOM }).explanations).toEqual([])
  })

  it('keeps explanations in the order sent, most significant first', () => {
    const decoded = roundTrip({
      spaceId: ROOM,
      explanations: [
        { kind: ClimateExplanationKind.HOT_WATER_PRIORITY },
        { kind: ClimateExplanationKind.PRICE_HIGH },
      ],
    })
    expect(decoded.explanations.map((e) => e.kind)).toEqual([
      ClimateExplanationKind.HOT_WATER_PRIORITY,
      ClimateExplanationKind.PRICE_HIGH,
    ])
  })

  it('carries the window an explanation is valid for', () => {
    const decoded = roundTrip({
      spaceId: ROOM,
      explanations: [{ kind: ClimateExplanationKind.PRE_HEAT, validUntil: timestampFromMs(1_800_000_000_000) }],
    })
    expect(decoded.explanations[0].validUntil?.seconds).toBe(1_800_000_000n)
  })

  it('carries the comfort band in force, absent rather than 0 °C when there is none', () => {
    const explanation = create(ClimateExplanationSchema, { kind: ClimateExplanationKind.AT_COMFORT_CEILING })
    expect(explanation.bandHighCentidegrees).toBeUndefined()
  })

  it('carries the band in centidegrees', () => {
    const decoded = roundTrip({
      spaceId: ROOM,
      explanations: [
        { kind: ClimateExplanationKind.AT_COMFORT_CEILING, bandLowCentidegrees: 2000, bandHighCentidegrees: 2250 },
      ],
    })
    expect(decoded.explanations[0].bandHighCentidegrees).toBe(2250)
  })

  it('says why a floor zone is off', () => {
    const decoded = roundTrip({
      spaceId: ROOM,
      explanations: [{ kind: ClimateExplanationKind.FLOOR_ZONE_OFF, floorZoneOffReason: FloorZoneOffReason.PRICE }],
    })
    expect(decoded.explanations[0].floorZoneOffReason).toBe(FloorZoneOffReason.PRICE)
  })

  it('says until when a person’s target holds', () => {
    const decoded = roundTrip({ spaceId: ROOM, targetHeldUntil: timestampFromMs(1_800_000_000_000) })
    expect(decoded.targetHeldUntil?.seconds).toBe(1_800_000_000n)
  })

  it('leaves the hold absent when the target holds until somebody changes it', () => {
    expect(create(RoomClimateSchema, { spaceId: ROOM }).targetHeldUntil).toBeUndefined()
  })
})
