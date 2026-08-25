// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { Role, PermissionAction } from '../kusinta/iot/access/v1/roles_pb.js'
import {
  PropertyConstraintSchema,
  DeviceAclSchema,
  EffectivePermissionsSchema,
} from '../kusinta/iot/access/v1/acl_pb.js'

describe('Role and PermissionAction enums', () => {
  it('Role.RESIDENT is defined', () => {
    expect(Role.RESIDENT).toBeDefined()
  })

  it('Role.PROPERTY_OWNER is defined', () => {
    expect(Role.PROPERTY_OWNER).toBeDefined()
  })

  it('PermissionAction.WRITE is defined', () => {
    expect(PermissionAction.WRITE).toBeDefined()
  })
})

describe('PropertyConstraint — property-owner setpoint limits', () => {
  it('round-trips int_max constraint for MaxHeatSetpointLimit', () => {
    const c = create(PropertyConstraintSchema, {
      attribute: { attributeName: 'MaxHeatSetpointLimit', clusterId: 0x0201 },
      constraint: { case: 'intMax', value: 2200 },
    })
    const decoded = fromBinary(PropertyConstraintSchema, toBinary(PropertyConstraintSchema, c))
    expect(decoded.attribute?.attributeName).toBe('MaxHeatSetpointLimit')
    expect(decoded.constraint?.case).toBe('intMax')
    if (decoded.constraint?.case === 'intMax') {
      expect(decoded.constraint.value).toBe(2200)
    }
  })

  it('round-trips int_min constraint for MinHeatSetpointLimit', () => {
    const c = create(PropertyConstraintSchema, {
      attribute: { attributeName: 'MinHeatSetpointLimit', clusterId: 0x0201 },
      constraint: { case: 'intMin', value: 1600 },
    })
    const decoded = fromBinary(PropertyConstraintSchema, toBinary(PropertyConstraintSchema, c))
    expect(decoded.constraint?.case).toBe('intMin')
    if (decoded.constraint?.case === 'intMin') {
      expect(decoded.constraint.value).toBe(1600)
    }
  })

  it('round-trips uint_max constraint', () => {
    const c = create(PropertyConstraintSchema, {
      attribute: { attributeName: 'CurrentLevel', clusterId: 0x0008 },
      constraint: { case: 'uintMax', value: 200 },
    })
    const decoded = fromBinary(PropertyConstraintSchema, toBinary(PropertyConstraintSchema, c))
    expect(decoded.constraint?.case).toBe('uintMax')
  })
})

describe('DeviceAcl', () => {
  it('round-trips resident acl with allowed actions and constraints', () => {
    const acl = create(DeviceAclSchema, {
      deviceId: { value: 'therm-1' },
      userId: { value: 'user-resident-1' },
      role: Role.RESIDENT,
      allowedActions: [PermissionAction.READ, PermissionAction.WRITE],
      allowedAttributeRefs: [
        { attributeName: 'OccupiedHeatingSetpoint', clusterId: 0x0201, endpointId: 1 },
        { attributeName: 'LocalTemperature', clusterId: 0x0201, endpointId: 1 },
      ],
      propertyConstraints: [
        {
          attribute: { attributeName: 'OccupiedHeatingSetpoint', clusterId: 0x0201 },
          constraint: { case: 'intMax', value: 2200 },
        },
        {
          attribute: { attributeName: 'OccupiedHeatingSetpoint', clusterId: 0x0201 },
          constraint: { case: 'intMin', value: 1600 },
        },
      ],
    })
    const decoded = fromBinary(DeviceAclSchema, toBinary(DeviceAclSchema, acl))
    expect(decoded.deviceId?.value).toBe('therm-1')
    expect(decoded.userId?.value).toBe('user-resident-1')
    expect(decoded.role).toBe(Role.RESIDENT)
    expect(decoded.allowedActions).toEqual([PermissionAction.READ, PermissionAction.WRITE])
    expect(decoded.allowedAttributeRefs.map((r) => r.attributeName)).toEqual([
      'OccupiedHeatingSetpoint',
      'LocalTemperature',
    ])
    expect(decoded.allowedAttributeRefs[0].endpointId).toBe(1)
    expect(decoded.propertyConstraints).toHaveLength(2)
    expect(decoded.propertyConstraints[0].constraint?.case).toBe('intMax')
  })

  it('round-trips property-owner acl', () => {
    const acl = create(DeviceAclSchema, {
      deviceId: { value: 'therm-1' },
      userId: { value: 'user-owner-1' },
      role: Role.PROPERTY_OWNER,
      allowedActions: [PermissionAction.READ, PermissionAction.WRITE, PermissionAction.SUBSCRIBE],
    })
    const decoded = fromBinary(DeviceAclSchema, toBinary(DeviceAclSchema, acl))
    expect(decoded.role).toBe(Role.PROPERTY_OWNER)
  })
})

describe('EffectivePermissions', () => {
  it('round-trips with multiple device acls', () => {
    const perms = create(EffectivePermissionsSchema, {
      userId: { value: 'user-1' },
      gatewayId: { value: 'gw-1' },
      deviceAcls: [
        {
          deviceId: { value: 'therm-1' },
          userId: { value: 'user-1' },
          role: Role.RESIDENT,
          allowedActions: [PermissionAction.READ, PermissionAction.WRITE],
        },
        {
          deviceId: { value: 'light-1' },
          userId: { value: 'user-1' },
          role: Role.RESIDENT,
          allowedActions: [PermissionAction.READ, PermissionAction.WRITE],
        },
      ],
    })
    const decoded = fromBinary(EffectivePermissionsSchema, toBinary(EffectivePermissionsSchema, perms))
    expect(decoded.userId?.value).toBe('user-1')
    expect(decoded.gatewayId?.value).toBe('gw-1')
    expect(decoded.deviceAcls).toHaveLength(2)
    expect(decoded.deviceAcls[0].deviceId?.value).toBe('therm-1')
    expect(decoded.deviceAcls[1].deviceId?.value).toBe('light-1')
  })
})

describe('AttributeRef — per-endpoint grants', () => {
  it('distinguishes MeasuredValue on a temperature endpoint from a humidity one', () => {
    const acl = create(DeviceAclSchema, {
      deviceId: { value: 'wall-therm-1' },
      userId: { value: 'user-1' },
      role: Role.RESIDENT,
      allowedAttributeRefs: [
        { attributeName: 'MeasuredValue', clusterId: 0x0402, endpointId: 2 },
        { attributeName: 'MeasuredValue', clusterId: 0x0405, endpointId: 3 },
      ],
    })
    const decoded = fromBinary(DeviceAclSchema, toBinary(DeviceAclSchema, acl))
    expect(decoded.allowedAttributeRefs.map((r) => r.clusterId)).toEqual([0x0402, 0x0405])
    expect(decoded.allowedAttributeRefs.map((r) => r.endpointId)).toEqual([2, 3])
  })
})

describe('PropertyConstraint — endpoint scope', () => {
  it('leaves endpoint_id absent to bound every endpoint', () => {
    const c = create(PropertyConstraintSchema, {
      attribute: { attributeName: 'OccupiedHeatingSetpoint', clusterId: 0x0201 },
      constraint: { case: 'intMax', value: 2200 },
    })
    const decoded = fromBinary(PropertyConstraintSchema, toBinary(PropertyConstraintSchema, c))
    expect(decoded.attribute?.endpointId).toBeUndefined()
  })

  it('bounds a single endpoint when one is named', () => {
    const c = create(PropertyConstraintSchema, {
      attribute: { attributeName: 'OccupiedHeatingSetpoint', clusterId: 0x0201, endpointId: 1 },
      constraint: { case: 'intMax', value: 2200 },
    })
    const decoded = fromBinary(PropertyConstraintSchema, toBinary(PropertyConstraintSchema, c))
    expect(decoded.attribute?.endpointId).toBe(1)
  })
})

describe('allowed_actions — an empty grant grants nothing', () => {
  it('round-trips an acl with no actions, which permits nothing', () => {
    const acl = create(DeviceAclSchema, {
      deviceId: { value: 'therm-1' },
      userId: { value: 'user-1' },
      role: Role.RESIDENT,
    })
    const decoded = fromBinary(DeviceAclSchema, toBinary(DeviceAclSchema, acl))
    expect(decoded.allowedActions).toEqual([])
    expect(decoded.allowedAttributeRefs).toEqual([])
  })

  it('distinguishes an empty action list from one naming UNSPECIFIED', () => {
    const empty = create(DeviceAclSchema, { deviceId: { value: 'd1' } })
    const unspecified = create(DeviceAclSchema, {
      deviceId: { value: 'd1' },
      allowedActions: [PermissionAction.UNSPECIFIED],
    })
    expect(empty.allowedActions).toHaveLength(0)
    expect(unspecified.allowedActions).toHaveLength(1)
    expect(toBinary(DeviceAclSchema, empty)).not.toEqual(toBinary(DeviceAclSchema, unspecified))
  })

  it('carries INVOKE separately from SUBSCRIBE', () => {
    const acl = create(DeviceAclSchema, {
      deviceId: { value: 'therm-1' },
      allowedActions: [PermissionAction.SUBSCRIBE],
    })
    const decoded = fromBinary(DeviceAclSchema, toBinary(DeviceAclSchema, acl))
    expect(decoded.allowedActions).toContain(PermissionAction.SUBSCRIBE)
    expect(decoded.allowedActions).not.toContain(PermissionAction.INVOKE)
  })
})
