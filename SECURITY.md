# Security policy

## Reporting a vulnerability

Report it privately through GitHub:
[Report a vulnerability](https://github.com/Martwall/kusinta-iot-schema/security/advisories/new)
(Security tab → Report a vulnerability).

**Do not open a public issue or pull request.** This repo is public, and an issue describing
an unfixed weakness tells everyone who reads it before a fix ships.

Include what you can of:

- the message, field or rule involved (file and line);
- how it can be abused — which party sends what, and what the receiver wrongly accepts;
- whether it is a flaw in the contract itself, or in how a side is told to implement it.

You will get an acknowledgement, and the advisory stays private until a fix is released.

## Scope

This repo holds protocol schemas and the packages generated from them. In scope:

- a contract that, implemented as written, lets a party do what it should not — forge an
  identity, escalate a role, replay a credential, reach a device it is not entitled to;
- a field or comment that would leak a secret, or lead an implementer to log, persist or
  echo one;
- the published packages: `@kusinta/iot-schema` on npm, `kusinta-iot-schema` on PyPI, and
  `kusinta_iot_schema` (Dart) from this repo's git tags.

A bug in a service that implements these schemas is reported the same way; it will be
routed to whoever owns that service.

## Supported versions

Pre-1.0: only the latest `0.2.0-beta.*` release receives fixes.
