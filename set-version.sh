#!/bin/sh
set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

VERSION="$1"

sed -i "s/\"version\": \".*\"/\"version\": \"$VERSION\"/" gen/js/package.json
sed -i "s/^version = \".*\"/version = \"$VERSION\"/" gen/python/pyproject.toml
sed -i "s/^version: .*/version: $VERSION/" gen/dart/pubspec.yaml

echo "Version set to $VERSION"
