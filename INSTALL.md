# Malifex Theme - Installation Guide

## Quick Install with Omarchy

```bash
omarchy-theme-install https://github.com/YOUR_USERNAME/malifex-theme
```

This will automatically install theme files for all detected applications.

## Neovim Configuration

After installing via Omarchy, Neovim needs to be configured to use the colorscheme.

### For Regular Neovim

Add to your `~/.config/nvim/init.lua`:

```lua
vim.cmd([[colorscheme malifex]])
```

### For LazyVim

Create `~/.config/nvim/lua/plugins/colorscheme.lua`:

```lua
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "malifex",
    },
  },
}
```

**Important:** Make sure the file returns a table `{ }`, never `nil`.

## Reloading Applications

After installation, you may need to restart some applications:

```bash
# Reload Waybar
killall waybar && waybar &

# Reload Hyprland config
hyprctl reload

# Reload Mako (notifications)
makoctl reload

# Reload wallpaper (if using hyprpaper)
killall hyprpaper && hyprpaper &
```

## Manual Installation by Application

### Alacritty

```bash
mkdir -p ~/.config/alacritty/themes
cp alacritty.toml ~/.config/alacritty/themes/malifex.toml
```

Add to your `~/.config/alacritty/alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/malifex.toml"]
```

### Ghostty

```bash
mkdir -p ~/.config/ghostty/themes
cp ghostty.conf ~/.config/ghostty/themes/malifex
```

Set in your `~/.config/ghostty/config`:

```
theme = malifex
```

### Kitty

```bash
mkdir -p ~/.config/kitty/themes
cp kitty.conf ~/.config/kitty/themes/malifex.conf
```

Add to your `~/.config/kitty/kitty.conf`:

```
include themes/malifex.conf
```

### Neovim (Manual)

```bash
mkdir -p ~/.config/nvim/colors
cp neovim.lua ~/.config/nvim/colors/malifex.lua
```

Add to your `init.lua`:

```lua
vim.cmd([[colorscheme malifex]])
```

### Hyprland

Add to your `~/.config/hypr/hyprland.conf`:

```
source = ~/path/to/malifex-theme/hyprland.conf
```

### Hyprlock

Add to your `~/.config/hypr/hyprlock.conf`:

```
source = ~/path/to/malifex-theme/hyprlock.conf
```

### Waybar

```bash
mkdir -p ~/.config/waybar
cp waybar.css ~/.config/waybar/malifex.css
```

Import in your `~/.config/waybar/style.css`:

```css
@import "malifex.css";
```

### btop

```bash
mkdir -p ~/.config/btop/themes
cp btop.theme ~/.config/btop/themes/malifex.theme
```

Select "malifex" in btop settings (press `ESC` → Options → Color theme).

### Mako

```bash
cat mako.ini >> ~/.config/mako/config
makoctl reload
```

### Wofi

```bash
mkdir -p ~/.config/wofi
cp wofi.css ~/.config/wofi/style.css
```

### Walker

```bash
mkdir -p ~/.config/walker
cp walker.css ~/.config/walker/style.css
```

### SwayOSD

```bash
mkdir -p ~/.config/swayosd
cp swayosd.css ~/.config/swayosd/style.css
```

### Wallpaper (Hyprpaper)

```bash
cp hyprpaper.conf ~/.config/hypr/hyprpaper.conf
```

Or add to your `~/.config/hypr/hyprland.conf`:

```conf
exec-once = hyprpaper
```

And configure `~/.config/hypr/hyprpaper.conf`:

```conf
preload = ~/path/to/malifex-theme/backgrounds/malifex-background-001.png
wallpaper = ,~/path/to/malifex-theme/backgrounds/malifex-background-001.png
```

## Troubleshooting

### Neovim: "invalid spec module" error

This error means a plugin configuration file is returning `nil` instead of a table.

**Fix:** Check your `~/.config/nvim/lua/plugins/` directory. Every `.lua` file must return a table:

```lua
return {
  -- your plugin config here
}
```

Never return `nil` or nothing.

### Waybar not appearing

```bash
killall waybar && waybar &
```

If still broken, check your Waybar config file exists:

```bash
cat ~/.config/waybar/config
```

### Colors not showing correctly

Make sure your terminal supports true color. Add to your shell config:

```bash
export COLORTERM=truecolor
```

## Getting Help

For issues or questions, open an issue on the GitHub repository.
