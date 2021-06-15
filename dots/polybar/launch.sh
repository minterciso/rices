#!/usr/bin/env bash

# Check for external monitor
externalMonitor=$(xrandr --query | grep 'HDMI-0')

# Terminate any currently running instances
killall -q polybar

# Pause while killall completes
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

if [[ $externalMonitor != *disconnected* ]];then
	MONITOR=HDMI-0 polybar --reload main -c ~/.config/polybar/config &
	MONITOR=eDP-1-1 polybar --reload small -c ~/.config/polybar/config &
else
	MONITOR=eDP-1-1 polybar --reload main -c ~/.config/polybar/config &
fi
