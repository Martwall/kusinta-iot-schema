// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  RegistrationRequestSchema,
  RegistrationProgressSchema,
  RegistrationCompleteSchema,
  RegistrationErrorSchema,
  RegistrationResponseSchema,
  CertRenewalRequestSchema,
  CertRenewalResponseSchema,
} from '../kusinta/iot/registration/v1/registration_pb.js'

describe('RegistrationRequest', () => {
  it('round-trips all fields', () => {
    const req = create(RegistrationRequestSchema, {
      registrationToken: 'tok-abc123',
      externalIp: '203.0.113.42',
      csrPem: '-----BEGIN CERTIFICATE REQUEST-----\nMIIBIjAN\n-----END CERTIFICATE REQUEST-----',
    })
    const decoded = fromBinary(RegistrationRequestSchema, toBinary(RegistrationRequestSchema, req))
    expect(decoded.registrationToken).toBe('tok-abc123')
    expect(decoded.externalIp).toBe('203.0.113.42')
    expect(decoded.csrPem).toContain('BEGIN CERTIFICATE REQUEST')
  })
})

describe('RegistrationResponse oneof event', () => {
  it('round-trips progress event', () => {
    const resp = create(RegistrationResponseSchema, {
      event: { case: 'progress', value: { step: 'Validating token' } },
    })
    const decoded = fromBinary(RegistrationResponseSchema, toBinary(RegistrationResponseSchema, resp))
    expect(decoded.event?.case).toBe('progress')
    if (decoded.event?.case === 'progress') {
      expect(decoded.event.value.step).toBe('Validating token')
    }
  })

  it('round-trips complete event', () => {
    const resp = create(RegistrationResponseSchema, {
      event: {
        case: 'complete',
        value: {
          certificatePem: '-----BEGIN CERTIFICATE-----\nMIIBIjAN\n-----END CERTIFICATE-----',
          caBundlePem: '-----BEGIN CERTIFICATE-----\nCABUNDLE\n-----END CERTIFICATE-----',
        },
      },
    })
    const decoded = fromBinary(RegistrationResponseSchema, toBinary(RegistrationResponseSchema, resp))
    expect(decoded.event?.case).toBe('complete')
    if (decoded.event?.case === 'complete') {
      expect(decoded.event.value.certificatePem).toContain('BEGIN CERTIFICATE')
      expect(decoded.event.value.caBundlePem).toContain('CABUNDLE')
    }
  })

  it('round-trips error event', () => {
    const resp = create(RegistrationResponseSchema, {
      event: { case: 'error', value: { code: 'TOKEN_EXPIRED', message: 'Registration token has expired' } },
    })
    const decoded = fromBinary(RegistrationResponseSchema, toBinary(RegistrationResponseSchema, resp))
    expect(decoded.event?.case).toBe('error')
    if (decoded.event?.case === 'error') {
      expect(decoded.event.value.code).toBe('TOKEN_EXPIRED')
      expect(decoded.event.value.message).toBe('Registration token has expired')
    }
  })

  it('defaults to no event set', () => {
    const resp = create(RegistrationResponseSchema, {})
    const decoded = fromBinary(RegistrationResponseSchema, toBinary(RegistrationResponseSchema, resp))
    expect(decoded.event?.case).toBeUndefined()
  })
})

describe('CertRenewal', () => {
  it('round-trips request and response', () => {
    const req = create(CertRenewalRequestSchema, {
      csrPem: '-----BEGIN CERTIFICATE REQUEST-----\nRENEWAL\n-----END CERTIFICATE REQUEST-----',
    })
    const decodedReq = fromBinary(CertRenewalRequestSchema, toBinary(CertRenewalRequestSchema, req))
    expect(decodedReq.csrPem).toContain('RENEWAL')

    const resp = create(CertRenewalResponseSchema, {
      certificatePem: '-----BEGIN CERTIFICATE-----\nNEWCERT\n-----END CERTIFICATE-----',
      caBundlePem: '-----BEGIN CERTIFICATE-----\nCABUNDLE\n-----END CERTIFICATE-----',
    })
    const decodedResp = fromBinary(CertRenewalResponseSchema, toBinary(CertRenewalResponseSchema, resp))
    expect(decodedResp.certificatePem).toContain('NEWCERT')
    expect(decodedResp.caBundlePem).toContain('CABUNDLE')
  })
})
