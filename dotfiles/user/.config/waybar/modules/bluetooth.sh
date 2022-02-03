#!/usr/bin/env bash

set -o pipefail

exec 2> /dev/null

command -v jq grep sed busctl pactl pw-dump &> /dev/null || printf "\033[0;31mYour system does not satisfy the script requirements.\033[0m\n"


macfile=/tmp/bt-mac.txt

if [ ! -s "$macfile" ]; then
    devicemac=$(busctl --json=short --no-pager call org.bluez / org.freedesktop.DBus.ObjectManager GetManagedObjects | jq -r '.. | select(.Connected.data == true?) | .Address.data | select( . != null)' | sed 's/:/_/g')
    [ "$devicemac" ] && echo "$devicemac" > "$macfile"
else
    devicemac=$(< $macfile)
fi


function get-prop() {
    busctl --json=short --no-pager get-property org.bluez "/org/bluez/hci0/dev_$devicemac" "org.bluez.$1" "$2" | jq -r '.data'
}

function get-bluez-prop() {
    if [ "$pw_audio" ]; then
        pw-dump -N | jq -r ".[].info.props[\"api.bluez5.$1\"] | select( . != null)" | head -1
    elif [ "$pa_audio" ]; then
        pactl --format=json list sinks | jq -r ".[] | select(.name | contains(\"bluez_output\")) | .properties[\"api.bluez5.$1\"]" | head -1
    fi
}

pw_audio=$(pgrep -x pipewire)
pa_audio=$(pgrep -x pulseaudio)


bt_audio=$(pactl list sinks | grep 'bluez_output')
if [ "$devicemac" ]; then
    connected=$(get-prop Device1 Connected)
    devicetype=$(get-prop Device1 Icon)
    btname=$(get-prop Device1 Alias)
fi


if [ "$bt_audio" ]; then
    batterylevel=$(get-prop Battery1 Percentage | awk '{print $0"%"}')
    profile=$(get-bluez-prop profile)
    codec=$(get-bluez-prop codec | tr '[:lower:]' '[:upper:]' | sed 's/^/[/;s/$/]/')
    if [[ "$devicetype" =~ audio-head ]] && [ "$profile" = "a2dp-sink" ]; then
        devicetype="audio-headphones"
    else
        devicetype="audio-headset"
    fi
fi


if [ "$connected" = true ]; then
    echo "{\"text\": \"$btname $codec $batterylevel\", \"class\": \"$devicetype\", \"alt\": \"$devicetype\"}"
elif [ "$connected" = false ] || [ ! "$devicemac" ]; then
    [ -s "$macfile" ] && rm $macfile
    echo "{\"text\": \"OFF\", \"class\": \"bt-off\", \"alt\": \"disconnected\"}"
fi
