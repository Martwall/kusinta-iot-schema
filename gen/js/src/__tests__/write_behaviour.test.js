// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  ClusterStateSchema,
  AttributeWriteBehaviourSchema,
  WritePersistence,
  ReadLatency,
} from '../kusinta/iot/device/v1/cluster_state_pb.js'
import { AttributeWriteRequestSchema } from '../kusinta/iot/webrtc/v1/command_pb.js'

const ON_OFF = 0x0000

/** @param {import('@bufbuild/protobuf').MessageInitShape<typeof ClusterStateSchema>} init */
const roundTrip = (init) =>
  fromBinary(ClusterStateSchema, toBinary(ClusterStateSchema, create(ClusterStateSchema, init)))

describe('attribute write behaviour', () => {
  it('is not stated rather than sticky or leased when the producer says nothing', () => {
    expect(create(ClusterStateSchema, { clusterId: 0x0006 }).attributeWriteBehaviours).toEqual({})
  })

  it('states a lease the device keeps itself, with its bounds', () => {
    const decoded = roundTrip({
      clusterId: 0x0006,
      attributeWriteBehaviours: {
        [ON_OFF]: { persistence: WritePersistence.LEASED, minLeaseSeconds: 60, maxLeaseSeconds: 7200 },
      },
    })
    expect(decoded.attributeWriteBehaviours[ON_OFF].maxLeaseSeconds).toBe(7200)
  })

  it('says whether a write before the lease lapses restarts it', () => {
    const decoded = roundTrip({
      clusterId: 0x0006,
      attributeWriteBehaviours: {
        [ON_OFF]: { persistence: WritePersistence.LEASED, renewalRestartsLease: true },
      },
    })
    expect(decoded.attributeWriteBehaviours[ON_OFF].renewalRestartsLease).toBe(true)
  })

  it('states the value the device returns to at rest', () => {
    const decoded = roundTrip({
      clusterId: 0x0006,
      attributeWriteBehaviours: {
        [ON_OFF]: {
          persistence: WritePersistence.LEASED,
          restValue: { value: { case: 'boolValue', value: true } },
        },
      },
    })
    expect(decoded.attributeWriteBehaviours[ON_OFF].restValue?.value).toEqual({ case: 'boolValue', value: true })
  })

  it('leaves lease bounds absent rather than zero when not stated', () => {
    const behaviour = create(AttributeWriteBehaviourSchema, { persistence: WritePersistence.STICKY })
    expect(behaviour.maxLeaseSeconds).toBeUndefined()
  })

  it('states the shortest interval between writes the device takes without loss', () => {
    const decoded = roundTrip({
      clusterId: 0x0201,
      attributeWriteBehaviours: { [0x0012]: { persistence: WritePersistence.STICKY, minWriteIntervalSeconds: 120 } },
    })
    expect(decoded.attributeWriteBehaviours[0x0012].minWriteIntervalSeconds).toBe(120)
  })
})

describe('attribute read latency', () => {
  it('is not stated when the producer says nothing', () => {
    expect(create(ClusterStateSchema, { clusterId: 0x0201 }).attributeReadLatencies).toEqual({})
  })

  it('states that a reading arrives late', () => {
    const decoded = roundTrip({ clusterId: 0x0201, attributeReadLatencies: { [0x0000]: ReadLatency.DELAYED } })
    expect(decoded.attributeReadLatencies[0x0000]).toBe(ReadLatency.DELAYED)
  })
})

describe('a leased write', () => {
  it('carries how long the written value holds', () => {
    const req = create(AttributeWriteRequestSchema, { requestId: 'w-1', leaseSeconds: 1800 })
    const decoded = fromBinary(AttributeWriteRequestSchema, toBinary(AttributeWriteRequestSchema, req))
    expect(decoded.leaseSeconds).toBe(1800)
  })

  it('leaves the lease absent on a plain write', () => {
    expect(create(AttributeWriteRequestSchema, { requestId: 'w-2' }).leaseSeconds).toBeUndefined()
  })
})
