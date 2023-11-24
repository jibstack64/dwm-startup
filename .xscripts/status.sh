#!/usr/bin/sh
# 
# Updates status bar.
#

( while true; do
	# Battery
	dc="discharging"
	charging=$(upower -i $(upower -e | grep BAT) | grep -E "state|to\ full" | awk '{print $2}' | xargs)
	if [[ "$dc" == "$charging" ]]; then
		charging="🠛"
	else
		charging="🠙"
	fi

    battery=$(acpi | grep -oP '(?<=, )\d+(?=%)')
	
	# Brightness
    brightness=$(light -G | cut -d. -f1)
	
	# Volume
    volume=$(amixer get Master | grep -oP '\d+%' | head -n1)
	
	# Time
	time=$(date +%T)

    xsetroot -name " bat: [$battery% $charging]   brt: [$brightness%]   vol: [$volume]   |   $time "
    
    sleep 2
done )

