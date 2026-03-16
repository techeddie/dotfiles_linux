#!/bin/bash
# ~/.config/i3/center-window.sh
eval $(xdotool getactivewindow getwindowgeometry --shell)
SCREEN_W=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d'x' -f1)
SCREEN_H=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d'x' -f2)
X=$(( (SCREEN_W - WIDTH) / 2 ))
Y=$(( (SCREEN_H - HEIGHT) * 2 / 3 ))
xdotool getactivewindow windowmove $X $Y
