#!/bin/sh
# Sway autostart helper.
#
# Why a script instead of `for_window ... move scratchpad`:
#   - In sway a `con_mark` guard on a *fresh* window never matches (a window
#     with zero marks fails every con_mark criteria), so the classic
#     "fire once" trick silently does nothing.
#   - A bare `for_window [app_id=...] move scratchpad` re-fires on every title
#     change (Sublime tab switch, KeePassXC unlock, ...) and keeps yanking the
#     window back out of view.
# This waits for each window exactly once, moves it to the scratchpad, done.

LOG="${XDG_RUNTIME_DIR:-/tmp}/sway-scratchpad-startup.log"
: > "$LOG"
log() { printf '%s %s\n' "$(date +%H:%M:%S)" "$*" >> "$LOG"; }

# --- notifier -----------------------------------------------------------------
# swaync is pinned to output HDMI-A-2 in config.json; on a cold login that
# output is not registered yet and swaync exits. Wait for the output, then
# (re)start it.
start_swaync() {
    i=0
    while [ "$i" -lt 30 ]; do
        if swaymsg -t get_outputs | grep -q '"name": "HDMI-A-2"'; then
            break
        fi
        i=$((i + 1))
        sleep 1
    done
    # something (dunst/mako, or a systemd user unit) may have grabbed the
    # org.freedesktop.Notifications name first -> swaync can't start.
    systemctl --user stop dunst.service mako.service 2>/dev/null
    pkill -x dunst 2>/dev/null
    pkill -x mako  2>/dev/null
    pkill -x swaync 2>/dev/null
    sleep 0.5
    swaync >> "$LOG" 2>&1 &
    log "swaync started (pid $!)"
}

# --- move a window to the scratchpad once it appears -------------------------
# $1 app_id   $2 width   $3 height
hide_when_ready() {
    app_id=$1 w=$2 h=$3
    i=0
    while [ "$i" -lt 60 ]; do
        if swaymsg -t get_tree | grep -q "\"app_id\": \"$app_id\""; then
            swaymsg "[app_id=\"$app_id\"] floating enable, resize set $w $h, move scratchpad, move position center" \
                >> "$LOG" 2>&1
            log "moved $app_id to scratchpad"
            return 0
        fi
        i=$((i + 1))
        sleep 1
    done
    log "timeout waiting for $app_id"
    return 1
}

start_swaync &

# launch apps if they are not already running
pgrep -x sublime_text   >/dev/null || subl &
pgrep -x keepassxc      >/dev/null || keepassxc &
pgrep -f seafile-applet >/dev/null || seafile-applet &
pgrep -x gnome-disks    >/dev/null || gnome-disks &

hide_when_ready "sublime_text"               1400 900 &
hide_when_ready "org.keepassxc.KeePassXC"     900 600 &
hide_when_ready "com.seafile.seafile-applet" 1000 640 &
hide_when_ready "org.gnome.DiskUtility"       800 600 &

wait
