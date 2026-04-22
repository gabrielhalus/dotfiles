#!/bin/bash
set -euo pipefail

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Resize launchpad grid (default: 7x5)
defaults write com.apple.dock springboard-columns -int 8
defaults write com.apple.dock springboard-rows -int 6
killall Dock

# Make auto-hide dock show faster
defaults write com.apple.dock autohide-delay -float 0; killall Dock

# Show path bar in finder
defaults write com.apple.finder ShowPathbar -bool true
killall Finder

# Disable windows opening animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
