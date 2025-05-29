#!/bin/bash
set -e

DEST="$HOME/medusa-packages"

mkdir -p "$DEST"

find ./packages -name '*.tgz' | while read -r filepath; do
  rsync -R "$filepath" "$DEST"
done