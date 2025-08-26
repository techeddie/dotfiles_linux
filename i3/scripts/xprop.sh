#!/bin/bash

# Get window class and show notification with longer duration
WINDOW_CLASS=$(xprop WM_CLASS | grep -o '"[^"]*"' | head -n 1)

if [ -n "$WINDOW_CLASS" ]; then
    # Copy to clipboard (requires xclip)
    echo "$WINDOW_CLASS" | xclip -selection clipboard
    
    # Show notification for 5 seconds
    notify-send -t 5000 "Window Class" "Class: $WINDOW_CLASS\n(Copied to clipboard)\n\nClick on any window to get its class"
    
    # Print to terminal if run from there
    echo "Window class: $WINDOW_CLASS"
else
    notify-send -t 3000 "Error" "No window selected or class not found"
fi
