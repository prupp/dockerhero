#!/bin/bash
set -e

SERVICE="$1"

if [ -z "$SERVICE" ]; then
  echo "Usage: update_container.sh <service>"
  exit 1
fi

BASE_CONFIG="/home/rancher/config"
BASE_LOG="/home/rancher/updates/logs"

COMPOSE_FILE="$BASE_CONFIG/$SERVICE.yml"
LOGFILE="$BASE_LOG/$SERVICE.log"

mkdir -p "$BASE_LOG"

if [ ! -f "$COMPOSE_FILE" ]; then
  echo "[$(date)] ERROR: Compose file not found: $COMPOSE_FILE" >> "$LOGFILE"
  exit 1
fi

echo "=== $SERVICE update started: $(date) ===" >> "$LOGFILE"

docker compose -f "$COMPOSE_FILE" pull >> "$LOGFILE" 2>&1
docker compose -f "$COMPOSE_FILE" up -d >> "$LOGFILE" 2>&1

echo "=== $SERVICE update finished: $(date) ===" >> "$LOGFILE"
echo "" >> "$LOGFILE"
