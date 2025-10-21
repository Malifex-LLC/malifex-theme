# Malifex Color Palette

This document contains the complete color palette for reference when creating themes for other applications.

## Primary Colors

```
Background: #000000 (Pure black)
Foreground: #baa997 (Warm beige/tan)
```

## Standard Terminal Colors

### Normal Colors

| Name    | Hex Code  | RGB           | Description          |
|---------|-----------|---------------|----------------------|
| Black   | `#000000` | 0, 0, 0       | Pure black           |
| Red     | `#ff6b6b` | 255, 107, 107 | Coral red            |
| Green   | `#8b2635` | 139, 38, 53   | Deep burgundy        |
| Yellow  | `#baa997` | 186, 169, 151 | Warm beige/tan       |
| Blue    | `#537a5a` | 83, 122, 90   | Sage green           |
| Magenta | `#f2e5bc` | 242, 229, 188 | Cream                |
| Cyan    | `#ff6b6b` | 255, 107, 107 | Coral red (same as red) |
| White   | `#f2e5bc` | 242, 229, 188 | Cream                |

### Bright Colors (Suggested)

| Name    | Hex Code  | RGB           | Description          |
|---------|-----------|---------------|----------------------|
| Black   | `#4d4d4d` | 77, 77, 77    | Dark gray            |
| Red     | `#ff8888` | 255, 136, 136 | Light coral          |
| Green   | `#a63d4d` | 166, 61, 77   | Light burgundy       |
| Yellow  | `#d4c3b2` | 212, 195, 178 | Light beige          |
| Blue    | `#6a9470` | 106, 148, 112 | Light sage           |
| Magenta | `#f7eed1` | 247, 238, 209 | Light cream          |
| Cyan    | `#ff8888` | 255, 136, 136 | Light coral          |
| White   | `#ffffff` | 255, 255, 255 | Pure white           |

## Additional Shades

These colors are commonly used for UI elements like backgrounds, borders, and inactive states:

```
Light Background:    #1a1a1a (Very dark gray)
Lighter Background:  #2a2a2a (Dark gray)
Gray:                #4d4d4d (Medium-dark gray)
Light Gray:          #6a6a6a (Medium gray)
```

## Color Philosophy

The Malifex theme is designed with these principles:

1. **Low contrast background**: Pure black (#000000) provides deep darkness without eye strain
2. **Warm foreground**: Beige/tan (#baa997) offers comfortable readability with earthy warmth
3. **Earthy accents**: The palette favors natural, muted tones (burgundy, sage, cream)
4. **Strategic brightness**: Coral red provides necessary pop for errors and highlights
5. **Consistency**: Colors remain consistent across all applications for a unified experience

## Usage Notes

- **Red/Coral** (#ff6b6b): Use for errors, warnings, urgent items, and primary actions
- **Burgundy** (#8b2635): Use for strings, success states (deeper than typical green)
- **Sage Green** (#537a5a): Use for functions, types, and stable UI elements
- **Cream** (#f2e5bc): Use for constants, highlights, and emphasis
- **Beige/Tan** (#baa997): Default text and neutral elements

## Accessibility

The Malifex theme prioritizes aesthetics over maximum contrast. While suitable for extended use in low-light environments, users requiring high contrast should consider adjusting colors or using accessibility tools.

- Foreground/Background contrast ratio: ~4.5:1 (WCAG AA compliant for normal text)
- Accent colors provide sufficient differentiation for most use cases

