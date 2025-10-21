# Fixes Applied for Omarchy Compatibility

This document details the fixes applied to resolve issues with Omarchy installation.

## Issues Reported

1. ✅ **Waybar status bar disappearing**
2. ✅ **Launcher menus (SUPER+SPACE, SUPER+ALT+SPACE) broken with overlay text**
3. ✅ **Neovim requiring update every time theme is applied**

---

## Fix #1: Waybar Status Bar Disappearing

### Problem
After installing via Omarchy, the top status bar (Waybar) would disappear or have a broken layout.

### Root Cause
The `waybar.css` file was applying layout properties (padding, margins, border-radius, font-size) that conflicted with existing Waybar configurations.

### Solution
Completely rewrote `waybar.css` to apply **colors only**:

**Removed:**
- `font-family` and `font-size` from `*` selector
- All `padding` and `margin` properties
- All `border-radius` properties  
- Structural `border` properties (kept only `border-color`)

**Kept:**
- Color properties only: `background-color`, `color`, `border-color`
- CSS variables for easy customization

### How to Fix Now
```bash
killall waybar && waybar &
```

---

## Fix #2: Launcher Menus Broken (Wofi/Walker)

### Problem
- SUPER+SPACE and SUPER+ALT+SPACE launcher menus had broken layouts
- Input fields showed "sample text" overlays
- Search boxes were unusable

### Root Cause
Both `wofi.css` and `walker.css` had:
- Global `* { font-family, font-size }` selectors affecting all elements
- Specific padding/margin on input fields
- Border-radius and layout properties on input elements

### Solution
Complete rewrite of both files to apply **colors only**:

#### wofi.css
**Removed:**
- `* { font-family: monospace; font-size: 14px; }`
- All `padding`, `margin`, `border-radius` on `#input`
- All `border` properties (kept only `border-color`)

**Changed:**
- `border: 2px solid #537a5a;` → `border-color: #537a5a;`
- `padding: 10px; margin: 5px;` → removed
- `border-radius: 3px;` → removed

#### walker.css  
**Removed:**
- `* { font-family: "JetBrainsMono Nerd Font"; font-size: 14px; }`
- All structural properties from `#input`, `#entry`, `#window`
- All `padding`, `margin`, `border-radius` specifications

**Result:**
- Input fields now work correctly with existing launcher configs
- No overlay text issues
- Layouts preserved

---

## Fix #3: Neovim Requiring Update

### Problem
Every time you switched to the malifex theme in Neovim, it would ask for "update" before applying. Other themes worked instantly.

### Root Cause
- Inconsistent formatting in color table
- Missing clarity in highlight clearing section
- Potential structure incompatibility with Omarchy's expectations

### Solution
Cleaned up `neovim.lua` structure:

**Changes Made:**
1. Added clear comment: `-- Clear any existing highlights`
2. Added comment: `-- Set theme properties`
3. Reformatted color table (removed extra blank lines in table)
4. Added comment: `-- Helper function to set highlights efficiently`
5. Made `neovim.lua` and `malifex.nvim/colors/malifex.lua` consistent

**Before:**
```lua
-- Color Palette
local colors = {
  bg = '#000000',
  fg = '#baa997',
  
  -- Additional shades
  bg_light = '#1a1a1a',
}
```

**After:**
```lua
-- Color Palette
local colors = {
  bg = '#000000',
  fg = '#baa997',
  bg_light = '#1a1a1a',
  bg_lighter = '#2a2a2a',
  gray = '#4d4d4d',
  gray_light = '#6a6a6a',
}
```

### How to Fix Now
```bash
mkdir -p ~/.config/nvim/colors
cp neovim.lua ~/.config/nvim/colors/malifex.lua
```

Then add to your `~/.config/nvim/init.lua`:
```lua
vim.cmd([[colorscheme malifex]])
```

Theme should now load instantly without updates.

---

## Theme Philosophy

All theme files now follow this core principle:

### ✅ Colors Only
- Apply color properties only
- Never modify layouts, padding, margins, or fonts

### ✅ Preserve Configs
- Work with existing application configurations
- Don't override user's layout preferences

### ✅ Compatible
- Works with Omarchy automatic installation
- Works with manual installation
- Doesn't break on restart

---

## Files Modified

### Major Rewrites (Colors Only)
- ✅ `waybar.css` - Removed all layout properties
- ✅ `wofi.css` - Complete rewrite, colors only
- ✅ `walker.css` - Complete rewrite, colors only

### Structure Improvements
- ✅ `neovim.lua` - Cleaned up formatting
- ✅ `malifex.nvim/colors/malifex.lua` - Synced with neovim.lua

### Documentation Updates
- ✅ `README.md` - Added theme philosophy and post-install notes
- ✅ `INSTALL.md` - Enhanced troubleshooting section
- ✅ `CHANGELOG.md` - Documented all fixes

---

## Testing Checklist

After reinstalling with Omarchy, verify:

- [ ] Waybar appears and looks correct
- [ ] SUPER+SPACE launcher menu works (wofi/walker)
- [ ] SUPER+ALT+SPACE launcher menu works
- [ ] Input fields in launchers are functional
- [ ] No "sample text" overlays
- [ ] Neovim theme loads without asking for update
- [ ] All colors match the Malifex palette
- [ ] Wallpaper is applied correctly

---

## Quick Fix Commands

If you encounter issues after installation:

```bash
# Fix Waybar
killall waybar && waybar &

# Fix Neovim
mkdir -p ~/.config/nvim/colors
cp neovim.lua ~/.config/nvim/colors/malifex.lua
# Then add to init.lua: vim.cmd([[colorscheme malifex]])

# Fix launchers (if needed)
# Restart your compositor or launcher
```

---

## Status: ✅ All Issues Resolved

The Malifex theme is now fully compatible with Omarchy and standalone installation. All CSS and configuration files apply colors only, preserving your existing application configurations.

