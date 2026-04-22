#!/bin/bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo "./1-install-homebrew.sh"
  exit 1
fi

brew install \
  nikitabobko/tap/aerospace \
  hiddenbar \
  raycast \
  arc \
  mos \
  alt-tab \
  spotify \
  readdle-spark \
  visual-studio-code \
  claude-code \
  docker-desktop \
  obsidian \
  steam \
  discord \
  hoppscotch \
  bambu-studio
