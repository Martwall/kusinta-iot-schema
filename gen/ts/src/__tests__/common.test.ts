import { describe, it, expect } from 'vitest'
import { ErrorDetail } from '../common/types.js'

describe('ErrorDetail', () => {
  it('round-trips code and message', () => {
    const original: ErrorDetail = { code: 'NOT_FOUND', message: 'device not found', metadata: {} }
    const bytes = ErrorDetail.encode(original).finish()
    const decoded = ErrorDetail.decode(bytes)
    expect(decoded.code).toBe('NOT_FOUND')
    expect(decoded.message).toBe('device not found')
  })

  it('round-trips metadata map entries', () => {
    const original: ErrorDetail = {
      code: 'PERMISSION_DENIED',
      message: 'write not allowed',
      metadata: { deviceId: 'abc-123', attribute: 'OccupiedHeatingSetpoint' }
    }
    const bytes = ErrorDetail.encode(original).finish()
    const decoded = ErrorDetail.decode(bytes)
    expect(decoded.metadata['deviceId']).toBe('abc-123')
    expect(decoded.metadata['attribute']).toBe('OccupiedHeatingSetpoint')
  })

  it('produces an empty byte array for a default instance', () => {
    const bytes = ErrorDetail.encode(ErrorDetail.create()).finish()
    expect(bytes.length).toBe(0)
  })
})
