#!/usr/bin/env bash
FILE=~/Screenshots/$(date +'%Y-%m-%d-%H:%M:%S_windowshot').png

grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible? and .focused == true) | .rect | "\(.x),\(.y) \(.width)x\(.height)"')" $FILE

wl-copy -t image/png < $FILE
