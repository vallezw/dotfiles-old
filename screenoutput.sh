#!/bin/bash
var=`xrandr | grep " connected " | awk '{ print$1 }' | wc -l`
echo "$var"
if [ $var -ge 2 ]; then
	xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 2560x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-2 --off
fi
