// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { GetPlanningInputsResponseSchema } from '../kusinta/iot/planning/v1/planning_service_pb.js'

/**
 * Round-trips a message through the wire so assertions read decoded bytes rather
 * than the literal they were built from.
 * @template T
 * @param {import('@bufbuild/protobuf').GenMessage<T>} schema
 * @param {import('@bufbuild/protobuf').MessageInitShape<import('@bufbuild/protobuf').GenMessage<T>>} init
 */
const onTheWire = (schema, init) => fromBinary(schema, toBinary(schema, create(schema, init)))

describe('planning inputs', () => {
  it('answers the reference rates beside the prices', () => {
    const decoded = onTheWire(GetPlanningInputsResponseSchema, {
      prices: [{ start: { seconds: 1794178800n }, end: { seconds: 1794179700n }, eurCentsPerMwh: 4210 }],
      exchangeRates: [
        { currency: 'SEK', publishedOn: '2026-11-06', perEurE4: 113610, source: 'Sveriges Riksbank' },
        { currency: 'SEK', publishedOn: '2026-11-09', perEurE4: 113725, source: 'Sveriges Riksbank' },
      ],
    })
    expect(decoded.exchangeRates).toMatchObject([{ publishedOn: '2026-11-06' }, { publishedOn: '2026-11-09', perEurE4: 113725 }])
  })

  it('answers no rates where none is known', () => {
    const decoded = onTheWire(GetPlanningInputsResponseSchema, { prices: [] })
    expect(decoded.exchangeRates).toEqual([])
  })
})
