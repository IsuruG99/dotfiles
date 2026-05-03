#!/bin/bash

# Lightweight network speed for Waybar - updates every 10s
INTERFACE=""

# Auto-detect main interface (wifi or ethernet)
if [ -z "$INTERFACE" ]; then
  INTERFACE=$(ip route get 1.1.1.1 2>/dev/null | awk '{for(i=1;i<=NF;i++) if($i=="dev") print $(i+1)}' | head -n1)
fi

if [ -z "$INTERFACE" ] || [ ! -d "/sys/class/net/$INTERFACE" ]; then
  echo '{"text": "No connection", "class": "disconnected"}'
  exit 0
fi

# Get previous values
RX_PREV=$(cat /sys/class/net/"$INTERFACE"/statistics/rx_bytes 2>/dev/null || echo 0)
TX_PREV=$(cat /sys/class/net/"$INTERFACE"/statistics/tx_bytes 2>/dev/null || echo 0)

sleep 10

# Get current values
RX_NOW=$(cat /sys/class/net/"$INTERFACE"/statistics/rx_bytes 2>/dev/null || echo 0)
TX_NOW=$(cat /sys/class/net/"$INTERFACE"/statistics/tx_bytes 2>/dev/null || echo 0)

# Calculate speed in Bytes/s
RX_SPEED=$(((RX_NOW - RX_PREV) / 10))
TX_SPEED=$(((TX_NOW - TX_PREV) / 10))

# Format function
format() {
  if [ "$1" -ge 1048576 ]; then
    printf "%.1f MB/s" "$(bc -l <<<"$1 / 1048576")"
  elif [ "$1" -ge 10240 ]; then
    printf "%.0f KB/s" "$(bc -l <<<"$1 / 1024")"
  else
    printf "%d B/s" "$1"
  fi
}

DOWN=$(format $RX_SPEED)
UP=$(format $TX_SPEED)

echo "{\"text\": \"↓ $DOWN  ↑ $UP\", \"tooltip\": \"Interface: $INTERFACE\n↓ Download: $DOWN\n↑ Upload: $UP\"}"
