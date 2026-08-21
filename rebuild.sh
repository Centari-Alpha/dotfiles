#!/usr/bin/env bash

# Stop on errors
set -euo pipefail

# Get the directory where this script lives
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"

ln -sfn "$DIR" ~/.dotfiles

exec sudo nixos-rebuild switch --flake "$DIR"#nixos
