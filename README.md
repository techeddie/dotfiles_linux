# dotfiles_linux

> - My desktop dotfiles for Arch Linux (CachyOS)
> - Sway on Wayland as the main setup
> 	- plus older i3 and hyprland configs
> 	- terminals 
> 	- editors 
> 	- file managers and CLI tools. 
> 	- Some tools have a separate macOS variant.
> - These are personal configs, not a framework. There is no installer: pick the folders you want and link them into place.
> - **Debian servers:** 
> 	- the server setup (fish, nvim, tmux, lf, lazygit) lives in its own repos with an installer: [dotfiles_debian](https://github.com/techeddie/dotfiles_debian).

## Contents

**Window managers and desktop**

| Folder                                | Tool                                                                      | Note                                                                                                            |
| ------------------------------------- | ------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `sway/`                               | [sway](https://swaywm.org)                                                | **main setup: sway, swaylock, swaync, swayimg**                                                                 |
| `hyprland/`                           | [Hyprland](https://hyprland.org)                                          | hyprland, hyprlock, hypridle, hyprpaper, waybar, swaync, wlogout, xremap (systemd user service), helper scripts |
| `i3/`                                 | [i3](https://i3wm.org)                                                    | i3 with i3blocks and i3status variants                                                                          |
| `polybar/`                            | [polybar](https://github.com/polybar/polybar)                             | bar for i3                                                                                                      |
| `picom/`                              | [picom](https://github.com/yshui/picom)                                   | compositor for X11                                                                                              |
| `greetd/`                             | [greetd](https://sr.ht/~kennylevinsen/greetd/)                            | login manager with ReGreet used for Sway setup, see its README                                                  |
| `dunst/`                              | [dunst](https://dunst-project.org)                                        | notifications (X11)                                                                                             |
| `rofi/`, `wofi/`, `fuzzel/`           | launchers                                                                 | rofi for X11, wofi and fuzzel for Wayland                                                                       |
| `networkmanager-dmenu/`               | [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu) | network menu                                                                                                    |
| `sxhkd/`, `run-or-raise/`, `xmodmap/` | hotkeys                                                                   | X11 hotkey daemon, app focus shortcuts, key remaps                                                              |
| `autokey/`                            | [AutoKey](https://github.com/autokey/autokey)                             | text and key automation (X11)                                                                                   |

**Terminals**

| Folder | Tool | Note |
|---|---|---|
| `kitty/` | [kitty](https://sw.kovidgoyal.net/kitty/) | `linux/` and `mac/` variants |
| `ghostty/` | [Ghostty](https://ghostty.org) | `config.linux` and `config.mac` |
| `alacritty/` | [Alacritty](https://alacritty.org) | with color scheme collection |
| `wezterm/` | [WezTerm](https://wezfurlong.org/wezterm/) | `.wezterm.lua` |

**Shells**

| Folder | Tool | Note |
|---|---|---|
| `fish/` | [fish](https://fishshell.com) | `local/` for the desktop (with yazi `y` function), `debian/` for servers |
| `zsh/` | [zsh](https://www.zsh.org) | env, fzf config, fzf-git, key bindings for Linux and Mac |
| `fzf_themes/` | [tinted-fzf](https://github.com/tinted-theming/tinted-fzf) | fzf color themes |

**Editors**

| Folder | Tool | Note |
|---|---|---|
| `nvim/` | [Neovim](https://neovim.io) with [LazyVim](https://www.lazyvim.org) | own plugin specs in `lua/plugins/` |
| `geany/` | [Geany](https://www.geany.org) | color schemes |

**File managers**

| Folder | Tool | Note |
|---|---|---|
| `yazi/` | [yazi](https://yazi-rs.github.io) | main file manager, with plugins and flavors, see its README |
| `lf/` | [lf](https://github.com/gokcehan/lf) | with ueberzug image preview |
| `vifm/` | [vifm](https://vifm.info) | color schemes |
| `doublecmd/` | [Double Commander](https://doublecmd.sourceforge.io) | GUI two-pane file manager |

**CLI tools**

| Folder | Tool | Note |
|---|---|---|
| `tmux/` | [tmux](https://github.com/tmux/tmux) | `linux/` and `mac/` variants with theme file |
| `lazygit/` | [lazygit](https://github.com/jesseduffield/lazygit) | |
| `btop/` | [btop](https://github.com/aristocratos/btop) | |
| `bat/` | [bat](https://github.com/sharkdp/bat) | tokyonight theme |
| `glow/` | [glow](https://github.com/charmbracelet/glow) | markdown viewer |
| `yay/`, `pacseek/`, `shelly/` | Arch package tools | AUR helper, package search TUI, package manager settings |

## Usage

Clone the repo and symlink the folders you want. Most configs go to `~/.config/<name>`:

```bash
# Clone
git clone https://github.com/techeddie/dotfiles_linux.git ~/opt/git/dotfiles_linux
cd ~/opt/git/dotfiles_linux

# Link a config folder into ~/.config (example: yazi)
ln -sfn "$PWD/yazi" ~/.config/yazi
```

After linking:

```bash
# Rebuild bat's theme cache so the custom theme is found
bat cache --build

# Enable the xremap user service (Hyprland)
systemctl --user daemon-reload
systemctl --user enable --now xremap.service
```

## Plugins

Some plugin folders are git submodule references without a `.gitmodules` file, so they are empty after cloning. Install them with the tool's own plugin manager:

| Folder | Install with |
|---|---|
| `tmux/*/.tmux/plugins/` | clone [tpm](https://github.com/tmux-plugins/tpm), then `prefix I` inside tmux |
| `yazi/plugins/command-palette.yazi`, `fg.yazi`, `lazygit.yazi` | clone the plugin repos into `yazi/plugins/` |
| `rofi/setup.rofi` | not needed for using the themes |

Other yazi plugins are listed in `yazi/package.toml` and installed with `ya pkg install`. Neovim plugins are installed by LazyVim on first start.

## Credits

Parts of this repo are based on or include work from:

- [adi1090x/rofi](https://github.com/adi1090x/rofi) and [adi1090x/polybar-themes](https://github.com/adi1090x/polybar-themes)
- [eendroroy/alacritty-theme](https://github.com/eendroroy/alacritty-theme)
- [dexpota/kitty-themes](https://github.com/dexpota/kitty-themes)
- [tinted-theming/tinted-fzf](https://github.com/tinted-theming/tinted-fzf)
- [LazyVim starter](https://github.com/LazyVim/starter)
- yazi plugins and flavors by their respective authors (see `LICENSE` files in `yazi/plugins/` and `yazi/flavors/`)