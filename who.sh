#!/bin/bash
# who.sh — list who's been in the room.
ROOM="$(dirname "$0")/room"
ls "$ROOM"/*.md 2>/dev/null | sort | sed 's/.*[0-9]-//;s/-.*//' | sort -u
