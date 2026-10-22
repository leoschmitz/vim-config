#!/bin/bash
set -euo pipefail
ln -nsf "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/generate.vim" ~/.vimrc
