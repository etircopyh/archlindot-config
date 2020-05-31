#!/usr/bin/env bash
connected=$(bluetoothctl info | grep -e 'Connected: yes')
disconnected=$(bluetoothctl info | grep -e 'Missing device')
btname=$(bluetoothctl info | grep Name: | awk '{$1=""; print $0}')
phone=$(bluetoothctl info | grep -e 'Icon: phone')
computer=$(bluetoothctl info | grep -e 'Icon: computer')
headset=$(bluetoothctl info | grep -e 'Icon: audio' -e 'Headset  ')

if [ "$phone" ] && [ "$connected" ]; then
    echo "$btname "
elif [ "$computer" ] && [ "$connected" ]; then
    echo "$btname "
elif [ "$headset" ] && [ "$connected" ]; then
    echo "$btname "
elif [ "$disconnected" ]; then
    echo 'Disconnected'
fi
