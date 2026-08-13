# CLAUDE.md

## TDD Guidelines

### Core Cycle
- **Red → Green → Refactor** — write a failing test first, minimum code to pass it, then clean up. Never write production code without a failing test justifying it.
- **One failing test at a time.** Smallest possible step per cycle.

### Test Design
- **Arrange-Act-Assert (AAA)** — every test has a clear setup, single action, single assertion block.
- **One behavior per test** — if it fails, the name tells you exactly what broke.
- **Test behavior, not implementation** — tests must survive refactors. Don't test internals.
- **Descriptive names** — `should return 401 when token is expired`, not `test auth`.
- **No logic in tests** — no `if`, `for`, or `switch`. If you need them, write more tests.
- **Test unhappy paths first** — errors, invalid input, and edge cases reveal design problems early.
- **Cover all branches** — every conditional, every `catch`, every early return.

### Isolation & Mocking
- **Unit tests must be isolated** — mock all external dependencies: database, HTTP, filesystem, clock.
- **Mock at the boundary** — not internal functions.
- **Never hit real external services in unit tests** — use in-memory alternatives for integration tests.
- **Reset mocks between tests** — stale state causes order-dependent failures.

### Integration Tests
- **Scope** — real DB queries + full middleware stack, mocked only at the network edge (external APIs, filesystem).
- **Use an in-memory database** — spin up before suite, tear down after. Clean state per test in `beforeEach`.
- **Start the app once per suite** — use an HTTP test client against the running app, no port binding needed.
- **Seed data explicitly** — each test creates only what it needs.
- **Test the full HTTP contract** — status codes, response body shape, headers.
- **Test auth in context** — send real signed tokens through the full middleware stack.
- **Separate test commands** — unit (fast, no DB) and integration (requires in-memory DB). CI runs both; dev default runs unit only.

## Release & maintenance

### Versioning
Use `set-version.sh` to bump the version — it updates `gen/js/package.json`, `gen/python/pyproject.toml`, and `gen/dart/pubspec.yaml` in one step:
```bash
./set-version.sh 0.2.0
```
Jenkins checks all three match and fails the build if they don't.

### Adding a new proto package
Add an `exports` entry to `gen/js/package.json`:
- `"./new-pkg": "./src/kusinta/iot/new-pkg/v1/new_pkg_pb.js"`

## Proto guidelines

### Public repo — name parties by role
This repo is public; its schemas are consumed by private ones. Never name a private repo, or a toolchain a private repo happens to be built on, in proto comments, docs, or commit messages. Name each party by its **role in the protocol** instead — "the app", "the api-server", "the building-server gateway", "the mTLS-terminating proxy". The party must stay unambiguous; it just must not be identified by repo, or by the client framework or edge proxy it runs on.

This reaches further than the source tree: proto comments are carried into the generated `.d.ts` and `.pb.dart` as doc strings, and those are published to npm, PyPI and pub.dev. A comment naming a private service ships to three public registries.

Two traps:

- **A commit message describing a scrub must not restate the names it removes.** The message is in the repo too.
- **When a comment documents a literal wire value that is itself a private service name** (e.g. a JWT `iss` claim), describe the field's role and note the value is agreed out of band. Do not change the constant — that is a coordinated breaking change across services, not a docs fix.

Public device vendors and OSS libraries are fine, and appear in package and message names as well as comments. They name an ecosystem, not an internal repo.

### Reserved fields
Always mark removed or skipped field numbers with `reserved` so they are never accidentally reused:
```proto
reserved 4;           // field number gap
reserved "old_name";  // field name (prevents reuse after a rename)
```
A gap without a `reserved` statement is a bug waiting to happen.
