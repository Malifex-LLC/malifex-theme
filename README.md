# Malifex Theme

A dark, earthy color scheme with warm tones and subtle contrast, designed for comfortable long-term use across your entire system.

> 🚀 **Quick Install:** `omarchy-theme-install https://github.com/YOUR_USERNAME/malifex-theme`

Compatible with Omarchy theme manager for one-command installation across all applications, or install themes individually for standalone use.

## Color Palette

| Color      | Hex       | Usage                          |
|------------|-----------|--------------------------------|
| Background | `#000000` | Pure black                     |
| Foreground | `#baa997` | Warm beige/tan                 |
| Black      | `#000000` | Terminal black                 |
| Red        | `#ff6b6b` | Errors, highlights, coral red  |
| Green      | `#8b2635` | Strings, success, burgundy     |
| Yellow     | `#baa997` | Types, warnings, beige         |
| Blue       | `#537a5a` | Functions, info, sage green    |
| Magenta    | `#f2e5bc` | Constants, cream               |
| Cyan       | `#ff6b6b` | Special, coral red             |
| White      | `#f2e5bc` | Bright text, cream             |

## Installation

### Using Omarchy Theme Manager

The easiest way to install this theme across all supported applications is using Omarchy:

```bash
omarchy-theme-install https://github.com/YOUR_USERNAME/malifex-theme
```

This will automatically install the theme for all detected applications on your system.

**⚠️ Post-Install:** Some applications need extra configuration after Omarchy install. See [INSTALL.md](INSTALL.md) for details, especially:
- Neovim: Add `vim.cmd([[colorscheme malifex]])` to your init.lua
- Waybar: May need to restart with `killall waybar && waybar &`

🎨 **Wallpaper Included:** The theme includes `malifex-background-001.png` - a custom wallpaper designed to complement the color scheme. Omarchy will automatically apply it, or use the included `hyprpaper.conf` configuration.

### Manual Installation

If you prefer manual installation or don't use Omarchy, follow the instructions below for each application.

## Supported Applications

### Terminal Emulators

#### Alacritty

Copy `alacritty.toml` to your Alacritty config directory:

```bash
mkdir -p ~/.config/alacritty/themes
cp alacritty.toml ~/.config/alacritty/themes/malifex.toml
```

Add to your `~/.config/alacritty/alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/malifex.toml"]
```

#### Ghostty

Copy the theme file:

```bash
mkdir -p ~/.config/ghostty/themes
cp ghostty.conf ~/.config/ghostty/themes/malifex
```

Set in your `~/.config/ghostty/config`:

```
theme = malifex
```

#### Kitty

Copy the theme file:

```bash
mkdir -p ~/.config/kitty/themes
cp kitty.conf ~/.config/kitty/themes/malifex.conf
```

Add to your `~/.config/kitty/kitty.conf`:

```
include themes/malifex.conf
```

### Neovim

#### After Omarchy Install

If you installed via Omarchy, you need to activate the theme in Neovim:

1. **Option A - Set in your config** (recommended):

Add to your `~/.config/nvim/init.lua`:

```lua
vim.cmd([[colorscheme malifex]])
```

2. **Option B - Manual activation**:

```bash
mkdir -p ~/.config/nvim/colors
cp neovim.lua ~/.config/nvim/colors/malifex.lua
```

Then add to your `init.lua`:

```lua
vim.cmd([[colorscheme malifex]])
```

#### Using Lazy.nvim (Standalone)

Add to your LazyVim plugins:

```lua
{
  dir = "~/path/to/malifex-theme/malifex.nvim",
  name = "malifex",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme malifex]])
  end,
}
```

#### Manual Installation (Standalone)

```bash
# Copy to Neovim colors directory
mkdir -p ~/.config/nvim/colors
cp neovim.lua ~/.config/nvim/colors/malifex.lua

# Or use the full package
cp -r malifex.nvim ~/.config/nvim/pack/themes/start/
```

Then set in your `init.lua`:

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

Copy the stylesheet:

```bash
mkdir -p ~/.config/waybar
cp waybar.css ~/.config/waybar/malifex.css
```

Import in your `~/.config/waybar/style.css`:

```css
@import "malifex.css";
```

Or use it directly:

```bash
cp waybar.css ~/.config/waybar/style.css
```

### btop

Copy the theme:

```bash
mkdir -p ~/.config/btop/themes
cp btop.theme ~/.config/btop/themes/malifex.theme
```

Select "malifex" in btop settings (press `ESC` → Options → Color theme).

### Mako (Notifications)

Append to your `~/.config/mako/config`:

```bash
cat mako.ini >> ~/.config/mako/config
```

Then reload mako:

```bash
makoctl reload
```

### Wofi (App Launcher)

Copy the stylesheet:

```bash
mkdir -p ~/.config/wofi
cp wofi.css ~/.config/wofi/style.css
```

### Walker (App Launcher)

Copy the stylesheet:

```bash
mkdir -p ~/.config/walker
cp walker.css ~/.config/walker/style.css
```

### SwayOSD

Copy the stylesheet:

```bash
mkdir -p ~/.config/swayosd
cp swayosd.css ~/.config/swayosd/style.css
```

## Philosophy

The Malifex theme is designed with these principles:

- **Low contrast background**: Pure black provides deep darkness without eye strain
- **Warm foreground**: Beige/tan offers comfortable readability with earthy warmth  
- **Earthy accents**: Natural, muted tones (burgundy, sage, cream)
- **Strategic brightness**: Coral red provides necessary pop for errors and highlights
- **Consistency**: Colors remain consistent across all applications

## Wallpaper

The theme includes a custom-designed wallpaper (`malifex-background-001.png`) that perfectly complements the color scheme.

### Automatic Installation

When you install via Omarchy, the wallpaper is automatically applied.

### Manual Installation

**Using hyprpaper:**

Copy the config or add to your `~/.config/hypr/hyprpaper.conf`:

```bash
cp hyprpaper.conf ~/.config/hypr/hyprpaper.conf
```

Or manually add:

```conf
preload = ~/path/to/malifex-theme/backgrounds/malifex-background-001.png
wallpaper = ,~/path/to/malifex-theme/backgrounds/malifex-background-001.png
```

**Using swww:**

```bash
swww img ~/path/to/malifex-theme/backgrounds/malifex-background-001.png --transition-type fade
```

See [backgrounds/README.md](backgrounds/README.md) for more wallpaper options and customization.

## Screenshots

> Add your screenshots here after installation!

## Troubleshooting

Having issues with the theme? Check [INSTALL.md](INSTALL.md) for:
- Waybar status bar disappearing
- Neovim theme not loading automatically
- Color display issues
- Application-specific configuration problems

## Tags & Topics

When uploading to GitHub, add these topics for discoverability:
- `omarchy`
- `omarchy-theme`
- `color-scheme`
- `theme`
- `alacritty-theme`
- `neovim-colorscheme`
- `hyprland-theme`

## Contributing

Want to add support for another application? Check out `colors.md` for the complete palette and submit a PR!

## License

MIT License - Feel free to use and modify as you wish.
