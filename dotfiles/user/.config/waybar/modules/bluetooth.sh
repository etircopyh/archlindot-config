#!/usr/bin/env bash
connected=$(bluetoothctl info | rg -e 'Connected: yes')
disconnected=$(bluetoothctl info | rg -e 'Missing device')
btname=$(bluetoothctl info | rg Name: | awk '{$1=""; print $0}')
phone=$(bluetoothctl info | rg -e 'Icon: phone')
computer=$(bluetoothctl info | rg -e 'Icon: computer')
headset=$(bluetoothctl info | rg -e 'Icon: audio' -e 'Headset  ')

if [ "$phone" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"phone\", \"alt\": \"phone\"}"
elif [ "$computer" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"computer\", \"alt\": \"computer\"}"
elif [ "$headset" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"headset\", \"alt\": \"headset\"}"
elif [ "$disconnected" ]; then
    echo "{\"text\": \"OFF\", \"class\": \"bt-off\", \"alt\": \"disconnected\"}"
fi
