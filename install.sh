#!/bin/bash
set -euo pipefail
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -nsf "$dir/generate.vim" ~/.vimrc

line="[ -f \"$dir/bashrc\" ] && . \"$dir/bashrc\""
grep -qxF "$line" ~/.bashrc || echo "$line" >> ~/.bashrc
