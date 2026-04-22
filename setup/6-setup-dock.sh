#!/bin/bash
set -euo pipefail

brew install dockutil

dockutil --remove all

dockutil --add /Applications/Zen.app
dockutil --add /Applications/Spotify.app
dockutil --add /Applications/Ghostty.app
dockutil --add /Applications/Visual\ Studio\ Code.app
dockutil --add /Applications/Spark\ Desktop.app
