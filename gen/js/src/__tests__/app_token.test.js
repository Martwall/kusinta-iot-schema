// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { Role } from '../kusinta/iot/access/v1/roles_pb.js'
import { AppTokenClaimsSchema } from '../kusinta/iot/webrtc/v1/app_token_pb.js'

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
})
