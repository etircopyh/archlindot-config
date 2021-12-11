#!/usr/bin/env bash

set -o nounset
set -o pipefail


connected=$(bluetoothctl info | grep -e 'Connected: yes')
disconnected=$(bluetoothctl info | grep -e 'Missing device')
phone=$(bluetoothctl info | grep -e 'Icon: phone')
computer=$(bluetoothctl info | grep -e 'Icon: computer')
headset=$(bluetoothctl info | grep -e 'Icon: audio-headset')

devicemac=$(bluetoothctl info | head -1 | awk '{print $2}' | sed 's/:/_/g')

[ "$connected" ] && batterylevel=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Battery1" string:"Percentage" | awk '{print $3}' | awk '{print $0"%"}')
btname=$(bluetoothctl info | grep 'Name: ' | awk '{$1=""; sub(/^[ ]+/, ""); print $0}')

if [ "$phone" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"phone\", \"alt\": \"phone\"}"
elif [ "$computer" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"computer\", \"alt\": \"computer\"}"
elif [ "$headset" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname ${batterylevel}\", \"class\": \"headset\", \"alt\": \"headset\"}"
elif [ "$disconnected" ]; then
    echo "{\"text\": \"OFF\", \"class\": \"bt-off\", \"alt\": \"disconnected\"}"
fi
