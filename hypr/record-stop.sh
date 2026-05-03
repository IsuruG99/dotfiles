#!/bin/sh
RECORD_DIR="$HOME/Videos"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTPUT="$RECORD_DIR/rec_$TIMESTAMP.mkv"

killall -SIGINT gpu-screen-recorder 2>/dev/null
sleep 2.5
notify-send "Screen Recording" "Stopped → $OUTPUT"
