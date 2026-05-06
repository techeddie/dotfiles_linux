#!/bin/bash

# check if floating-term instance is already running
if ! pgrep -f "kitty --class floating-term" > /dev/null; then
    # launch and wait briefly for window to appear
    kitty --class floating-term &
    sleep 0.4
    # move new window to scratchpad
    i3-msg '[instance="floating-term"] move scratchpad'
fi

# toggle scratchpad visibility
i3-msg '[instance="floating-term"] scratchpad show'
