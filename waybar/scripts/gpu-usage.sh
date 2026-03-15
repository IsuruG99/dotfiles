#!/usr/bin/env bash

# Get GPU utilization % (strip % sign and spaces)
util=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits 2>/dev/null | tr -d ' ')

if [ -z "$util" ]; then
  echo "GPU: --%"
else
  echo "GPU: ${util}% " #  is a nice nerd-font GPU icon; change if you want
fi
