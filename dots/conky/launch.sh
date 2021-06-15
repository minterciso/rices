#!/bin/bash
externalMonitor=$(xrandr --query | grep 'HDMI-0')
if [[ $externalMonitor != *disconnected* ]]; then
	conky -c $HOME/.config/conky/conkyrc1 &
	conky -c $HOME/.config/conky/conkyrc2 &
	conky -c $HOME/.config/conky/conkyrc3 &
	conky -c $HOME/.config/conky/conkyrc4 &
	conky -c $HOME/.config/conky/conkyrc5 &
else
	conky -c $HOME/.config/conky/conkyrc_all &
	conky -c $HOME/.config/conky/conkyrc2 &
fi

