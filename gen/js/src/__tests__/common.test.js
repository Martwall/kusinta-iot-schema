// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { ErrorDetailSchema } from '../kusinta/iot/common/v1/types_pb.js'

describe('ErrorDetail', () => {
  it('round-trips code and message', () => {
    const original = create(ErrorDetailSchema, { code: 'NOT_FOUND', message: 'device not found', metadata: {} })
    const decoded = fromBinary(ErrorDetailSchema, toBinary(ErrorDetailSchema, original))
    expect(decoded.code).toBe('NOT_FOUND')
    expect(decoded.message).toBe('device not found')
  })

  it('round-trips metadata map entries', () => {
    const original = create(ErrorDetailSchema, {
      code: 'PERMISSION_DENIED',
      message: 'write not allowed',
      metadata: { deviceId: 'abc-123', attribute: 'OccupiedHeatingSetpoint' },
    })
    const decoded = fromBinary(ErrorDetailSchema, toBinary(ErrorDetailSchema, original))
    expect(decoded.metadata['deviceId']).toBe('abc-123')
    expect(decoded.metadata['attribute']).toBe('OccupiedHeatingSetpoint')
  })

  it('produces an empty byte array for a default instance', () => {
    const bytes = toBinary(ErrorDetailSchema, create(ErrorDetailSchema))
    expect(bytes.length).toBe(0)
  })
})
