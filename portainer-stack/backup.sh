#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="$(dirname "$0")/backup"
mkdir -p "$BACKUP_DIR"

FILE="portainer-$(date +%F).tar.gz"

docker run --rm \
  -v portainer-stack_data:/data \
  -v "$BACKUP_DIR":/backup \
  alpine tar czf "/backup/$FILE" /data

echo "✅ Backup saved to $BACKUP_DIR/$FILE"