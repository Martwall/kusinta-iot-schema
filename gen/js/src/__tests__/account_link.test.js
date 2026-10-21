// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  TokenGrantSchema,
  TokenRefreshedSchema,
  TokenOutcome,
} from '../kusinta/iot/accountlink/v1/account_link_pb.js'

describe('token grant', () => {
  it('keeps the access grant apart from the refresh token', () => {
    const grant = create(TokenGrantSchema, { access: { accessToken: 'a', scope: 'READSYSTEM' }, refreshToken: 'r' })
    const decoded = fromBinary(TokenGrantSchema, toBinary(TokenGrantSchema, grant))
    expect(decoded).toMatchObject({ access: { accessToken: 'a', scope: 'READSYSTEM' }, refreshToken: 'r' })
  })
})

describe('refresh answer', () => {
  it('tells the gateway how long to wait before asking again', () => {
    const answer = create(TokenRefreshedSchema, { outcome: TokenOutcome.UNAVAILABLE, retryAfter: { seconds: 90n } })
    const decoded = fromBinary(TokenRefreshedSchema, toBinary(TokenRefreshedSchema, answer))
    expect(decoded.retryAfter?.seconds).toBe(90n)
  })
})
