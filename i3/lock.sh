#!/bin/bash

# paths
WALLPAPER="$HOME/.config/i3/wallpaper.png"
LOCK_IMG="$HOME/.cache/lockscreen_composite.png"
LOCK_CACHE_HASH="$HOME/.cache/lockscreen_composite.sha"

mkdir -p "$HOME/.cache"

# --- cache invalidation: hash wallpaper + current monitor layout ---
CURRENT_HASH=$(sha256sum "$WALLPAPER" <(xrandr --query) 2>/dev/null | sha256sum | cut -d' ' -f1)
STORED_HASH=$(cat "$LOCK_CACHE_HASH" 2>/dev/null)

if [[ "$CURRENT_HASH" == "$STORED_HASH" && -f "$LOCK_IMG" ]]; then
    # cache hit: skip rendering
    i3lock \
        --image="$LOCK_IMG" \
        --nofork \
        --ignore-empty-password \
        --show-failed-attempts
    exit 0
fi

# --- get total virtual desktop size ---
DESKTOP_GEOMETRY=$(xrandr | grep -oP 'current \K[0-9]+ x [0-9]+' | tr -d ' ')
DESKTOP_W=$(echo "$DESKTOP_GEOMETRY" | cut -dx -f1)
DESKTOP_H=$(echo "$DESKTOP_GEOMETRY" | cut -dx -f2)

# create blank black canvas matching total desktop size
magick -size "${DESKTOP_W}x${DESKTOP_H}" xc:black "$LOCK_IMG"

# --- process each connected monitor individually ---
while IFS= read -r line; do
    if [[ $line =~ ^([A-Za-z0-9-]+)\ connected\ (primary\ )?([0-9]+)x([0-9]+)\+([0-9]+)\+([0-9]+) ]]; then
        MON_W="${BASH_REMATCH[3]}"
        MON_H="${BASH_REMATCH[4]}"
        MON_X="${BASH_REMATCH[5]}"
        MON_Y="${BASH_REMATCH[6]}"

        TMP_MON="/tmp/lock_mon_${MON_X}_${MON_Y}.png"

        # scale wallpaper to cover this monitor (crop to fit, keep aspect ratio)
        magick "$WALLPAPER" \
            -resize "${MON_W}x${MON_H}^" \
            -gravity Center \
            -extent "${MON_W}x${MON_H}" \
            "$TMP_MON"

        # blur strength: -blur <radius>x<sigma>
        #   radius: 0 = auto-calculate from sigma (recommended)
        #   sigma:  controls actual blur strength
        #
        #   0x2  = subtle, barely visible
        #   0x5  = light
        #   0x8  = default (good readability)
        #   0x15 = strong
        #   0x25 = very strong / frosted glass
        magick "$TMP_MON" -blur 0x2 "$TMP_MON"

        # place it at the correct position on the canvas
        magick "$LOCK_IMG" \
            "$TMP_MON" \
            -geometry "+${MON_X}+${MON_Y}" \
            -composite \
            "$LOCK_IMG"

        rm "$TMP_MON"
    fi
done < <(xrandr --query)

# save hash for next run
echo "$CURRENT_HASH" > "$LOCK_CACHE_HASH"

# --- lock ---
i3lock \
    --image="$LOCK_IMG" \
    --nofork \
    --ignore-empty-password \
    --show-failed-attempts
