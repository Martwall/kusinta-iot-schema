// @ts-check
//
// The package's `exports` map is the whole public surface: Node enforces it under
// moduleResolution "nodenext" and "bundler", so a generated file with no subpath is
// unreachable to a consumer — not even as a type-only import. Three files were missed
// that way, which left CommandErrorCode unconstructable outside this repo.
//
// This test fails when `buf generate` emits a file nobody added a subpath for, so the
// omission surfaces here rather than in a consumer's build.
import { describe, it, expect } from 'vitest'
import { readFileSync, readdirSync } from 'node:fs'
import { join, relative, dirname } from 'node:path'
import { fileURLToPath } from 'node:url'

const pkgRoot = join(dirname(fileURLToPath(import.meta.url)), '..', '..')
const pkg = JSON.parse(readFileSync(join(pkgRoot, 'package.json'), 'utf8'))

/** @param {string} dir @returns {string[]} */
function generatedFiles(dir) {
  return readdirSync(dir, { withFileTypes: true }).flatMap((entry) => {
    const full = join(dir, entry.name)
    if (entry.isDirectory()) return generatedFiles(full)
    return entry.name.endsWith('_pb.js') ? [full] : []
  })
}

const emitted = generatedFiles(join(pkgRoot, 'src', 'kusinta'))
  .map((f) => './' + relative(pkgRoot, f))
  .sort()

const exported = Object.values(pkg.exports).sort()

describe('package exports', () => {
  it('gives every generated file a subpath', () => {
    expect(emitted.filter((f) => !exported.includes(f))).toEqual([])
  })

  it('points every subpath at a file that exists', () => {
    expect(exported.filter((f) => !emitted.includes(f))).toEqual([])
  })

  it('resolves CommandErrorCode through its subpath', async () => {
    const mod = await import('@kusinta/iot-schema/webrtc/command')
    expect(mod.CommandErrorCode.NOT_ENTITLED).toBe(1)
  })
})
