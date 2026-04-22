#!/bin/bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo "./1-install-homebrew.sh"
  exit 1
fi

brew install --cask \
  nikitabobko/tap/aerospace

# Resolve script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

AEROSPACE_TARGET="$HOME/.aerospace.toml"
AEROSPACE_SOURCE="$SCRIPT_DIR/../aerospace.toml"

# Backup existing config
if [ -f "$AEROSPACE_TARGET" ] && [ ! -L "$AEROSPACE_TARGET" ]; then
  mv "$AEROSPACE_TARGET" "$AEROSPACE_TARGET.bak"
fi

# Create symlink
ln -sf "$AEROSPACE_SOURCE" "$AEROSPACE_TARGET"
