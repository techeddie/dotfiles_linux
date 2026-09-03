#!/bin/sh
# Sway login autostart.
#
# Windows are placed from here, not with `for_window`, because:
#   - a `con_mark` guard never matches a fresh (mark-less) window, so the
#     "fire once" trick silently does nothing;
#   - a bare `for_window [app_id=...] move scratchpad` re-fires on every title
#     change and keeps yanking the window out of view.
# So: wait for each window once, place it, done.

LOG="${XDG_RUNTIME_DIR:-/tmp}/sway-scratchpad-startup.log"
: > "$LOG"
log() { printf '%s %s\n' "$(date +%H:%M:%S)" "$*" >> "$LOG"; }

# --- notifier --------------------------------------------------------------
# mako is masked; this kill is just a safety net in case the mask is ever
# lifted (package update, accidental unmask).
pkill -x mako 2>/dev/null
pkill -x swaync 2>/dev/null
swaync >> "$LOG" 2>&1 &
log "swaync started (pid $!)"

# --- helpers --------------------------------------------------------------
wait_for_app() {
    i=0
    while [ "$i" -lt 60 ]; do
        swaymsg -t get_tree | grep -q "\"app_id\": \"$1\"" && return 0
        i=$((i + 1)); sleep 1
    done
    log "timeout waiting for $1"; return 1
}

hide() {   # app_id  w  h
    wait_for_app "$1" || return 1
    swaymsg "[app_id=\"$1\"] floating enable, resize set $2 $3, move scratchpad, move position center" >> "$LOG" 2>&1
    log "$1 -> scratchpad"
}

send() {   # app_id  workspace
    wait_for_app "$1" || return 1
    swaymsg "[app_id=\"$1\"] move container to workspace $2" >> "$LOG" 2>&1
    log "$1 -> workspace $2"
}

# --- launch apps (if not already running) -------------------------------
pgrep -x sublime_text   >/dev/null || subl &
pgrep -x keepassxc      >/dev/null || keepassxc &
pgrep -f seafile-applet >/dev/null || seafile-applet &
pgrep -x gnome-disks    >/dev/null || gnome-disks &

# Claude PWA (Brave) -> workspace 1
CLAUDE_ID=fmpnliohjhemenmnlpbfagaolkdacoja
pgrep -f "app-id=$CLAUDE_ID" >/dev/null \
    || brave --profile-directory=Default "--app-id=$CLAUDE_ID" &

# kitty + tmux session "sysmon", btop | htop side by side -> workspace 10
pgrep -f 'kitty --class sysmon' >/dev/null || kitty --class sysmon -e env -u TMUX sh -c '
    if ! tmux has-session -t sysmon 2>/dev/null; then
        tmux new-session  -d -s sysmon btop
        tmux split-window -h -t sysmon htop
        tmux set-option   -t sysmon status off
    fi
    exec tmux attach -t sysmon' &

# --- place windows once they appear ------------------------------------
hide "sublime_text"               1400 900 &
hide "org.keepassxc.KeePassXC"     900 600 &
hide "com.seafile.seafile-applet" 1000 640 &
hide "org.gnome.DiskUtility"       800 600 &
send "sysmon"                                10 &

wait
