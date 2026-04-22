#!/bin/bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo "./1-install-homebrew.sh"
  exit 1
fi

brew install \
  font-bricolage-grotesque
