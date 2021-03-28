#!/usr/bin/env bash
FILE=~/Screenshots/$(date +'%Y-%m-%d-%H:%M:%S_screenshot').png

grim "$FILE"

wl-copy -t image/png < "$FILE"
wait
if [ -f "$FILE" ]; then
    notify-send "Screenshot has been placed to" "$FILE"
fi
