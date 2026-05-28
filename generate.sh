#!/usr/bin/env bash
# Generate protobuf code for all language targets.
# Requires: protoc, protoc-gen-ts_proto, python3 grpcio-tools, dart protoc_plugin
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
PROTO_DIR="$ROOT/proto"
GEN_TS_DIR="$ROOT/gen/ts/src"
GEN_PY_DIR="$ROOT/gen/python/kusinta_iot_schema"
GEN_DART_DIR="$ROOT/gen/dart/lib/src"

# Collect all proto files
PROTO_FILES=$(find "$PROTO_DIR" -name "*.proto" | sort)

# Include paths: project protos + google well-known types from protoc install
PROTOC_INCLUDE="$HOME/.local/include"
# Fallback: grpcio-tools bundles well-known types
PY_GRPC_INCLUDE=$(python3 -c 'import grpc_tools, os; print(os.path.dirname(grpc_tools.__file__))' 2>/dev/null || echo "")
INCLUDES="-I$PROTO_DIR -I$PROTOC_INCLUDE"
if [ -n "$PY_GRPC_INCLUDE" ]; then
  INCLUDES="$INCLUDES -I$PY_GRPC_INCLUDE"
fi

# ── TypeScript ──────────────────────────────────────────────────────────────
echo "→ Generating TypeScript..."
mkdir -p "$GEN_TS_DIR"
TS_OPT="esModuleInterop=true,outputServices=grpc-js,env=node,useOptionals=all,oneof=unions,forceLong=number,stringEnums=true"
protoc $INCLUDES \
  --plugin="$(which protoc-gen-ts_proto)" \
  --ts_proto_out="$GEN_TS_DIR" \
  --ts_proto_opt="$TS_OPT" \
  $PROTO_FILES
echo "   TypeScript done ✓"

# ── Python ──────────────────────────────────────────────────────────────────
if command -v python3 -m grpc_tools.protoc &>/dev/null || python3 -c "import grpc_tools" 2>/dev/null; then
  echo "→ Generating Python..."
  mkdir -p "$GEN_PY_DIR"
  python3 -m grpc_tools.protoc $INCLUDES \
    --python_out="$GEN_PY_DIR" \
    --pyi_out="$GEN_PY_DIR" \
    --grpc_python_out="$GEN_PY_DIR" \
    $PROTO_FILES
  # Fix absolute imports in all generated pb2 files.
  # grpcio-tools generates e.g. "from common import types_pb2" but the module lives at
  # kusinta_iot_schema/common/types_pb2.py, so we must prefix with the package name.
  PKG_NAME=$(basename "$GEN_PY_DIR")
  # Only rewrite imports from our own sub-packages, not from third-party libs (google.protobuf etc).
  OWN_PKGS="common\|identity\|device\|space\|access\|connector\|webrtc\|vendor"
  find "$GEN_PY_DIR" -name "*_pb2.py" -o -name "*_pb2_grpc.py" | while read -r f; do
    # "from <ownpkg>[.subpkg] import <mod>_pb2" → "from kusinta_iot_schema.<ownpkg>[.subpkg] import <mod>_pb2"
    sed -i "s/^from \(${OWN_PKGS}\)\([.a-zA-Z0-9_]*\) import \([a-zA-Z0-9_]*_pb2\)/from ${PKG_NAME}.\1\2 import \3/" "$f"
    # "import <mod>_pb2" → "from kusinta_iot_schema import <mod>_pb2" (some grpc stubs)
    sed -i "s/^import \([a-zA-Z_][a-zA-Z0-9_]*_pb2\)\b/from ${PKG_NAME} import \1/" "$f"
  done
  # Create __init__.py in each subpackage
  find "$GEN_PY_DIR" -type d -exec touch {}/__init__.py \;
  echo "   Python done ✓"
else
  echo "   Python skipped (grpcio-tools not available)"
fi

# ── Dart ────────────────────────────────────────────────────────────────────
if command -v protoc-gen-dart &>/dev/null; then
  echo "→ Generating Dart..."
  mkdir -p "$GEN_DART_DIR"
  protoc $INCLUDES \
    --dart_out="grpc:$GEN_DART_DIR" \
    $PROTO_FILES
  echo "   Dart done ✓"
else
  echo "   Dart skipped (protoc-gen-dart not available)"
fi

echo ""
echo "Code generation complete."
