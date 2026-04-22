#!/bin/bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo "./1-install-homebrew.sh"
  exit 1
fi

brew install \
  nvm \
  oven-sh/bun/bun

mkdir -p ~/.nvm

nvm install 24
nvm alias default 24

corepack enable pnpm
corepack prepare pnpm@latest --activate

corepack enable bun
corepack prepare bun@latest --activate 

