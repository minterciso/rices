#!/bin/bash

externalMonitor=$(xrandr --query | grep 'HDMI-0')
if [[ $externalMonitor != *disconnected* ]]; then
	xrandr  --output HDMI-0 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output eDP-1-1 --mode 1920x1080 --pos 0x360 --rotate normal
fi
