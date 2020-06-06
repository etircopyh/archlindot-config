#!/bin/sh

# Set brightness via brightnessctl when redshift status changes

# Set brightness percentage values for each status.
# Range from 1 to 100 is valid
brightness_day=100%
brightness_transition=60%
brightness_night=45%

if [ "$1" = period-changed ]; then
	case $3 in
		night)
			brightnessctl set $brightness_night
			;;
		transition)
			brightnessctl set $brightness_transition
            ;;
		daytime)
			brightnessctl set $brightness_day
			;;
	esac
fi
