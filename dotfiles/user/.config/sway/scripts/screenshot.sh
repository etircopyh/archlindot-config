#!/usr/bin/env bash
FILE=~/Screenshots/$(swaymsg -t subscribe -m '["window"]' | jq -r '.container.name'date +'%Y-%m-%d-%H:%M:%S_screenshot').png

grim $FILE

wl-copy -t image/png < $FILE
