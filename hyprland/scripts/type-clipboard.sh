#!/usr/bin/env bash
# type out clipboard contents character-by-character with a delay

# small delay so the target window keeps focus after the keybind fires
sleep 0.3

# -d sets delay between keystrokes in milliseconds (20 ms here)
wl-paste --no-newline | wtype -d 20 -

# press enter afterwards
# wtype -k Return
