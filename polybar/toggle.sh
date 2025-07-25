#!/bin/bash

# Checks if polybar is running
if pgrep -x "polybar" > /dev/null
then
    # Kill all polybar instances
    killall -q polybar
else
    # Relaunch polybar (adjust this command based on your setup)
    ~/.config/polybar/launch.sh --material &
fi
