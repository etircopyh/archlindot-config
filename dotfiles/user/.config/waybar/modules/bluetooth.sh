#!/usr/bin/env bash

set -o nounset
set -o pipefail

devicemac=$(bluetoothctl info | head -1 | awk '{print $2}' | sed 's/:/_/g')

connected=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Device1" string:"Connected" | grep 'true')
disconnected=$(bluetoothctl info | grep -e 'Missing device')
devicetype=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Device1" string:"Icon" | awk '{print $2}')

batterylevel=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Battery1" string:"Percentage" | awk '{print $3}' | awk '{print $0"%"}')
btname=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Device1" string:"Name" | awk '{$1=""; sub(/^[ ]+/, ""); print $0}')
codec=$(pw-dump -N | jq -r '.[].info.props["api.bluez5.codec"] | select( . != null)' | tr '[:lower:]' '[:upper:]')

if [ "$devicetype" = "phone" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"phone\", \"alt\": \"phone\"}"
elif [ "$devicetype" = "computer" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"computer\", \"alt\": \"computer\"}"
elif [ "$devicetype" = "audio-headset" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname [$codec] ${batterylevel}\", \"class\": \"headset\", \"alt\": \"headset\"}"
elif [ "$disconnected" ]; then
    echo "{\"text\": \"OFF\", \"class\": \"bt-off\", \"alt\": \"disconnected\"}"
fi
