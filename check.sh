#!/bin/sh
# Run every check Jenkins runs, in the same order, from the repo root.
#
#   ./check.sh            # everything
#   ./check.sh proto      # buf lint + format + breaking + version match
#   ./check.sh js         # vitest
#   ./check.sh python     # pytest
#   ./check.sh dart       # dart analyze
#
# Unlike `set -e`, a failing suite does not stop the run: every suite executes and
# the failures are listed at the end. A red JS suite should not hide a red Python one.
#
# The script REGENERATES before testing, because the suites read the generated trees
# and not the protos — editing a .proto and running tests without regenerating tests
# the old schema and passes. If generation changes files, that is reported: it means
# the committed gen/ tree was stale.

set -u

TARGET="${1:-all}"
FAILED=""

# CI has buf on PATH; a dev machine usually does not. Same version either way.
if command -v buf >/dev/null 2>&1; then
  BUF="buf"
else
  BUF="npx --yes @bufbuild/buf@1.72.0"
fi

step() { printf '\n\033[1m==> %s\033[0m\n' "$1"; }
fail() { FAILED="${FAILED} $1"; printf '\033[31mFAIL: %s\033[0m\n' "$1"; }
# Subshell: a step that cd's must not move the shell the later steps run in.
run()  { step "$2"; if ! ( eval "$3" ); then fail "$1"; fi; }

wants() { [ "$TARGET" = "all" ] || [ "$TARGET" = "$1" ]; }

# --- schema ---------------------------------------------------------------------

if wants proto; then
  run "buf lint" "buf lint" "$BUF lint"

  # Advisory: the tree is not fully buf-formatted yet, so this reports rather than fails.
  step "buf format (advisory)"
  UNFORMATTED=$($BUF format --diff | grep -c '^+++' || true)
  [ "$UNFORMATTED" -eq 0 ] && echo "all files formatted" \
                           || echo "$UNFORMATTED file(s) not buf-formatted"

  # Meaningless on main, where the comparison is against itself. Jenkins skips it there
  # for the same reason.
  if [ "$(git rev-parse --abbrev-ref HEAD)" = "main" ]; then
    step "buf breaking"; echo "skipped on main"
  else
    run "buf breaking" "buf breaking (vs main)" "$BUF breaking --against '.git#branch=main'"
  fi

  step "version match"
  VERSION=$(python3 -c "import json; print(json.load(open('gen/js/package.json'))['version'])")
  if grep -q "^version = \"$VERSION\"" gen/python/pyproject.toml \
     && grep -q "^version: $VERSION" gen/dart/pubspec.yaml; then
    echo "all three manifests: $VERSION"
  else
    fail "version match"
  fi
fi

# --- generate -------------------------------------------------------------------

if [ "$TARGET" = "all" ]; then
  step "generate"
  BEFORE=$(git diff -- gen | cksum)
  if $BUF generate \
     && $BUF generate --template buf.gen.dart.yaml --include-imports --include-wkt \
     && python3 gen-dart-barrels.py; then
    [ "$(git diff -- gen | cksum)" = "$BEFORE" ] \
      || echo "NOTE: generation changed files — the committed gen/ tree was stale"
  else
    fail "generate"
  fi
fi

# --- suites ---------------------------------------------------------------------

if wants js; then
  run "js" "vitest" "cd gen/js && npm test"
fi

if wants python; then
  step "pytest"
  # Jenkins builds this venv from scratch every run; locally it is reused.
  if [ ! -x gen/python/.venv/bin/python ]; then
    echo "creating gen/python/.venv"
    (cd gen/python && python3 -m venv .venv && .venv/bin/pip install --quiet -e ".[dev]") \
      || fail "python venv"
  fi
  (cd gen/python && .venv/bin/python -m pytest tests -q) || fail "python"
fi

if wants dart; then
  step "dart analyze"
  if command -v dart >/dev/null 2>&1; then
    # --no-fatal-warnings: warnings here are about generated code that cannot be edited
    # in this repo. Errors, which mean the tree does not compile, still fail.
    (cd gen/dart && dart pub get >/dev/null && dart analyze --no-fatal-warnings) || fail "dart"
  else
    echo "dart not installed — skipped (CI still runs it)"
  fi
fi

# --- summary --------------------------------------------------------------------

if [ -n "$FAILED" ]; then
  printf '\n\033[31mFAILED:%s\033[0m\n' "$FAILED"
  exit 1
fi
printf '\n\033[32mAll checks passed.\033[0m\n'
