#!/usr/bin/env bash
filename=$(date +'%Y-%m-%d-%H:%M_screencast')
isscreencastup=$(pgrep -a wf-recorder)

screencast=$(wf-recorder -a -f ~/Screencasts/$filename.mp4)

if [[ ! -z "$isscreencastup" ]]; then
    exec $screencast 
else
    pkill --signal INT wf-recorder
fi
