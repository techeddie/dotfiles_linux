-- ===============================================================
-- HYPRLAND CONFIG EDDIE — migrated to Lua (0.55+)
-- ~/.config/hypr/hyprland.lua
-- ===============================================================

------------------
---- MONITORS ----
------------------

hl.monitor({ output = "HDMI-A-2", mode = "2560x1440@60",  position = "0x0",    scale = 1 })
hl.monitor({ output = "eDP-1",    mode = "1920x1080@60",  position = "2560x0", scale = 1 })
hl.monitor({ output = "",         mode = "preferred",      position = "auto",   scale = 1 })

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE",        "24")
hl.env("XCURSOR_THEME",       "breeze_cursors")
hl.env("HYPRCURSOR_SIZE",     "24")
hl.env("QT_QPA_PLATFORM",     "wayland")
hl.env("SDL_VIDEODRIVER",     "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE",    "wayland")

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("brave")
    hl.exec_cmd("copyq")
    hl.exec_cmd("dunst")
    hl.exec_cmd("flameshot")
    hl.exec_cmd("gnome-disks")
    hl.exec_cmd("autokey-gtk")
    hl.exec_cmd("guake")
    hl.exec_cmd("keepassxc")
    hl.exec_cmd("kitty --class floating-term -e tmux new-session -A -s scratchpad")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("obsidian")
    hl.exec_cmd("seafile-applet")
    hl.exec_cmd("kitty -e sh -c tmux")
    hl.exec_cmd("subl")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar")
end)

-- Runs on every reload (exec_always equivalent)
hl.exec_cmd("/usr/bin/autokey-gtk")

-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        border_size = 1,
        layout      = "dwindle",
    },

    decoration = {
        rounding         = 8,
        active_opacity   = 1.0,
        inactive_opacity = 0.8,

        shadow = {
            enabled      = true,
            range        = 7,
            render_power = 2,
            color        = 0x00000080,
            offset       = { -7, -7 },
        },

        blur = {
            enabled = false,
        },
    },

    animations = {
        enabled = false,
    },

    dwindle = {
        preserve_split = true,
        force_split    = 2,
    },

    master = {
        new_status = "master",
    },

    misc = {
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
        focus_on_activate        = true,
    },
})

---------------
---- INPUT ----
---------------

hl.config({
    input = {
        repeat_delay       = 250,
        repeat_rate        = 40,
        follow_mouse       = 1,
        sensitivity        = 0,
        numlock_by_default = true,
        kb_layout          = "de",
        kb_variant         = "us",
        kb_options         = "nodeadkeys",

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.device({
    name          = "sinowealth-gxt-144-gaming-mouse",
    accel_profile = "adaptive",
    sensitivity   = -0.7,
})

--------------------
---- WORKSPACES ----
--------------------

for i = 1, 9 do
    hl.workspace_rule({ workspace = tostring(i), monitor = "HDMI-A-2" })
end
hl.workspace_rule({ workspace = "10", monitor = "eDP-1" })

--------------------
---- WINDOW RULES --
--------------------

-- No focus for notifications
hl.window_rule({ match = { class = "dunst" }, no_initial_focus = true })

-- Fullscreen
hl.window_rule({ match = { class = "mpv" }, fullscreen = true })

-- Scratchpad windows
hl.window_rule({ match = { class = "floating-term" }, workspace = "special:term",        float = true, size = "1536 400" })
hl.window_rule({ match = { class = "Gnome-disks" },   workspace = "special:disks",       float = true, size = "1300 900", center = true })
hl.window_rule({ match = { class = "Sublime_text" },  workspace = "special:sublime",     float = true, size = "1400 900" })
hl.window_rule({ match = { class = "autokey-gtk" },   workspace = "special:autokey",     float = true, size = "1400 900", center = true })
hl.window_rule({ match = { class = "sp-backup.root"}, workspace = "special:backup-root", float = true, size = "1536 400" })
hl.window_rule({ match = { class = "sp-backup.home"}, workspace = "special:backup-home", float = true, size = "1536 400" })

-- Floating windows
hl.window_rule({ match = { class = "Pavucontrol" },               float = true, center = true })
hl.window_rule({ match = { class = "blueman-manager" },           float = true, size = "900 600",  center = true })
hl.window_rule({ match = { title = "KeePassXC" },                 float = true, size = "900 600",  center = true })
hl.window_rule({ match = { class = "copyq" },                     float = true, center = true })
hl.window_rule({ match = { class = "flameshot" },                 float = true, center = true })
hl.window_rule({ match = { class = "Nm-connection-editor" },      float = true, center = true })
hl.window_rule({ match = { class = "gnome-system-monitor" },      float = true, size = "800 600" })
hl.window_rule({ match = { class = "octopi" },                    float = true, size = "1200 900", center = true })
hl.window_rule({ match = { class = "net.nokyan.Resources" },      float = true, size = "1200 900", center = true })
hl.window_rule({ match = { class = "Gnome-calculator" },          float = true, center = true })
hl.window_rule({ match = { class = "TeamViewer" },                float = true, size = "800 900",  center = true })
hl.window_rule({ match = { class = "arandr" },                    float = true, center = true })
hl.window_rule({ match = { class = "Baobab" },                    float = true, center = true })
hl.window_rule({ match = { class = "Grub-customizer" },           float = true, center = true })
hl.window_rule({ match = { class = "Io.github.cboxdoerfer.FSearch" }, float = true })
hl.window_rule({ match = { class = "TimeShift-gtk" },             float = true, center = true })
hl.window_rule({ match = { class = "Woeusbgui" },                 float = true, center = true })
hl.window_rule({ match = { class = "Xfce4-appfinder" },           float = true, center = true })
hl.window_rule({ match = { class = "Xfce4-taskmanager" },         float = true, size = "800 900",  center = true })
hl.window_rule({ match = { class = "Seafile Client" },            float = true, center = true })
hl.window_rule({ match = { class = "nextcloud" },                 float = true, center = true })
hl.window_rule({ match = { class = "doublecmd", title = "Options" }, float = true, size = "800 600", center = true })
hl.window_rule({ match = { class = "doublecmd", title = "Edit" },    float = true, center = true })
hl.window_rule({ match = { title = "Remmina Remote" },            float = true, size = "400 500",  center = true })
hl.window_rule({ match = { class = "Virt-manager" },              float = true })
hl.window_rule({ match = { title = "GtkFileChooserDialog" },      float = true, size = "800 600",  center = true })

-- Thunar progress dialogs
hl.window_rule({ match = { title = "Copying files to" }, float = true })
hl.window_rule({ match = { title = "Copying" },          float = true })
hl.window_rule({ match = { title = "Deleting" },         float = true })
hl.window_rule({ match = { title = "Moving" },           float = true })
hl.window_rule({ match = { title = "Packing" },          float = true })

-- Workspace assignments
hl.window_rule({ match = { class = "kitty" },           workspace = "1" })
hl.window_rule({ match = { class = "brave-browser" },   workspace = "2" })
hl.window_rule({ match = { class = "Chromium" },        workspace = "5" })
hl.window_rule({ match = { class = "Ledger Live" },     workspace = "6" })
hl.window_rule({ match = { class = "TelegramDesktop" }, workspace = "4" })
hl.window_rule({ match = { class = "Wfica" },           workspace = "8" })
hl.window_rule({ match = { class = "obsidian" },        workspace = "3" })
hl.window_rule({ match = { class = "firefox" },         workspace = "5" })
hl.window_rule({ match = { class = "floorp" },          workspace = "5" })
hl.window_rule({ match = { class = "thunderbird" },     workspace = "10" })

-- Fix XWayland dragging issues
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true,
})

---------------------
---- KEYBINDINGS ----
---------------------

local mod     = "SUPER"
local alt     = "ALT"
local term    = "kitty"

-- Terminal
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(term))

-- Kill window
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + K", hl.dsp.window.close())

-- Fullscreen
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = 0 }))

-- Floating toggle
hl.bind(mod .. " + T", hl.dsp.window.float({ action = "toggle" }))

-- Split direction (dwindle)
hl.bind(mod .. " + H", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + V", hl.dsp.layout("togglesplit"))

-- Focus windows
hl.bind(mod .. " + left",  hl.dsp.focus({ direction = "l" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mod .. " + down",  hl.dsp.focus({ direction = "d" }))
hl.bind(mod .. " + up",    hl.dsp.focus({ direction = "u" }))

-- Move windows
hl.bind(mod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "l" }))
hl.bind(mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "d" }))
hl.bind(mod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "u" }))
hl.bind(mod .. " + " .. alt .. " + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mod .. " + " .. alt .. " + J", hl.dsp.window.move({ direction = "d" }))
hl.bind(mod .. " + " .. alt .. " + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mod .. " + " .. alt .. " + L", hl.dsp.window.move({ direction = "r" }))

-- Resize submap (sauberste Lösung laut Doku)

-- Mouse drag/resize
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspace switching
for i = 1, 9 do
    hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mod .. " + 0",       hl.dsp.focus({ workspace = 10 }))
hl.bind(mod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))
hl.bind(mod .. " + SHIFT + Return", hl.dsp.focus({ workspace = 1 }))

-- Workspace navigation
hl.bind("ALT + CTRL + J",     hl.dsp.focus({ workspace = "e-1" }))
hl.bind("ALT + CTRL + K",     hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + Next",     hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + Prior",    hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + SHIFT + End",  hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + Home", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + SHIFT + J",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + SHIFT + K",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind("ALT + Tab",          hl.dsp.focus({ workspace = "previous" }))

-- Cycle windows (alt-tab style)
-- hl.bind(mod .. " + Tab",       hl.dsp.window.cyclenext())
-- hl.bind(mod .. " + SHIFT + Tab", hl.dsp.window.cyclenext({ prev = true }))

-- Scratchpad (generic)
hl.bind(mod .. " + Z", hl.dsp.window.move({ workspace = "special", silent = true }))
hl.bind(mod .. " + Y", hl.dsp.window.move({ workspace = "special", silent = true }))
hl.bind(mod .. " + U", hl.dsp.workspace.toggle_special())

-- Named scratchpads
hl.bind("F12",                  hl.dsp.exec_cmd("~/.config/hypr/scripts/floating-term.sh"))
hl.bind(mod .. " + grave",      hl.dsp.workspace.toggle_special("kdbx"))
hl.bind(mod .. " + A",          hl.dsp.workspace.toggle_special("ekah"))
hl.bind(mod .. " + SHIFT + G",  hl.dsp.workspace.toggle_special("disks"))
hl.bind(mod .. " + SHIFT + A",  hl.dsp.workspace.toggle_special("autokey"))
hl.bind(mod .. " + G",          hl.dsp.workspace.toggle_special("sublime"))
hl.bind(mod .. " + Delete",     hl.dsp.workspace.toggle_special("sublime"))

-- Gaps toggle
hl.bind(mod .. " + F1", hl.dsp.exec_cmd("hyprctl keyword general:gaps_in 0 && hyprctl keyword general:gaps_out 0"))
hl.bind(mod .. " + F2", hl.dsp.exec_cmd("hyprctl keyword general:gaps_in 35 && hyprctl keyword general:gaps_out 10"))
hl.bind(mod .. " + F3", hl.dsp.exec_cmd("hyprctl keyword general:gaps_in 100 && hyprctl keyword general:gaps_out 10"))
hl.bind(mod .. " + F4", hl.dsp.exec_cmd("hyprctl keyword general:gaps_in 180 && hyprctl keyword general:gaps_out 10"))

-- Lockscreen / suspend
hl.bind(mod .. " + L",         hl.dsp.exec_cmd("hyprlock"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprlock && systemctl suspend"))

-- Logout / shutdown
hl.bind(mod .. " + X",         hl.dsp.exec_cmd("wlogout"))
hl.bind(mod .. " + SHIFT + X", hl.dsp.exec_cmd("systemctl poweroff"))

-- Reload config
hl.bind(mod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload && notify-send -t 2500 -i preferences-system 'Hyprland' 'config reloaded'"))
hl.bind(mod .. " + R",         hl.dsp.exec_cmd("hyprctl reload"))

-- Keyboard layout toggle
hl.bind(mod .. " + space", hl.dsp.exec_cmd("sh ~/scripts/runToggleKeyboardLayout.sh"))

-- Waybar toggle
hl.bind(mod .. " + P", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

-- Exit Hyprland
hl.bind(mod .. " + x", hl.dsp.exit())

-- Application launchers
-- Note: bash -c '...' needed for shell OR (||) to work in exec_cmd
hl.bind(mod .. " + " .. alt .. " + C",           hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:elecwhat || elecwhat'"))
hl.bind(mod .. " + " .. alt .. " + CTRL + C",    hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:Chromium || chromium'"))
hl.bind(mod .. " + " .. alt .. " + CTRL + L",    hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:ledger-live || ledger-live-desktop'"))
hl.bind(mod .. " + " .. alt .. " + CTRL + T",    hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:Telegram || Telegram'"))
hl.bind(mod .. " + " .. alt .. " + CTRL + M",    hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:mpv || mpv --player-operation-mode=pseudo-gui'"))
hl.bind(mod .. " + F10", hl.dsp.exec_cmd("sh ~/config/rdp/HZ-DC01"))
hl.bind(mod .. " + F11", hl.dsp.exec_cmd("sh ~/config/rdp/HZ-EX02.sh"))
hl.bind(mod .. " + F12", hl.dsp.exec_cmd("sh ~/config/rdp/HZ-APP02.sh"))
hl.bind(mod .. " + F5",  hl.dsp.exec_cmd("sh ~/scripts/runHDMI_ONLY.sh"))
hl.bind(mod .. " + F6",  hl.dsp.exec_cmd("sh ~/scripts/runHDMI_OFF.sh"))
hl.bind(mod .. " + F7",  hl.dsp.exec_cmd("sh ~/scripts/runHDMI_AND_NOTEBOOK.sh"))
hl.bind(mod .. " + F8",  hl.dsp.exec_cmd("sh ~/scripts/restic/restic_runBackupS3.sh"))
hl.bind(mod .. " + F9",  hl.dsp.exec_cmd("sh ~/scripts/restic/restic_ALL.sh"))
hl.bind(mod .. " + SHIFT + F12", hl.dsp.exec_cmd(term .. " --class sp-backup.home -e doas bash /home/eddie/scripts/btrfs/home/backup.home_auto.sh"))
hl.bind(mod .. " + SHIFT + F11", hl.dsp.exec_cmd(term .. " --class sp-backup.root -e doas bash /home/eddie/scripts/btrfs/root/backup.root.sh"))
hl.bind(mod .. " + SHIFT + B",   hl.dsp.exec_cmd("blueman-manager"))
hl.bind(mod .. " + SHIFT + C",   hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:Chromium || chromium'"))
hl.bind(mod .. " + SHIFT + F",   hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:floorp || floorp'"))
hl.bind(mod .. " + SHIFT + L",   hl.dsp.exec_cmd("kitty -e lf ~/"))
hl.bind(mod .. " + SHIFT + P",   hl.dsp.exec_cmd("kitty -e pacseek"))
hl.bind(mod .. " + SHIFT + U",   hl.dsp.exec_cmd("sh ~/scripts/runRemoveUSB.sh"))
hl.bind(mod .. " + SHIFT + V",   hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:vlc || vlc'"))
hl.bind(mod .. " + SHIFT + W",   hl.dsp.exec_cmd("networkmanager_dmenu"))
hl.bind(mod .. " + SHIFT + Z",   hl.dsp.exec_cmd("sh ~/scripts/runTogglePowerMode.sh"))
-- hl.bind(mod .. " + b",  hl.dsp.exec_cmd("hyprctl dispatch focuswindow class:brave-browser")

hl.bind(mod .. " + B", function()
    local ok = pcall(function()
        hl.dispatch(hl.dsp.window.focus({ window = "class:brave-browser" }))
    end)
    if not ok then
        hl.dispatch(hl.dsp.exec_cmd("brave"))
    end
end)

hl.bind(mod .. " + C",  hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:Chromium || chromium'"))
hl.bind(mod .. " + D",  hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:Doublecmd || ~/opt/_APP_IMAGES/doublecmd/doublecmd-gtk-latest-x86_64.AppImage'"))
hl.bind(mod .. " + E",  hl.dsp.exec_cmd("thunar"))
hl.bind(mod .. " + J",  hl.dsp.exec_cmd("copyq show"))
hl.bind(mod .. " + N",  hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:obsidian || obsidian'"))
hl.bind(mod .. " + O",  hl.dsp.exec_cmd("bash -c 'hyprctl dispatch focuswindow class:Thunderbird || thunderbird'"))
hl.bind(mod .. " + " .. alt .. " + CTRL + F", hl.dsp.exec_cmd("fsearch"))
hl.bind("CTRL + " .. alt .. " + M", hl.dsp.exec_cmd("pavucontrol"))
hl.bind("CTRL + SHIFT + Escape",    hl.dsp.exec_cmd("/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=resources net.nokyan.Resources"))

-- Rofi
hl.bind(mod .. " + W", hl.dsp.exec_cmd("rofi -combi-modi window -show combi -show-icons -theme glue_pro_blue"))
hl.bind(mod .. " + M", hl.dsp.exec_cmd("rofi -combi-modi window -show drun -show-icons -theme glue_pro_blue"))
hl.bind(mod .. " + SHIFT + M", hl.dsp.exec_cmd("sh ~/gitREPO/dotfiles_linux/i3/scripts/rofi.pkill.sh"))

-- Window info (xprop equivalent)
hl.bind(mod .. " + SHIFT + I", hl.dsp.exec_cmd("sh $HOME/gitREPO/dotfiles_linux/i3/scripts/xprop.sh"))

-- CPU performance profiles
hl.bind(mod .. " + SHIFT + F1", hl.dsp.exec_cmd("sudo cpupower frequency-set -u 800MHz && notify-send 'CPU' 'Powersave (800MHz)'"))
hl.bind(mod .. " + SHIFT + F2", hl.dsp.exec_cmd("sudo auto-cpufreq --force=reset && sudo cpupower frequency-set -u 800MHz && notify-send 'CPU' 'Auto'"))
hl.bind(mod .. " + SHIFT + F3", hl.dsp.exec_cmd("sudo cpupower frequency-set -u 2300MHz && notify-send 'CPU' 'Balanced (2300MHz)'"))
hl.bind(mod .. " + SHIFT + F4", hl.dsp.exec_cmd("sudo cpupower frequency-set -u 4600MHz && notify-send 'CPU' 'Performance (4600MHz)'"))

-- Screenshots
hl.bind("Print",               hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
hl.bind(mod .. " + Print",     hl.dsp.exec_cmd("bash -c 'grim -g \"$(slurp)\" - | tee ~/Pictures/Screenshots/screenshot_$(date +%Y%m%d_%H%M%S).png | wl-copy'"))
hl.bind(mod .. " + SHIFT + Print", hl.dsp.exec_cmd("bash -c 'grim - | tee ~/Pictures/Screenshots/screenshot_$(date +%Y%m%d_%H%M%S).png | wl-copy'"))

-- Audio
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +2%"),  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -2%"),  { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioPlay",        hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"),        { locked = true })
hl.bind("XF86AudioPrev",        hl.dsp.exec_cmd("playerctl previous"),    { locked = true })
hl.bind("XF86AudioStop",        hl.dsp.exec_cmd("playerctl stop"),        { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set +5%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })
