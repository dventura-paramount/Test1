#!/usr/bin/env bash
set -euo pipefail

for tool in git python3 node; do
  if ! command -v "${tool}" >/dev/null 2>&1; then
    echo "Missing required tool: ${tool}" >&2
    exit 1
  fi
done

echo "Test1 toolchain OK (git, python3, node)"
