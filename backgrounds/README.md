# Malifex Theme Backgrounds

This directory contains wallpapers designed to complement the Malifex color theme.

## Default Wallpaper

**`malifex-background-001.png`** - The default Malifex wallpaper, optimized for the theme's dark, earthy aesthetic.

A symlink `default.png` points to this wallpaper for easy reference.

## Using with Omarchy

Omarchy will automatically detect and use wallpapers from this directory when you install the theme:

```bash
omarchy-theme-install https://github.com/YOUR_USERNAME/malifex-theme
```

The default wallpaper will be applied automatically.

## Using with Hyprland

### With hyprpaper

Add to your `~/.config/hypr/hyprpaper.conf`:

```conf
preload = ~/path/to/malifex-theme/backgrounds/malifex-background-001.png
wallpaper = ,~/path/to/malifex-theme/backgrounds/malifex-background-001.png
```

### With swww

```bash
swww img ~/path/to/malifex-theme/backgrounds/malifex-background-001.png --transition-type fade
```

### Direct in Hyprland config

Add to your `~/.config/hypr/hyprland.conf`:

```conf
exec-once = hyprpaper
# Or
exec-once = swww init && swww img ~/path/to/malifex-theme/backgrounds/malifex-background-001.png
```

## Adding Your Own Wallpapers

Place additional wallpapers in this directory. For best visual harmony with the Malifex theme, choose images with:

### Recommended Colors

- **Dark backgrounds**: Black or very dark tones (`#000000` to `#1a1a1a`)
- **Warm earth tones**: Browns, tans, burgundy (`#8b2635`), sage green (`#537a5a`)
- **Muted colors**: Avoid bright, saturated colors
- **Accent colors**: Coral red (`#ff6b6b`), cream (`#f2e5bc`), beige (`#baa997`)

### Recommended Themes

- Dark abstract patterns
- Minimalist designs
- Natural landscapes at dusk/night
- Earth-toned geometric patterns
- Muted vintage photography

## Wallpaper Sources

Find complementary wallpapers at:
- [Unsplash](https://unsplash.com) - Search: "dark landscape", "earth tones", "minimal dark"
- [Wallhaven](https://wallhaven.cc) - Filter by dark colors and earth tones
- [Simple Desktops](http://simpledesktops.com) - Minimal wallpapers

## Technical Details

**malifex-background-001.png:**
- Resolution: High-res (suitable for 4K displays)
- Color palette: Matches Malifex theme colors
- Style: Dark, earthy, minimal
- Format: PNG with transparency support

