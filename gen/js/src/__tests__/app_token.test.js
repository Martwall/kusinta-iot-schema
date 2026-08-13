// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { Role } from '../kusinta/iot/access/v1/roles_pb.js'
import { AppTokenClaimsSchema, ConfirmationSchema } from '../kusinta/iot/webrtc/v1/app_token_pb.js'

describe('AppTokenClaims', () => {
  it('round-trips the registered and custom claims', () => {
    const claims = create(AppTokenClaimsSchema, {
      iss: 'mykusinta-api-server',
      aud: 'gw-1',
      sub: 'user-1',
      iat: { seconds: 1750000000n },
      exp: { seconds: 1750003600n },
      roles: [Role.RESIDENT, Role.GATEWAY_ADMIN],
    })
    const decoded = fromBinary(AppTokenClaimsSchema, toBinary(AppTokenClaimsSchema, claims))
    expect(decoded.iss).toBe('mykusinta-api-server')
    expect(decoded.aud).toBe('gw-1')
    expect(decoded.sub).toBe('user-1')
    expect(decoded.iat?.seconds).toBe(1750000000n)
    expect(decoded.exp?.seconds).toBe(1750003600n)
    expect(decoded.roles).toEqual([Role.RESIDENT, Role.GATEWAY_ADMIN])
  })

  // cnf is mandatory by contract, but proto3 cannot express that — an unbound
  // token is still representable, which is precisely why a validator has to
  // check for it rather than trust the schema to.
  it('still represents a token with no cnf, which a validator must reject', () => {
    const claims = create(AppTokenClaimsSchema, { sub: 'user-1' })
    const decoded = fromBinary(AppTokenClaimsSchema, toBinary(AppTokenClaimsSchema, claims))
    expect(decoded.cnf).toBeUndefined()
  })

  it('round-trips a cnf confirmation claim', () => {
    const claims = create(AppTokenClaimsSchema, {
      sub: 'user-1',
      cnf: { x5tS256: 'lNb3gYr8bK1w2QK6iH4bJ0iP4l3sVYhX2mZ6q7Xf3rM' },
    })
    const decoded = fromBinary(AppTokenClaimsSchema, toBinary(AppTokenClaimsSchema, claims))
    expect(decoded.cnf?.x5tS256).toBe('lNb3gYr8bK1w2QK6iH4bJ0iP4l3sVYhX2mZ6q7Xf3rM')
  })
})

describe('Confirmation', () => {
  it('defaults x5t_s256 to the empty string', () => {
    const cnf = create(ConfirmationSchema, {})
    const decoded = fromBinary(ConfirmationSchema, toBinary(ConfirmationSchema, cnf))
    expect(decoded.x5tS256).toBe('')
  })

  it('round-trips a base64url SHA-256 thumbprint', () => {
    const cnf = create(ConfirmationSchema, { x5tS256: 'Zm9vYmFyYmF6' })
    const decoded = fromBinary(ConfirmationSchema, toBinary(ConfirmationSchema, cnf))
    expect(decoded.x5tS256).toBe('Zm9vYmFyYmF6')
  })
})
