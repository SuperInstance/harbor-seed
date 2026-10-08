#!/bin/bash
# read.sh — read all messages in the room, oldest first.
ROOM="$(dirname "$0")/room"
ls "$ROOM"/*.md 2>/dev/null | sort | while read f; do
  echo "─── $(basename "$f" .md) ───"
  cat "$f"
  echo
done
