#!/usr/bin/sh
#
# Holds the commands to be ran/killed on start/exit.
#

echo '(
	# command												bg	kill
	"nitrogen --set-scaled $HOME/.background.jpg"			1	""
	"picom"													1	"picom"
	"setxkbmap -layout gb"									1	""
	"dunst"													1	"dunst"
	"( sleep 1 && notify-send \"Logged in.\" )"				1	""
	"$HOME/.xscripts/status.sh"								1	"status.sh"
	"( sudo ntpd -qg && sudo hwclock -w )"					1	""
)'

