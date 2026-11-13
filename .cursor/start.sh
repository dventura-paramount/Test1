#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-8080}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}"

if curl -sf "http://127.0.0.1:${PORT}/" >/dev/null 2>&1; then
  echo "Dev server already responding on port ${PORT}"
  exec sleep infinity
fi

echo "Starting static dev server on 0.0.0.0:${PORT}"
exec python3 -m http.server "${PORT}" --bind 0.0.0.0
