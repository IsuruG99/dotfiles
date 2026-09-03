#!/bin/bash
nemo &
sleep 0.2
i3-msg '[class="Nemo"] floating enable, resize set 1366 768, move position center'
