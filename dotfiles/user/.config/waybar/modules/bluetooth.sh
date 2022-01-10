#!/usr/bin/env bash

set -o pipefail

#exec 2> /dev/null

macfile=/tmp/bt-mac.txt

if [ ! -s "$macfile" ]; then
    devicemac=$(bluetoothctl info | head -1 | awk '{print $2}' | sed 's/:/_/g')
else
    devicemac=$(< $macfile)
fi


if ! grep -q "$devicemac" "$macfile"; then
    echo "$devicemac" > "$macfile"
fi


bt_audio=$(pactl info | grep 'bluez')
connected=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Device1" string:"Connected" | grep 'true')
devicetype=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Device1" string:"Icon" | awk '{print $2}')

btname=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Device1" string:"Alias" | awk '{$1=""; sub(/^[ ]+/, ""); print $0}')

if [ "$bt_audio" ]; then
    profile=$(pw-dump -N | jq -r '.[].info.props["api.bluez5.profile"] | select( . != null)' | head -1)
    batterylevel=$(dbus-send --print-reply=literal --system --dest=org.bluez "/org/bluez/hci0/dev_$devicemac" org.freedesktop.DBus.Properties.Get string:"org.bluez.Battery1" string:"Percentage" | awk '{print $3}' | awk '{print $0"%"}')
    codec=$(pw-dump -N | jq -r '.[].info.props["api.bluez5.codec"] | select( . != null)' | tr '[:lower:]' '[:upper:]' | sed 's/^/[/;s/$/]/' | head -1)
fi

if [[ "$devicetype" =~ audio-head ]] && [ "$profile" = "a2dp-sink" ]; then
    devicetype="audio-headphones"
else
    devicetype="audio-headset"
fi


if [ "$devicetype" = "phone" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"$devicetype\", \"alt\": \"$devicetype\"}"
elif [ "$devicetype" = "computer" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname\", \"class\": \"$devicetype\", \"alt\": \"$devicetype\"}"
elif [ "$bt_audio" ] && [ "$connected" ]; then
    echo "{\"text\": \"$btname $codec $batterylevel\", \"class\": \"$devicetype\", \"alt\": \"$devicetype\"}"
elif [ ! "$connected" ]; then
    echo "{\"text\": \"OFF\", \"class\": \"bt-off\", \"alt\": \"disconnected\"}"
    rm $macfile
fi
