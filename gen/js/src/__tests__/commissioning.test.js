// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  CommissioningFactSchema,
  CommissioningTestSchema,
  CommissioningProfileSchema,
  FeatureStatusSchema,
  HouseTemplateSchema,
  Party,
  Evidence,
  Necessity,
  FactScope,
  Feature,
  FeatureState,
  BlockReason,
  TestKind,
  TestState,
  TestFailure,
} from '../kusinta/iot/commissioning/v1/commissioning_pb.js'
import { ManagementRequestSchema } from '../kusinta/iot/webrtc/v1/management_pb.js'
import { GatewayMessageSchema, ManagementResultSchema } from '../kusinta/iot/webrtc/v1/envelope_pb.js'

/**
 * @template T
 * @param {import('@bufbuild/protobuf').GenMessage<T>} schema
 * @param {import('@bufbuild/protobuf').MessageInitShape<import('@bufbuild/protobuf').GenMessage<T>>} init
 * @returns {T}
 */
const onTheWire = (schema, init) => fromBinary(schema, toBinary(schema, create(schema, init)))

describe('commissioning fact', () => {
  it('records who answered it, how and when', () => {
    const decoded = onTheWire(CommissioningFactSchema, {
      spaceId: { value: 'home-15' },
      recordId: 'circuit-1',
      key: 'floor.pump_tolerates_all_zones_off',
      value: { value: { case: 'boolValue', value: true } },
      provenance: {
        party: Party.INSTALLER,
        evidence: Evidence.MEASURED,
        at: { seconds: 1_790_000_000n },
        by: { value: 'user-installer' },
      },
    })
    expect(decoded.provenance).toMatchObject({
      party: Party.INSTALLER,
      evidence: Evidence.MEASURED,
      at: { seconds: 1_790_000_000n },
      by: { value: 'user-installer' },
    })
  })

  it('takes "don’t know" as an answer, with no value', () => {
    const decoded = onTheWire(CommissioningFactSchema, { key: 'floor.actuator_travel_seconds', unknown: true })
    expect([decoded.unknown, decoded.value]).toEqual([true, undefined])
  })

  it('says who should answer it and how much it is needed', () => {
    const decoded = onTheWire(CommissioningFactSchema, {
      answerer: Party.INSTALLER,
      necessity: Necessity.FOR_FEATURE,
      feature: Feature.FLOOR_ZONES,
    })
    expect([decoded.answerer, decoded.necessity, decoded.feature]).toEqual([
      Party.INSTALLER,
      Necessity.FOR_FEATURE,
      Feature.FLOOR_ZONES,
    ])
  })

  it('tells a house fact from household data', () => {
    expect(onTheWire(CommissioningFactSchema, { scope: FactScope.HOUSEHOLD }).scope).toBe(FactScope.HOUSEHOLD)
  })

  it('records the template version it deviates from', () => {
    expect(onTheWire(CommissioningFactSchema, { templateVersion: 3 }).templateVersion).toBe(3)
  })

  it('is no deviation when it names no template version', () => {
    expect(create(CommissioningFactSchema, {}).templateVersion).toBeUndefined()
  })
})

describe('house template', () => {
  it('is versioned and holds facts by their label on the drawing', () => {
    const decoded = onTheWire(HouseTemplateSchema, {
      buildingId: { value: 'building-1' },
      name: 'Radhus typ A',
      version: 2,
      facts: [{ key: 'floor.actuator_travel_seconds', subjectLabel: 'SL 2', value: { value: { case: 'uintValue', value: 210n } } }],
    })
    expect(decoded).toMatchObject({ version: 2, facts: [{ subjectLabel: 'SL 2' }] })
  })
})

describe('feature status', () => {
  it('names what a feature needs and who can answer it', () => {
    const decoded = onTheWire(FeatureStatusSchema, {
      feature: Feature.FLOOR_ZONES,
      state: FeatureState.NEEDS,
      needs: [
        { what: { case: 'factKey', value: 'floor.max_zones_switching_on' }, recordId: 'circuit-1', answerer: Party.INSTALLER },
        { what: { case: 'test', value: TestKind.OUTPUT_LEASE }, recordId: 'zone-2', answerer: Party.INSTALLER },
      ],
    })
    expect(decoded.needs).toMatchObject([
      { what: { case: 'factKey', value: 'floor.max_zones_switching_on' }, answerer: Party.INSTALLER },
      { what: { case: 'test', value: TestKind.OUTPUT_LEASE }, recordId: 'zone-2' },
    ])
  })

  it('says why a feature is blocked for safety, and on what', () => {
    const decoded = onTheWire(FeatureStatusSchema, {
      state: FeatureState.BLOCKED_FOR_SAFETY,
      blocks: [{ reason: BlockReason.TEST_FAILED, recordId: 'zone-2', deviceId: { value: 'relay-1' } }],
    })
    expect(decoded.blocks).toMatchObject([{ reason: BlockReason.TEST_FAILED, recordId: 'zone-2' }])
  })

  it('says when its to-dos are withheld rather than none', () => {
    const decoded = onTheWire(CommissioningProfileSchema, { needsWithheld: true })
    expect(decoded.needsWithheld).toBe(true)
  })
})

describe('commissioning test', () => {
  it('names the binding it drives and when it ends at the latest', () => {
    const decoded = onTheWire(CommissioningTestSchema, {
      testId: 't-1',
      kind: TestKind.OUTPUT_LEASE,
      recordId: 'zone-2',
      field: 'output',
      deviceId: { value: 'relay-1' },
      state: TestState.RUNNING,
      endsAt: { seconds: 1_790_000_600n },
    })
    expect(decoded).toMatchObject({ recordId: 'zone-2', field: 'output', endsAt: { seconds: 1_790_000_600n } })
  })

  it('says how it failed', () => {
    const decoded = onTheWire(CommissioningTestSchema, { state: TestState.FAILED, failure: TestFailure.DID_NOT_RETURN_TO_REST })
    expect(decoded.failure).toBe(TestFailure.DID_NOT_RETURN_TO_REST)
  })

  it('marks a pass that no longer holds', () => {
    expect(onTheWire(CommissioningTestSchema, { state: TestState.PASSED, superseded: true }).superseded).toBe(true)
  })
})

describe('commissioning requests', () => {
  it('puts one fact', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'putCommissioningFact', value: { fact: { key: 'plant.max_block_minutes', revision: 2n } } },
    })
    expect(decoded.request).toMatchObject({ case: 'putCommissioningFact', value: { fact: { revision: 2n } } })
  })

  it('runs a test on one binding of a record', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: {
        case: 'runCommissioningTest',
        value: { kind: TestKind.OUTPUT_LEASE, recordId: 'plant-1', field: 'sg_ready_block' },
      },
    })
    expect(decoded.request).toMatchObject({ case: 'runCommissioningTest', value: { field: 'sg_ready_block' } })
  })

  it('concludes an observed test with the installer’s verdict', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'concludeCommissioningTest', value: { testId: 't-3', verdict: TestState.PASSED } },
    })
    expect(decoded.request).toMatchObject({ case: 'concludeCommissioningTest', value: { verdict: TestState.PASSED } })
  })

  it('lists which homes are set up', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      inReplyTo: 'm-1',
      result: { case: 'homeSetups', value: { homes: [{ homeId: { value: 'home-15' }, setUp: true }] } },
    })
    expect(decoded.result).toMatchObject({ case: 'homeSetups', value: { homes: [{ setUp: true }] } })
  })

  it('answers a listing with the profile', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'commissioningProfile', value: { spaceId: { value: 'home-15' }, templateId: 'tpl-a' } },
    })
    expect(decoded.result).toMatchObject({ case: 'commissioningProfile', value: { templateId: 'tpl-a' } })
  })

  it('answers a put with the record as stored', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'commissioningRecord', value: { record: { case: 'test', value: { testId: 't-1' } } } },
    })
    expect(decoded.result).toMatchObject({ case: 'commissioningRecord', value: { record: { case: 'test' } } })
  })

  it('pushes a test’s change of state', () => {
    const decoded = onTheWire(GatewayMessageSchema, {
      payload: { case: 'commissioningTest', value: { testId: 't-1', state: TestState.PASSED } },
    })
    expect(decoded.payload).toMatchObject({ case: 'commissioningTest', value: { state: TestState.PASSED } })
  })
})
