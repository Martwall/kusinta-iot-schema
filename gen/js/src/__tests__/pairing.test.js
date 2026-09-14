// @ts-check
import { describe, it, expect } from 'vitest'
import { PairingError } from '../kusinta/iot/common/v1/pairing_pb.js'

describe('PairingError', () => {
  it('has a code for an untargeted pairing request, distinct from the transient one', () => {
    // Pairing must always name a connector; the gateway refuses an untargeted
    // request with CONNECTOR_REQUIRED rather than fanning out. It must not reuse
    // CONNECTOR_UNAVAILABLE, which reads as "retry later".
    expect(PairingError.CONNECTOR_REQUIRED).toBe(8)
    expect(PairingError.CONNECTOR_REQUIRED).not.toBe(PairingError.CONNECTOR_UNAVAILABLE)
  })
})
