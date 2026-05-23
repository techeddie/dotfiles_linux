#!/bin/bash
# Launch or focus floating kitty terminal on special workspace
hyprctl clients -j | grep -q '"class": "floating-term"' \
    && hyprctl dispatch togglespecialworkspace floating-term \
    || kitty --class floating-term
