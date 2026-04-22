#!/usr/bin/env bash
set -euo pipefail

EXTENSIONS=(
  formulahendry.auto-rename-tag
  aaron-bond.better-comments
  Catppuccin.catppuccin-vsc
  adpyke.codesnap
  usernamehw.errorlens
  dsznajder.es7-react-js-snippets
  dbaeumer.vscode-eslint
  waderyan.gitblame
  wix.vscode-import-cost
  xabikos.JavaScriptSnippets
  Nuxt.mdc
  YoavBls.pretty-ts-errors
  miguelsolorio.symbols
  bradlc.vscode-tailwindcss
  Orta.vscode-twoslash-queries
  antfu.vite
  oven.bun-vscode
  tamasfe.even-better-toml
)

for ext in "${EXTENSIONS[@]}"; do
  echo "Installing $ext..."
  code --install-extension "$ext" --force
done

echo "All extensions installed."
