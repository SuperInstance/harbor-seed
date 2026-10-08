#!/bin/bash
# say.sh <agent> <message> — drop a message in the room.
ROOM="$(dirname "$0")/room"
mkdir -p "$ROOM"
TS="$(date +%H%M%S)"
SAFE="$(echo "$2" | head -c 30 | tr ' ' '-')"
FILE="$ROOM/${TS}-$1-${SAFE}.md"
{ echo "# $1 — $TS"; echo; echo "$2"; } > "$FILE"
echo "said: $FILE"
