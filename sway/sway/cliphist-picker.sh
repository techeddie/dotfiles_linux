#!/bin/bash
# Cliphist picker with rofi — dedupes entries even if they only differ by trailing/leading whitespace
selected=$(cliphist list | sed 's/[[:space:]]*$//' | awk '!seen[$0]++' | rofi -dmenu -theme "$1")
if [ -n "$selected" ]; then
    echo "$selected" | cliphist decode | wl-copy
    sleep 0.2
    # ydotool sends real evdev keycodes via uinput; wtype uploads its own
    # minimal XKB keymap (keycode 9 = its first mapped key), which XWayland
    # clients like KeePassXC misread using the system keymap (keycode 9 =
    # Escape there) -> Ctrl+V was arriving as a bare Escape.
    #
    # kitty binds paste to Ctrl+Shift+V, not Ctrl+V (see kitty.conf) - so
    # terminals need the Shift key added to the chord.
    focused_app_id=$(swaymsg -t get_tree | jq -r '.. | objects | select(.focused==true) | .app_id // empty')
    if [ "$focused_app_id" = "kitty" ]; then
        ydotool key 29:1 42:1 47:1 47:0 42:0 29:0   # Ctrl+Shift+V
    else
        ydotool key 29:1 47:1 47:0 29:0             # Ctrl+V
    fi
fi
