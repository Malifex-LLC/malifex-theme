# Changelog

All notable changes to the Malifex Theme will be documented in this file.

## [Latest] - 2025-10-21

### Fixed

#### Waybar Status Bar Issues
- **Issue:** Waybar status bar disappeared or had layout issues after theme installation
- **Fix:** Removed all layout properties (padding, margins, font-size, border-radius) from `waybar.css`
- **Result:** Theme now only applies colors, preserving your existing Waybar configuration
- **Action:** Restart Waybar: `killall waybar && waybar &`

#### Launcher Menus Broken (Wofi/Walker)
- **Issue:** SUPER+SPACE and SUPER+ALT+SPACE menus showed "sample text" and had broken layouts
- **Fix:** Completely rewrote `wofi.css` and `walker.css` to only apply colors
- **Result:** Input fields and layouts now work correctly with your existing configuration
- **Removed:**
  - Global `* { font-family, font-size }` selectors
  - All padding, margin, border-radius properties on inputs
  - Layout-specific properties that conflicted with launcher configs

#### Neovim Theme Requiring Update
- **Issue:** Neovim asked for "update" every time you switched to malifex theme
- **Fix:** 
  - Cleaned up `neovim.lua` structure
  - Improved color table formatting
  - Added proper comments for highlight clearing
  - Made both root `neovim.lua` and `malifex.nvim/colors/malifex.lua` consistent
- **Result:** Theme loads instantly without requiring updates
- **Action:** Copy to colors directory: `cp neovim.lua ~/.config/nvim/colors/malifex.lua`

### Theme Philosophy

All theme files now follow this principle:
- **Colors only** - No layout modifications
- **Preserve existing configs** - Works with your existing application configurations
- **No structural changes** - Padding, margins, fonts, sizes untouched
- **Compatible** - Works with Omarchy and manual installation

### Files Changed

- `waybar.css` - Removed layout properties, colors only
- `wofi.css` - Complete rewrite, colors only
- `walker.css` - Complete rewrite, colors only  
- `neovim.lua` - Cleaned up structure
- `malifex.nvim/colors/malifex.lua` - Synced with neovim.lua

## Initial Release

### Added

- Complete theme support for:
  - Terminal emulators: Alacritty, Ghostty, Kitty
  - Editor: Neovim/LazyVim
  - Compositor: Hyprland
  - Lock screen: Hyprlock
  - Status bar: Waybar
  - System monitor: btop
  - Notifications: Mako
  - Launchers: Wofi, Walker
  - OSD: SwayOSD
- Custom wallpaper: `malifex-background-001.png`
- Omarchy theme manager support
- Comprehensive documentation (README.md, INSTALL.md, CONTRIBUTING.md)
- MIT License

### Color Palette

- Background: `#000000` (pure black)
- Foreground: `#baa997` (warm beige/tan)
- Red: `#ff6b6b` (coral)
- Green: `#8b2635` (burgundy)
- Blue: `#537a5a` (sage green)
- Magenta: `#f2e5bc` (cream)
- Yellow: `#baa997` (beige)

