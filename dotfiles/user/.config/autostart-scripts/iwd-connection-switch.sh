#!/usr/bin/env bash
wiredup=$(ip link | grep 'eth0' | grep -o 'state UP')
wireddown=$(ip link | grep 'eth0' | grep -o 'state DOWN')

if [ "$wiredup" ]; then
    iwctl station wlan0 disconnect
elif [ "$wireddown" ]; then
    iwctl station wlan0 connect speed_conditioned
fi
