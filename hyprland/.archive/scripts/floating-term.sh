#!/bin/bash

# Hyprland equivalent of i3's floating-term scratchpad
if ! hyprctl clients -j | grep -q '"floating-term"'; then
    kitty --class floating-term -e tmux new-session -A -s scratchpad &
    sleep 0.4
fi

hyprctl dispatch togglespecialworkspace term
