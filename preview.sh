#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8080}"

if command -v python3 >/dev/null 2>&1; then
  echo "Starting preview server at http://localhost:${PORT}"
  exec python3 -m http.server "$PORT"
else
  echo "python3 is required to run the preview server." >&2
  exit 1
fi
