# Hyprland Arch Setup

My personal Arch Linux + Hyprland dotfiles. Wallpaper-driven, dynamically themed rice — pick a new wallpaper and the color scheme propagates automatically across the terminal, status bar, launcher, editor, and more.

## 🎨 Dynamic Theming

The core of this setup is **[matugen](https://github.com/InioX/matugen)**, which generates a Material You color palette from the current wallpaper and pushes it out to every themed app below. **[Matuwall](https://github.com/naurissteins/Matuwall)** provides the visual wallpaper picker that triggers matugen on selection.

| Folder | What it's for |
|---|---|
| `matugen/` | Core theming engine config and Jinja-style templates. Reads a wallpaper and generates matching colors for every app listed below. |
| `matuwall/` | GUI wallpaper picker. Clicking a thumbnail sets the wallpaper (via `awww`) and triggers matugen to regenerate all themed colors. |

## 🪟 Window Manager & Core

| Folder | What it's for |
|---|---|
| `hypr/` | [Hyprland](https://hyprland.org/) — the Wayland compositor itself. Includes `hyprland.lua` (main config, written in Lua via a custom binding), `hypridle.conf` (idle/lock timeouts), `hyprlock.conf` (lock screen), and `scripts/` (shell scripts for screenshots, volume, power menu, wallpaper picking, etc). |
| `wlogout/` | Logout/power menu (lock, logout, reboot, shutdown, suspend, hibernate) triggered from the waybar power button. |
| `hyprsnipper/` | Screenshot tool used for region/window/display captures. |

## 📊 Status Bar & Launcher

| Folder | What it's for |
|---|---|
| `waybar/` | The top status bar. `Modules`/`ModulesCustom`/`ModulesGroups`/`ModulesWorkspaces` define individual widgets (clock, workspaces, network, battery, etc); `configs/` holds full bar layouts you can swap between; `style/` holds the CSS themes for each layout. |
| `rofi/` | Application launcher / window switcher. `config.rasi` is the main layout, `colors.rasi` is matugen-generated and auto-updates with the wallpaper. |

## 🔔 Notifications & System Tray

| Folder | What it's for |
|---|---|
| `swaync/` | [SwayNotificationCenter](https://github.com/ErikReider/SwayNotificationCenter) — notification daemon and notification center panel, themed to match the wallpaper. |
| `dunst/` | Alternate/backup notification daemon with custom icon assets. |

## 💻 Terminal & Shell

| Folder | What it's for |
|---|---|
| `kitty/` | Terminal emulator. `kitty.conf` sets font/appearance; `colors.conf` is matugen-generated. |
| `ohmyposh/` | [Oh My Posh](https://ohmyposh.dev/) shell prompt theme. |
| `fastfetch/` | System info fetch tool shown on new terminal sessions, with custom ASCII/image assets. |

## ✏️ Editor

| Folder | What it's for |
|---|---|
| `nvim/` | Neovim, configured via [lazy.nvim](https://github.com/folke/lazy.nvim). `init.lua` bootstraps everything; `lua/plugins/` holds one file per plugin (LSP, completion, git integration, file tree, etc). Colors are synced live to the current wallpaper via `lua/plugins/matugen.lua`. |

## 🖥️ File Manager & GTK

| Folder | What it's for |
|---|---|
| `gtk-3.0/` `gtk-4.0/` | GTK application theming (Nemo, GTK dialogs, etc). `settings.ini` sets font/icon/cursor theme; `colors.css` is matugen-generated. |
| `nwg-look/` | GUI tool used to configure the above GTK settings without hand-editing files. |
| `qt6ct/` `xsettingsd/` | Theming/settings sync for Qt applications, so GTK and Qt apps look visually consistent. |

## 🪟 Windows App Compatibility

| Folder | What it's for |
|---|---|
| `winapps/` | Config for [WinApps](https://github.com/winapps-org/winapps) — runs Windows applications (Microsoft Office, etc) natively on Linux via a libvirt VM and RDP streaming. **`winapps.conf.example` is a sanitized template** — copy it to `winapps.conf` and fill in your own VM credentials; the real file is gitignored. |

## 🎵 Media & Misc

| Folder | What it's for |
|---|---|
| `cava/` | Terminal audio visualizer, colors synced to wallpaper. |
| `spicetify/` | Spotify client theming. |
| `btop/` | System resource monitor (CPU/RAM/disk/network), with both a static Catppuccin theme and a matugen-generated dynamic theme. |
| `onlyoffice/` `dolphinrc/` `kiorc/` `qt6ct.conf` | Misc application-specific settings picked up along the way. |

## ⚙️ Setup Notes

- This rice depends heavily on the following being installed: `hyprland`, `waybar`, `rofi`, `kitty`, `nemo`, `matugen`, `matuwall`, `swaync`, `wlogout`, `awww` (wallpaper daemon).
- Fonts used throughout: **JetBrainsMono Nerd Font Propo**.
- `matugen/config.toml` defines every themed app as a template + output path + reload hook — that's the file to look at to understand how the whole dynamic theming pipeline connects together.
- Machine-specific and sensitive files (browser profiles, VM credentials, cached telemetry, etc) are intentionally excluded via `.gitignore`.

## 📸 Screenshots

*(add a few screenshots here of your desktop, waybar, rofi, and nvim to really sell this on LinkedIn)*
