#!/usr/bin/sh
#
# Ran when the DWM process closes (logout/shutdown).
# Kills processes spawned on startup.
#

declare -a commands=$("$HOME/.xscripts/commands.sh")

for i in `seq 0 3 ${#commands[@]}`; do
	killall ${commands[$((i+2))]} #BLEHHH STAB ALL :>
done

