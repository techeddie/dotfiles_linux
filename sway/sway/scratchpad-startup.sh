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
# This waits for each window exactly once, places it, done.

LOG="${XDG_RUNTIME_DIR:-/tmp}/sway-scratchpad-startup.log"
: > "$LOG"
log() { printf '%s %s\n' "$(date +%H:%M:%S)" "$*" >> "$LOG"; }

# --- notifier ----------------------------------------------------------------
# Whoever owns org.freedesktop.Notifications at login (dunst re-activated over
# D-Bus, xfce4-notifyd, mako, ...) blocks swaync. Kill the current owner, then
# start swaync; retry a few times in case something re-activates the old daemon.
notif_owner_pid() {
    busctl --user call org.freedesktop.DBus /org/freedesktop/DBus \
        org.freedesktop.DBus GetConnectionUnixProcessID s \
        org.freedesktop.Notifications 2>/dev/null | awk '{print $2}'
}

start_swaync() {
    systemctl --user stop dunst.service mako.service xfce4-notifyd.service 2>/dev/null

    n=0
    while [ "$n" -lt 10 ]; do
        pid=$(notif_owner_pid)
        # swaync already up and owning the name -> done
        if [ -n "$pid" ] && [ "$pid" != 0 ] \
           && [ "$(cat /proc/"$pid"/comm 2>/dev/null)" = swaync ]; then
            log "swaync owns notifications (pid $pid)"
            return 0
        fi
        # someone else owns it -> evict
        if [ -n "$pid" ] && [ "$pid" != 0 ]; then
            log "killing notification daemon $(cat /proc/"$pid"/comm 2>/dev/null) (pid $pid)"
            kill "$pid" 2>/dev/null
            sleep 0.5
        fi
        pkill -x swaync 2>/dev/null
        sleep 0.3
        swaync >> "$LOG" 2>&1 &
        log "swaync started (pid $!)"
        sleep 1.5
        n=$((n + 1))
    done
    log "gave up trying to make swaync own the notification name"
}

# --- wait until a window with the given app_id exists -----------------------
wait_for_app() {
    app_id=$1
    i=0
    while [ "$i" -lt 60 ]; do
        swaymsg -t get_tree | grep -q "\"app_id\": \"$app_id\"" && return 0
        i=$((i + 1))
        sleep 1
    done
    log "timeout waiting for $app_id"
    return 1
}

hide_when_ready() {   # $1 app_id  $2 w  $3 h
    wait_for_app "$1" || return 1
    swaymsg "[app_id=\"$1\"] floating enable, resize set $2 $3, move scratchpad, move position center" >> "$LOG" 2>&1
    log "moved $1 to scratchpad"
}

move_when_ready() {   # $1 app_id  $2 workspace
    wait_for_app "$1" || return 1
    swaymsg "[app_id=\"$1\"] move container to workspace $2" >> "$LOG" 2>&1
    log "moved $1 to workspace $2"
}

start_swaync &

# --- launch apps if not already running ------------------------------------
pgrep -x sublime_text   >/dev/null || subl &
pgrep -x keepassxc      >/dev/null || keepassxc &
pgrep -f seafile-applet >/dev/null || seafile-applet &
pgrep -x gnome-disks    >/dev/null || gnome-disks &

# Claude PWA (Brave) -> workspace 1
CLAUDE_ID=fmpnliohjhemenmnlpbfagaolkdacoja
CLAUDE_APP_ID="brave-$CLAUDE_ID-Default"
pgrep -f "app-id=$CLAUDE_ID" >/dev/null \
    || brave --profile-directory=Default "--app-id=$CLAUDE_ID" &

# kitty + tmux system monitors (btop | htop) -> workspace 10
if ! swaymsg -t get_tree | grep -q '"app_id": "sysmon"'; then
    kitty --class sysmon -e env -u TMUX sh -c 'tmux has-session -t sysmon 2>/dev/null || { tmux new-session -d -s sysmon btop; tmux split-window -h -t sysmon htop; }; exec tmux attach -t sysmon' &
fi

# --- place windows once they show up ---------------------------------------
hide_when_ready "sublime_text"               1400 900 &
hide_when_ready "org.keepassxc.KeePassXC"     900 600 &
hide_when_ready "com.seafile.seafile-applet" 1000 640 &
hide_when_ready "org.gnome.DiskUtility"       800 600 &
move_when_ready "sysmon"                                10 &
move_when_ready "$CLAUDE_APP_ID"                         1 &

wait
