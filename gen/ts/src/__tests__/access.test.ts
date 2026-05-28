import { describe, it, expect } from 'vitest'
import { Role, PermissionAction } from '../access/roles.js'
import { PropertyConstraint, DeviceAcl, EffectivePermissions } from '../access/acl.js'

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
    const c: PropertyConstraint = {
      attributeName: 'MaxHeatSetpointLimit',
      constraint: { $case: 'intMax', intMax: 2200 },
      clusterIdHex: '0201',
    }
    const decoded = PropertyConstraint.decode(PropertyConstraint.encode(c).finish())
    expect(decoded.attributeName).toBe('MaxHeatSetpointLimit')
    expect(decoded.constraint?.$case).toBe('intMax')
    if (decoded.constraint?.$case === 'intMax') {
      expect(decoded.constraint.intMax).toBe(2200)
    }
  })

  it('round-trips int_min constraint for MinHeatSetpointLimit', () => {
    const c: PropertyConstraint = {
      attributeName: 'MinHeatSetpointLimit',
      constraint: { $case: 'intMin', intMin: 1600 },
      clusterIdHex: '0201',
    }
    const decoded = PropertyConstraint.decode(PropertyConstraint.encode(c).finish())
    expect(decoded.constraint?.$case).toBe('intMin')
    if (decoded.constraint?.$case === 'intMin') {
      expect(decoded.constraint.intMin).toBe(1600)
    }
  })

  it('round-trips uint_max constraint', () => {
    const c: PropertyConstraint = {
      attributeName: 'CurrentLevel',
      constraint: { $case: 'uintMax', uintMax: 200 },
      clusterIdHex: '0008',
    }
    const decoded = PropertyConstraint.decode(PropertyConstraint.encode(c).finish())
    expect(decoded.constraint?.$case).toBe('uintMax')
  })
})

describe('DeviceAcl', () => {
  it('round-trips resident acl with allowed actions and constraints', () => {
    const acl: DeviceAcl = {
      deviceId: { value: 'therm-1' },
      userId: { value: 'user-resident-1' },
      role: Role.RESIDENT,
      allowedActions: [PermissionAction.READ, PermissionAction.WRITE],
      allowedAttributes: ['OccupiedHeatingSetpoint', 'LocalTemperature'],
      propertyConstraints: [
        {
          attributeName: 'OccupiedHeatingSetpoint',
          constraint: { $case: 'intMax', intMax: 2200 },
          clusterIdHex: '0201',
        },
        {
          attributeName: 'OccupiedHeatingSetpoint',
          constraint: { $case: 'intMin', intMin: 1600 },
          clusterIdHex: '0201',
        },
      ],
    }
    const decoded = DeviceAcl.decode(DeviceAcl.encode(acl).finish())
    expect(decoded.deviceId?.value).toBe('therm-1')
    expect(decoded.userId?.value).toBe('user-resident-1')
    expect(decoded.role).toBe(Role.RESIDENT)
    expect(decoded.allowedActions).toEqual([PermissionAction.READ, PermissionAction.WRITE])
    expect(decoded.allowedAttributes).toEqual(['OccupiedHeatingSetpoint', 'LocalTemperature'])
    expect(decoded.propertyConstraints).toHaveLength(2)
    expect(decoded.propertyConstraints[0].constraint?.$case).toBe('intMax')
  })

  it('round-trips property-owner acl', () => {
    const acl: DeviceAcl = {
      deviceId: { value: 'therm-1' },
      userId: { value: 'user-owner-1' },
      role: Role.PROPERTY_OWNER,
      allowedActions: [PermissionAction.READ, PermissionAction.WRITE, PermissionAction.OBSERVE],
    }
    const decoded = DeviceAcl.decode(DeviceAcl.encode(acl).finish())
    expect(decoded.role).toBe(Role.PROPERTY_OWNER)
  })
})

describe('EffectivePermissions', () => {
  it('round-trips with multiple device acls', () => {
    const perms: EffectivePermissions = {
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
    }
    const decoded = EffectivePermissions.decode(EffectivePermissions.encode(perms).finish())
    expect(decoded.userId?.value).toBe('user-1')
    expect(decoded.gatewayId?.value).toBe('gw-1')
    expect(decoded.deviceAcls).toHaveLength(2)
    expect(decoded.deviceAcls[0].deviceId?.value).toBe('therm-1')
    expect(decoded.deviceAcls[1].deviceId?.value).toBe('light-1')
  })
})
