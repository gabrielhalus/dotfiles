#!/bin/bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo "./1-install-homebrew.sh"
  exit 1
fi

brew install \
  ghostty \
  fastfetch \
  neovim \
  starship \
  tmux \
  tree

# Resolve script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ZSHRC_TARGET="$HOME/.zshrc"
ZSHRC_SOURCE="$SCRIPT_DIR/../zshrc"

GIT_TARGET="$HOME/.gitconfig"
GIT_SOURCE="$SCRIPT_DIR/../gitconfig"

TMUX_TARGET="$HOME/.tmux.conf"
TMUX_SOURCE="$SCRIPT_DIR/../tmux.conf"

CONFIG_TARGET="$HOME/.config"
CONFIG_SOURCE="$SCRIPT_DIR/../config"

# Backup existing config
if [ -f "$ZSHRC_TARGET" ] && [ ! -L "$ZSHRC_TARGET" ]; then
  mv "$ZSHRC_TARGET" "$ZSHRC_TARGET.bak"
fi

if [ -f "$GIT_TARGET" ] && [ ! -L "$GIT_TARGET" ]; then
  mv "$GIT_TARGET" "$GIT_TARGET.bak"
fi

if [ -f "$TMUX_TARGET" ] && [ ! -L "$TMUX_TARGET" ]; then
  mv "$TMUX_TARGET" "$TMUX_TARGET.bak"
fi

if [ -d "$CONFIG_TARGET" ] && [ ! -L "$CONFIG_TARGET" ]; then
  mv "$CONFIG_TARGET" "$CONFIG_TARGET.bak"
fi

# Create symlink
ln -sf "$ZSHRC_SOURCE" "$ZSHRC_TARGET"
ln -sf "$GIT_SOURCE" "$GIT_TARGET"
ln -sf "$TMUX_SOURCE" "$TMUX_TARGET"
ln -sf "$CONFIG_SOURCE" "$CONFIG_TARGET"

