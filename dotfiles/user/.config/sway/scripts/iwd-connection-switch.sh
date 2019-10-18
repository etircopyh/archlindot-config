#!/bin/sh

wiredup=$(ip link | grep 'enp4s0' | grep -o 'state UP')
wireddown=$(ip link | grep 'enp4s0' | grep -o 'state DOWN')

if [ "$wiredup" = "state UP" ]; then
    iwctl -- station wlan0 disconnect
elif [ "$wireddown" = "state DOWN" ]; then
    iwctl -- station wlan0 connect speed_conditioned
fi
