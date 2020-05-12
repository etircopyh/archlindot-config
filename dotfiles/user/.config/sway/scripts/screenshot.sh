#!/usr/bin/env bash
FILE=~/Screenshots/$(date +'%Y-%m-%d-%H:%M:%S_screenshot').png

grim $FILE

wl-copy -t image/png < $FILE
