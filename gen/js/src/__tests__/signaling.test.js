// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  SdpOfferSchema,
  SdpAnswerSchema,
  IceCandidateSchema,
  HeartBeatSchema,
  UserHandshakeSchema,
  UserHandshakeAckSchema,
  GatewayConnectRequestSchema,
  GatewayConnectResponseSchema,
  UserConnectRequestSchema,
  UserConnectResponseSchema,
} from '../kusinta/iot/signaling/v1/signaling_pb.js'

describe('SdpOffer / SdpAnswer / IceCandidate', () => {
  it('round-trips SdpOffer', () => {
    const offer = create(SdpOfferSchema, { sdp: 'v=0\r\no=- 0 0 IN IP4 0.0.0.0\r\n' })
    const decoded = fromBinary(SdpOfferSchema, toBinary(SdpOfferSchema, offer))
    expect(decoded.sdp).toContain('v=0')
  })

  it('round-trips SdpAnswer', () => {
    const answer = create(SdpAnswerSchema, { sdp: 'v=0\r\no=- 1 1 IN IP4 0.0.0.0\r\n' })
    const decoded = fromBinary(SdpAnswerSchema, toBinary(SdpAnswerSchema, answer))
    expect(decoded.sdp).toContain('v=0')
  })

  it('round-trips IceCandidate', () => {
    const ice = create(IceCandidateSchema, { candidate: 'candidate:1 1 UDP 2130706431 192.168.1.1 54321 typ host' })
    const decoded = fromBinary(IceCandidateSchema, toBinary(IceCandidateSchema, ice))
    expect(decoded.candidate).toContain('typ host')
  })
})

describe('UserHandshake / UserHandshakeAck', () => {
  it('round-trips UserHandshake with gateway id', () => {
    const hs = create(UserHandshakeSchema, { targetGatewayId: { value: 'gw-home-1' } })
    const decoded = fromBinary(UserHandshakeSchema, toBinary(UserHandshakeSchema, hs))
    expect(decoded.targetGatewayId?.value).toBe('gw-home-1')
  })

  it('round-trips UserHandshakeAck accepted', () => {
    const ack = create(UserHandshakeAckSchema, { accepted: true, reason: '' })
    const decoded = fromBinary(UserHandshakeAckSchema, toBinary(UserHandshakeAckSchema, ack))
    expect(decoded.accepted).toBe(true)
  })

  it('round-trips UserHandshakeAck rejected with reason', () => {
    const ack = create(UserHandshakeAckSchema, { accepted: false, reason: 'JWT expired' })
    const decoded = fromBinary(UserHandshakeAckSchema, toBinary(UserHandshakeAckSchema, ack))
    expect(decoded.accepted).toBe(false)
    expect(decoded.reason).toBe('JWT expired')
  })
})

describe('GatewayConnectRequest oneof payload', () => {
  it('round-trips answer payload', () => {
    const req = create(GatewayConnectRequestSchema, {
      targetUserId: { value: 'user-42' },
      payload: { case: 'answer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(GatewayConnectRequestSchema, toBinary(GatewayConnectRequestSchema, req))
    expect(decoded.targetUserId?.value).toBe('user-42')
    expect(decoded.payload?.case).toBe('answer')
    if (decoded.payload?.case === 'answer') {
      expect(decoded.payload.value.sdp).toContain('v=0')
    }
  })

  it('round-trips ice_candidate payload', () => {
    const req = create(GatewayConnectRequestSchema, {
      targetUserId: { value: 'user-42' },
      payload: { case: 'iceCandidate', value: { candidate: 'candidate:1 1 UDP 2130706431 10.0.0.1 12345 typ host' } },
    })
    const decoded = fromBinary(GatewayConnectRequestSchema, toBinary(GatewayConnectRequestSchema, req))
    expect(decoded.payload?.case).toBe('iceCandidate')
    if (decoded.payload?.case === 'iceCandidate') {
      expect(decoded.payload.value.candidate).toContain('typ host')
    }
  })

  it('round-trips heartbeat payload (keepalive, no target user)', () => {
    const req = create(GatewayConnectRequestSchema, {
      payload: { case: 'heartbeat', value: create(HeartBeatSchema, {}) },
    })
    const decoded = fromBinary(GatewayConnectRequestSchema, toBinary(GatewayConnectRequestSchema, req))
    expect(decoded.payload?.case).toBe('heartbeat')
  })
})

describe('GatewayConnectResponse oneof payload', () => {
  it('round-trips offer payload', () => {
    const resp = create(GatewayConnectResponseSchema, {
      fromUserId: { value: 'user-1' },
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(GatewayConnectResponseSchema, toBinary(GatewayConnectResponseSchema, resp))
    expect(decoded.fromUserId?.value).toBe('user-1')
    expect(decoded.payload?.case).toBe('offer')
  })

  it('round-trips ice_candidate payload', () => {
    const resp = create(GatewayConnectResponseSchema, {
      fromUserId: { value: 'user-1' },
      payload: { case: 'iceCandidate', value: { candidate: 'candidate:2 1 UDP 1694498815 203.0.113.1 54321 typ srflx' } },
    })
    const decoded = fromBinary(GatewayConnectResponseSchema, toBinary(GatewayConnectResponseSchema, resp))
    expect(decoded.payload?.case).toBe('iceCandidate')
    if (decoded.payload?.case === 'iceCandidate') {
      expect(decoded.payload.value.candidate).toContain('typ srflx')
    }
  })
})

describe('UserConnectRequest oneof payload', () => {
  it('round-trips handshake payload', () => {
    const req = create(UserConnectRequestSchema, {
      payload: { case: 'handshake', value: { targetGatewayId: { value: 'gw-home-1' } } },
    })
    const decoded = fromBinary(UserConnectRequestSchema, toBinary(UserConnectRequestSchema, req))
    expect(decoded.payload?.case).toBe('handshake')
    if (decoded.payload?.case === 'handshake') {
      expect(decoded.payload.value.targetGatewayId?.value).toBe('gw-home-1')
    }
  })

  it('round-trips offer payload', () => {
    const req = create(UserConnectRequestSchema, {
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(UserConnectRequestSchema, toBinary(UserConnectRequestSchema, req))
    expect(decoded.payload?.case).toBe('offer')
  })

  it('round-trips ice_candidate payload', () => {
    const req = create(UserConnectRequestSchema, {
      payload: { case: 'iceCandidate', value: { candidate: 'candidate:1 1 UDP 2130706431 192.168.1.2 56789 typ host' } },
    })
    const decoded = fromBinary(UserConnectRequestSchema, toBinary(UserConnectRequestSchema, req))
    expect(decoded.payload?.case).toBe('iceCandidate')
  })
})

describe('UserConnectResponse oneof payload', () => {
  it('round-trips handshake_ack accepted', () => {
    const resp = create(UserConnectResponseSchema, {
      payload: { case: 'handshakeAck', value: { accepted: true } },
    })
    const decoded = fromBinary(UserConnectResponseSchema, toBinary(UserConnectResponseSchema, resp))
    expect(decoded.payload?.case).toBe('handshakeAck')
    if (decoded.payload?.case === 'handshakeAck') {
      expect(decoded.payload.value.accepted).toBe(true)
    }
  })

  it('round-trips handshake_ack rejected', () => {
    const resp = create(UserConnectResponseSchema, {
      payload: { case: 'handshakeAck', value: { accepted: false, reason: 'Gateway not found' } },
    })
    const decoded = fromBinary(UserConnectResponseSchema, toBinary(UserConnectResponseSchema, resp))
    expect(decoded.payload?.case).toBe('handshakeAck')
    if (decoded.payload?.case === 'handshakeAck') {
      expect(decoded.payload.value.accepted).toBe(false)
      expect(decoded.payload.value.reason).toBe('Gateway not found')
    }
  })

  it('round-trips answer payload', () => {
    const resp = create(UserConnectResponseSchema, {
      payload: { case: 'answer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(UserConnectResponseSchema, toBinary(UserConnectResponseSchema, resp))
    expect(decoded.payload?.case).toBe('answer')
  })

  it('round-trips ice_candidate payload', () => {
    const resp = create(UserConnectResponseSchema, {
      payload: { case: 'iceCandidate', value: { candidate: 'candidate:3 1 UDP 16777215 10.0.0.2 9999 typ relay' } },
    })
    const decoded = fromBinary(UserConnectResponseSchema, toBinary(UserConnectResponseSchema, resp))
    expect(decoded.payload?.case).toBe('iceCandidate')
    if (decoded.payload?.case === 'iceCandidate') {
      expect(decoded.payload.value.candidate).toContain('typ relay')
    }
  })
})

describe('session_id on the signaling messages', () => {
  it('defaults to the empty string on UserConnectRequest when the client omits it', () => {
    const req = create(UserConnectRequestSchema, {
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(UserConnectRequestSchema, toBinary(UserConnectRequestSchema, req))
    expect(decoded.sessionId).toBe('')
  })

  it('round-trips session_id on UserConnectRequest', () => {
    const req = create(UserConnectRequestSchema, {
      sessionId: '2f1a6c5e-7b4d-4f2a-9c11-6d0a3e8b47cd',
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(UserConnectRequestSchema, toBinary(UserConnectRequestSchema, req))
    expect(decoded.sessionId).toBe('2f1a6c5e-7b4d-4f2a-9c11-6d0a3e8b47cd')
    expect(decoded.payload?.case).toBe('offer')
  })

  it('round-trips session_id on UserConnectResponse', () => {
    const resp = create(UserConnectResponseSchema, {
      sessionId: '2f1a6c5e-7b4d-4f2a-9c11-6d0a3e8b47cd',
      payload: { case: 'answer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(UserConnectResponseSchema, toBinary(UserConnectResponseSchema, resp))
    expect(decoded.sessionId).toBe('2f1a6c5e-7b4d-4f2a-9c11-6d0a3e8b47cd')
    expect(decoded.payload?.case).toBe('answer')
  })

  it('round-trips session_id alongside target_user_id on GatewayConnectRequest', () => {
    const req = create(GatewayConnectRequestSchema, {
      targetUserId: { value: 'user-42' },
      sessionId: 'a3d9f0b2-1c8e-4a76-b5d3-90fe2c714a88',
      payload: { case: 'answer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(GatewayConnectRequestSchema, toBinary(GatewayConnectRequestSchema, req))
    expect(decoded.targetUserId?.value).toBe('user-42')
    expect(decoded.sessionId).toBe('a3d9f0b2-1c8e-4a76-b5d3-90fe2c714a88')
  })

  it('round-trips session_id alongside from_user_id on GatewayConnectResponse', () => {
    const resp = create(GatewayConnectResponseSchema, {
      fromUserId: { value: 'user-42' },
      sessionId: 'a3d9f0b2-1c8e-4a76-b5d3-90fe2c714a88',
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    const decoded = fromBinary(GatewayConnectResponseSchema, toBinary(GatewayConnectResponseSchema, resp))
    expect(decoded.fromUserId?.value).toBe('user-42')
    expect(decoded.sessionId).toBe('a3d9f0b2-1c8e-4a76-b5d3-90fe2c714a88')
  })

  it('distinguishes two concurrent sessions of the same user', () => {
    const phone = create(GatewayConnectResponseSchema, {
      fromUserId: { value: 'user-42' },
      sessionId: 'session-phone',
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    const desktop = create(GatewayConnectResponseSchema, {
      fromUserId: { value: 'user-42' },
      sessionId: 'session-desktop',
      payload: { case: 'offer', value: { sdp: 'v=0\r\n' } },
    })
    expect(phone.fromUserId?.value).toBe(desktop.fromUserId?.value)
    expect(phone.sessionId).not.toBe(desktop.sessionId)
  })

  it('carries session_id on a heartbeat, which has no routing target', () => {
    const req = create(GatewayConnectRequestSchema, {
      sessionId: 'a3d9f0b2-1c8e-4a76-b5d3-90fe2c714a88',
      payload: { case: 'heartbeat', value: create(HeartBeatSchema, {}) },
    })
    const decoded = fromBinary(GatewayConnectRequestSchema, toBinary(GatewayConnectRequestSchema, req))
    expect(decoded.sessionId).toBe('a3d9f0b2-1c8e-4a76-b5d3-90fe2c714a88')
  })
})
