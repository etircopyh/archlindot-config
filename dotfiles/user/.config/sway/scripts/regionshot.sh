#!/usr/bin/env bash
FILE=~/Screenshots/$(date +'%Y-%m-%d-%H:%M:%S_regionshot').png

grim -g "$(slurp -c '#990000FF' -s '#2F4F4F28' -b '#00000046' -d)" $FILE

wl-copy -t image/png < $FILE
