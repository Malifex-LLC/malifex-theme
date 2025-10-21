# Malifex Theme Installation Guide

## Quick Install with Omarchy

```bash
omarchy-theme-install https://github.com/YOUR_USERNAME/malifex-theme
```

### Post-Installation Steps

After Omarchy installs the theme, some applications need additional configuration:

#### 1. Neovim Theme Activation

Omarchy copies the theme file, but you need to tell Neovim to use it.

Add this to your `~/.config/nvim/init.lua`:

```lua
vim.cmd([[colorscheme malifex]])
```

Or if using LazyVim, add to your plugins:

```lua
{
  name = "malifex",
  lazy = false,
  priority = 1000,
  config = function()
    -- Copy neovim.lua to colors directory first
    vim.cmd([[colorscheme malifex]])
  end,
}
```

#### 2. Waybar (if status bar disappears)

The waybar.css theme only applies colors and shouldn't affect your layout. If your Waybar disappears or looks wrong:

1. Make sure you have a proper `~/.config/waybar/config` file
2. The theme CSS should be imported or used alongside your existing config
3. Check that Waybar is running: `killall waybar && waybar &`

If issues persist, temporarily disable the Malifex waybar theme:

```bash
# Backup your waybar style
mv ~/.config/waybar/style.css ~/.config/waybar/style.css.backup
```

#### 3. Wallpaper Setup

The theme includes `malifex-background-001.png`. Omarchy should apply it automatically, but if not:

**Using hyprpaper:**

Add to your `~/.config/hypr/hyprland.conf`:

```conf
exec-once = hyprpaper
```

And create/update `~/.config/hypr/hyprpaper.conf`:

```conf
preload = ~/path/to/malifex-theme/backgrounds/malifex-background-001.png
wallpaper = ,~/path/to/malifex-theme/backgrounds/malifex-background-001.png
splash = false
```

**Using swww:**

```bash
# Start swww daemon
swww init

# Set wallpaper
swww img ~/path/to/malifex-theme/backgrounds/malifex-background-001.png --transition-type fade
```

Add to your `~/.config/hypr/hyprland.conf`:

```conf
exec-once = swww init
exec-once = swww img ~/path/to/malifex-theme/backgrounds/malifex-background-001.png
```

#### 4. Reload Applications

After theme installation, reload running applications:

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

## Troubleshooting

### Waybar Status Bar Missing/Broken

**Symptoms:** After installing the theme, Waybar doesn't appear, or the layout is broken.

**Cause:** The theme now only applies colors, not layouts. If Waybar still has issues, you may need to restart it.

**Solutions:**

1. **Restart Waybar (most common fix):**
   ```bash
   killall waybar && waybar &
   ```

2. **Check if Waybar is running:**
   ```bash
   ps aux | grep waybar
   ```

3. **Check for config errors:**
   ```bash
   waybar -l debug
   ```

4. **Verify you have a valid Waybar config:**
   Make sure `~/.config/waybar/config` exists and is properly formatted.

5. **If issues persist, temporarily disable theme:**
   ```bash
   mv ~/.config/waybar/style.css ~/.config/waybar/style.css.backup
   killall waybar && waybar &
   ```

### Neovim Theme Not Applied or Requires Update

**Symptoms:** 
- Neovim still uses default colors or previous theme
- Neovim asks for "update" every time you switch to malifex theme
- Theme doesn't load automatically
- Error: "invalid spec module: plugins.theme expected a table of specs but a nil"

**Solutions:**

1. **Proper installation after Omarchy:**
   
   Copy the theme to Neovim's colors directory:
   ```bash
   mkdir -p ~/.config/nvim/colors
   cp neovim.lua ~/.config/nvim/colors/malifex.lua
   ```

2. **For LazyVim users (Fix "invalid spec module" error):**
   
   Create or edit `~/.config/nvim/lua/plugins/theme.lua`:
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
   
   **Important:** The file MUST return a table, even if empty. Never return `nil`.

3. **For regular Neovim (non-LazyVim):**
   
   Add to `~/.config/nvim/init.lua`:
   ```lua
   vim.cmd([[colorscheme malifex]])
   ```

4. **Test immediately in Neovim:**
   ```vim
   :colorscheme malifex
   ```
   
   It should apply instantly without asking for updates.

5. **Restart Neovim:**
   ```bash
   nvim
   ```
   
   The theme should now load automatically without requiring updates.

### Error: "invalid spec module: plugins.theme expected a table"

**Cause:** Your `~/.config/nvim/lua/plugins/theme.lua` file is returning `nil` instead of a table.

**Fix:** Edit the file to return a proper table. See example above or use the included `lazyvim-plugin-example.lua` as a template.

### Colors Don't Match Screenshots

Make sure your terminal supports true color:

Add to your shell config (`~/.zshrc` or `~/.bashrc`):

```bash
export TERM=xterm-256color
```

Or for better true color support:

```bash
export COLORTERM=truecolor
```

## Manual Installation (Without Omarchy)

See the main [README.md](README.md) for detailed manual installation instructions for each application.

## Getting Help

If you encounter issues:

1. Check that the application is installed and working with default config
2. Review the application's logs for errors
3. Try the theme with a minimal config first
4. Open an issue on GitHub with details about your setup

