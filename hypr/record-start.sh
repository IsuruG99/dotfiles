#!/bin/sh
RECORD_DIR="$HOME/Videos"
mkdir -p "$RECORD_DIR"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTPUT="$RECORD_DIR/rec_$TIMESTAMP.mkv"

# Safety cleanup
pkill -9 -f gsr 2>/dev/null
pkill -9 -f gpu-screen-recorder 2>/dev/null

MONITOR="HDMI-A-3"
AUDIO="$(pactl get-default-sink).monitor"

gpu-screen-recorder -w "$MONITOR" -f 30 -q medium -a "$AUDIO" -o "$OUTPUT" &
notify-send "Screen Recording" "Started → $OUTPUT"
