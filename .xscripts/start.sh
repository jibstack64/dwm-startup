#!/usr/bin/sh
#
# Ran when DWM starts; spawns all startup processes.
#

declare -a commands=$("$HOME/.xscripts/commands.sh")

# Start commands
for i in `seq 0 3 ${#commands[@]}`; do
	background=${commands[$((i+1))]}
	cmd=${commands[i]}
	if [[ $background -eq 1 ]]; then
		$cmd &
	else
		$cmd
	fi
done

