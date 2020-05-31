#!/usr/bin/env bash
DEVICE=$(bluetoothctl devices | fzf --layout=reverse | awk '{print $2}')

bluetoothctl connect "$DEVICE"
