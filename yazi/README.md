
<div align="center">
  <sup>Special thanks to:</sup><br>

| <a href="https://go.warp.dev/yazi" target="_blank"><img alt="Warp sponsorship" width=350 src="https://github.com/warpdotdev/brand-assets/blob/main/Github/Sponsor/Warp-Github-LG-02.png"><br><b>Warp, built for coding with multiple AI agents</b><br><sup>Available for macOS, Linux and Windows</sup></a> |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

</div>

## Yazi - ⚡️ Blazing Fast Terminal File Manager

Yazi (means "duck") is a terminal file manager written in Rust, based on non-blocking async I/O. It aims to provide an efficient, user-friendly, and customizable file management experience.

💡 A new article explaining its internal workings: [Why is Yazi Fast?](https://yazi-rs.github.io/blog/why-is-yazi-fast)

- 🚀 **Full Asynchronous Support**: All I/O operations are asynchronous, CPU tasks are spread across multiple threads, making the most of available resources.
- 💪 **Powerful Async Task Scheduling and Management**: Provides real-time progress updates, task cancellation, and internal task priority assignment.
- 🖼️ **Built-in Support for Multiple Image Protocols**: Also integrated with Überzug++ and Chafa, covering almost all terminals.
- 🌟 **Built-in Code Highlighting and Image Decoding**: Combined with the pre-loading mechanism, greatly accelerates image and normal file loading.
- 🔌 **Concurrent Plugin System**: UI plugins (rewriting most of the UI), functional plugins, custom previewer/preloader/spotter/fetcher; Just some pieces of Lua.
- ☁️ **Virtual Filesystem**: Remote file management, custom VFS provider, custom search engines.
- 📡 **Data Distribution Service**: Built on a client-server architecture (no additional server process required), integrated with a Lua-based publish-subscribe model, achieving cross-instance communication and state persistence.
- 📦 **Package Manager**: Install plugins and themes with one command, keeping them up-to-date, or pin them to a specific version.
- 🧰 Integration with ripgrep, fd, fzf, zoxide
- 💫 Vim-like input/pick/confirm/which/notify component, auto-completion for cd paths
- 🏷️ Multi-Tab Support, Cross-directory selection, Scrollable Preview (for videos, PDFs, archives, code, directories, etc.)
- 🔄 Bulk Rename/Create, Archive Extraction, Visual Mode, File Chooser, [Git Integration](https://github.com/yazi-rs/plugins/tree/main/git.yazi), [Mount Manager](https://github.com/yazi-rs/plugins/tree/main/mount.yazi)
- 🎨 Theme System, Mouse Support, [Drag and Drop](https://yazi-rs.github.io/docs/dnd), Trash Bin, Custom Layouts, CSI u, OSC 52, CSI 2031
- ... and more!

https://github.com/sxyazi/yazi/assets/17523360/92ff23fa-0cd5-4f04-b387-894c12265cc7

## Project status

Public beta, can be used as a daily driver.

Yazi is currently in heavy development, expect breaking changes.

## Documentation

- Usage: https://yazi-rs.github.io/docs/installation
- Features: https://yazi-rs.github.io/features

## Discussion

- Discord Server (English mainly): https://discord.gg/qfADduSdJu
- Telegram Group (Chinese mainly): https://t.me/yazi_rs

## Image Preview

| Platform                                                                     | Protocol                               | Support                                |
| ---------------------------------------------------------------------------- | -------------------------------------- | -------------------------------------- |
| [kitty](https://github.com/kovidgoyal/kitty) (>= 0.28.0)                     | [Kitty unicode placeholders][kgp]      | ✅ Built-in                            |
| [iTerm2](https://iterm2.com)                                                 | [Inline images protocol][iip]          | ✅ Built-in                            |
| [WezTerm](https://github.com/wez/wezterm)                                    | [Inline images protocol][iip]          | ✅ Built-in                            |
| [Konsole](https://invent.kde.org/utilities/konsole)                          | [Kitty old protocol][kgp-old]          | ✅ Built-in                            |
| [foot](https://codeberg.org/dnkl/foot)                                       | [Sixel graphics format][sixel]         | ✅ Built-in                            |
| [Ghostty](https://github.com/ghostty-org/ghostty)                            | [Kitty unicode placeholders][kgp]      | ✅ Built-in                            |
| [Windows Terminal](https://github.com/microsoft/terminal) (>= v1.22.10352.0) | [Sixel graphics format][sixel]         | ✅ Built-in                            |
| [st with Sixel patch](https://github.com/bakkeby/st-flexipatch)              | [Sixel graphics format][sixel]         | ✅ Built-in                            |
| [Warp](https://www.warp.dev) (macOS/Linux only)                              | [Inline images protocol][iip]          | ✅ Built-in                            |
| [Tabby](https://github.com/Eugeny/tabby)                                     | [Inline images protocol][iip]          | ✅ Built-in                            |
| [VSCode](https://github.com/microsoft/vscode)                                | [Inline images protocol][iip]          | ✅ Built-in                            |
| [Rio](https://github.com/raphamorim/rio) (>= 0.3.9)                          | [Kitty unicode placeholders][kgp]      | ✅ Built-in                            |
| [Black Box](https://gitlab.gnome.org/raggesilver/blackbox)                   | [Sixel graphics format][sixel]         | ✅ Built-in                            |
| [Bobcat](https://github.com/ismail-yilmaz/Bobcat)                            | [Inline images protocol][iip]          | ✅ Built-in                            |
| X11 / Wayland                                                                | Window system protocol                 | ☑️ [Überzug++][ueberzug] required      |
| Fallback                                                                     | [ASCII art (Unicode block)][ascii-art] | ☑️ [Chafa][chafa] required (>= 1.16.0) |

See https://yazi-rs.github.io/docs/image-preview for details.



---
# Flavors

The "flavor" is a pre-made Yazi theme, introduced in Yazi v0.2.4, allowing users to update and expand their color schemes more conveniently.

See <https://yazi-rs.github.io/docs/flavors/overview> for details.

> [!IMPORTANT]
> Please check if a flavor is compatible with your version of Yazi before using it, see [Why is my flavor/theme not working?](https://yazi-rs.github.io/docs/flavors/overview#why-not-working) for details.

> [!TIP]
> If you've created a flavor for Yazi, please raise a PR to add your repo to the `README.md`.

## [dracula.yazi](./dracula.yazi)

<img src="./dracula.yazi/preview.png" width="600" />

## [catppuccin-mocha.yazi](./catppuccin-mocha.yazi)

<img src="./catppuccin-mocha.yazi/preview.png" width="600" />

## [catppuccin-latte.yazi](./catppuccin-latte.yazi)

<img src="./catppuccin-latte.yazi/preview.png" width="600" />

## [catppuccin-frappe.yazi](./catppuccin-frappe.yazi)

<img src="./catppuccin-frappe.yazi/preview.png" width="600" />

## [catppuccin-macchiato.yazi](./catppuccin-macchiato.yazi)

<img src="./catppuccin-macchiato.yazi/preview.png" width="600" />

## [tokyo-night.yazi](https://github.com/BennyOe/tokyo-night.yazi)

<img src="https://raw.githubusercontent.com/BennyOe/tokyo-night.yazi/main/preview.png" width="600" />

## [kanagawa.yazi](https://github.com/dangooddd/kanagawa.yazi)

<img src="https://raw.githubusercontent.com/dangooddd/kanagawa.yazi/main/preview.png" width="600" />

## [kanagawa-dragon.yazi](https://github.com/marcosvnmelo/kanagawa-dragon.yazi)

<img src="https://raw.githubusercontent.com/marcosvnmelo/kanagawa-dragon.yazi/main/preview.png" width="600" />

## [kanagawa-lotus.yazi](https://github.com/muratoffalex/kanagawa-lotus.yazi)

<img src="https://raw.githubusercontent.com/muratoffalex/kanagawa-lotus.yazi/main/preview.png" width="600" />

## [gruvbox-dark.yazi](https://github.com/bennyyip/gruvbox-dark.yazi)

<img src="https://raw.githubusercontent.com/bennyyip/i/refs/heads/main/yazi-gruvbox-dark.png" width="600" />

##[gruvbox-light.yazi](https://github.com/Sh00Fly/gruvbox-light.yazi)

<img src="https://raw.githubusercontent.com/Sh00Fly/gruvbox-light.yazi/main/preview.png" width="600" />

## [gruvbox-material.yazi](https://github.com/matt-dong-123/gruvbox-material.yazi)

<img src="https://raw.githubusercontent.com/matt-dong-123/gruvbox-material.yazi/main/preview.png" width="600" />

## [ayu-dark.yazi](https://github.com/kmlupreti/ayu-dark.yazi)

<img src="https://raw.githubusercontent.com/kmlupreti/ayu-dark.yazi/main/preview.png" width="600" />

## [everforest-medium.yazi](https://github.com/Chromium-3-Oxide/everforest-medium.yazi)

<img src="https://raw.githubusercontent.com/Chromium-3-Oxide/everforest-medium.yazi/main/preview.png" width="600" />

## [ashen.yazi](https://github.com/ficcdaf/ashen/tree/main/ashen.yazi)

<img src="https://raw.githubusercontent.com/ashen-org/ashen/refs/heads/main/ashen.yazi/preview.png" width="600" />

## [flexoki-dark.yazi](https://github.com/gosxrgxx/flexoki-dark.yazi)

<img src="https://raw.githubusercontent.com/gosxrgxx/flexoki-dark.yazi/main/preview.png" width="600" />

## [flexoki-light.yazi](https://github.com/gosxrgxx/flexoki-light.yazi)

<img src="https://raw.githubusercontent.com/gosxrgxx/flexoki-light.yazi/main/preview.png" width="600" />

## [rose-pine.yazi](https://github.com/Mintass/rose-pine.yazi)

<img src="https://raw.githubusercontent.com/Mintass/rose-pine.yazi/main/preview.png" width="600" />

## [rose-pine-moon.yazi](https://github.com/Mintass/rose-pine-moon.yazi)

<img src="https://raw.githubusercontent.com/Mintass/rose-pine-moon.yazi/main/preview.png" width="600" />

## [rose-pine-dawn.yazi](https://github.com/Mintass/rose-pine-dawn.yazi)

<img src="https://raw.githubusercontent.com/Mintass/rose-pine-dawn.yazi/main/preview.png" width="600" />

## [neon.yazi](https://github.com/tomer-ben-david/neon.yazi)

<img src="https://raw.githubusercontent.com/tomer-ben-david/neon.yazi/main/preview.png" width="600" />

## [nord.yazi](https://github.com/AdithyanA2005/nord.yazi)

<img src="https://raw.githubusercontent.com/AdithyanA2005/nord.yazi/refs/heads/main/preview.png" width="600" />

## [synthwave84.yazi](https://github.com/CFY98/synthwave84.yazi)

<img src="https://raw.githubusercontent.com/CFY98/synthwave84.yazi/refs/heads/main/preview.png" width="600" />

## [bluloco-dark.yazi](https://github.com/hankertrix/bluloco-yazi/tree/main/bluloco-dark.yazi)

<img src="https://raw.githubusercontent.com/hankertrix/bluloco-yazi/refs/heads/main/bluloco-dark.yazi/preview.png" width="600" />

## [bluloco-light.yazi](https://github.com/hankertrix/bluloco-yazi/tree/main/bluloco-light.yazi)

<img src="https://raw.githubusercontent.com/hankertrix/bluloco-yazi/refs/heads/main/bluloco-light.yazi/preview.png" width="600" />

## [monokai.yazi](https://github.com/Malick-Tammal/monokai.yazi)

<img src="https://raw.githubusercontent.com/Malick-Tammal/monokai.yazi/main/preview.png" width="600" />

## [eldritch.yazi](https://github.com/6ruby1/eldritch.yazi)

<img src="https://raw.githubusercontent.com/6ruby1/eldritch.yazi/main/preview.png" width="600" />

## [modus.yazi](https://github.com/azzamsa/modus.yazi)

<img src="https://github.com/user-attachments/assets/51b9a15b-ad9a-4f7c-80b5-44b04864ba21" width="600" />

## [obsidian-glow.yazi](https://github.com/ZimCodes/yazi-flavors/tree/main/obsidian-glow.yazi) / [obsidian-soft-glow.yazi](https://github.com/ZimCodes/yazi-flavors/tree/main/obsidian-soft-glow.yazi)

<img src="https://raw.githubusercontent.com/ZimCodes/yazi-flavors/refs/heads/main/obsidian-glow.yazi/preview.png" width="600" />

## [lain.yazi](https://github.com/identityapproved/lain.yazi)

<img src="https://raw.githubusercontent.com/identityapproved/lain.yazi/main/preview.png" width="600" />

## [base16.yazi](https://github.com/matt-dong-123/base16.yazi)

This is a flavor which uses terminal colors, so it works with any terminal theme.

## [claude-inspired.yazi](https://github.com/rapidrabbit76/claude-inspired.yazi)

<img src="https://raw.githubusercontent.com/rapidrabbit76/claude-inspired.yazi/main/preview.png" width="600" />

## [thinkpad-red-oled.yazi](https://github.com/AdmiralBarbarossa/thinkpad-red-oled.yazi)

<img src="https://raw.githubusercontent.com/AdmiralBarbarossa/thinkpad-red-oled.yazi/main/preview.png" width="600" />

## [kanagawa-paper.yazi](https://github.com/melindachang/kanagawa-paper.yazi)

<img src="https://raw.githubusercontent.com/melindachang/kanagawa-paper.yazi/main/preview.png" width="600">

## [Aurora Dawn](https://github.com/kshawkat/aurora-dawn.yazi)

<img src="https://raw.githubusercontent.com/kshawkat/aurora-dawn.yazi/refs/heads/main/preview.png" width="600" />

## [Aurora Storm](https://github.com/kshawkat/aurora-storm.yazi)

<img src="https://raw.githubusercontent.com/kshawkat/aurora-storm.yazi/refs/heads/main/preview.png" width="600" />

## [Dimidium](https://github.com/Raideeen/dimidium.yazi)

<img src="https://raw.githubusercontent.com/Raideeen/dimidium.yazi/refs/heads/main/preview.png" width="600" />

## Themes

We [recommend using the new flavor format](https://yazi-rs.github.io/docs/flavors/overview/#why-flavor), but if you're still interested in themes, check out the [Themes](./themes.md) page.
