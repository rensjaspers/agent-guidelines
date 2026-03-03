#!/usr/bin/env bash
set -euo pipefail

TEMPLATE="${1:-}"
REPO="https://github.com/rensjaspers/agents.git"
TMP_DIR="$(mktemp -d)"

if [ -z "$TEMPLATE" ]; then
  echo "Usage: install-template.sh <template-name>"
  echo "Available templates: angular, ionic-angular, nestjs"
  exit 1
fi

echo "Installing template '$TEMPLATE' into .agents/ ..."
git clone --depth=1 "$REPO" "$TMP_DIR"

if [ ! -d "$TMP_DIR/templates/$TEMPLATE" ]; then
  echo "Error: template '$TEMPLATE' not found. Available templates: angular, ionic-angular, nestjs"
  rm -rf "$TMP_DIR"
  exit 1
fi

rsync -av --copy-links --ignore-existing "$TMP_DIR/templates/$TEMPLATE/" .agents/
rm -rf "$TMP_DIR"
echo "Done."
