#!/bin/sh

xrdb -merge -I ~/.dotconfig/ ~/.dotconfig/Xresources

if [ "$(hostname)" = "vision" ]; then
	# laptop
	xrandr --setprovideroutputsource modesetting NVIDIA-0
	xrandr --auto
	setxkbmap -option "caps:swapescape"
else
	# desktop
	xrandr --output DVI-D-0 --mode 1920x1080 --rate 144 --primary --output HDMI-A-4 --mode 1920x1080 --rate 60 --left-of DVI-D-0
fi

exec bar &
exec urxvtd --quiet --opendisplay --fork &
exec unclutter --fork &
exec dwm 
