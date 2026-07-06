# Nordic-Purple Palette

Nordic-Purple keeps Nord's dark neutral base and replaces the Frost teal/blue accent range with a purple ramp.

## Source Colors

Edit these first when changing the accent family:

| Role | Variable | Color |
| --- | --- | --- |
| Primary muted purple | `$nord7` | `#b48ead` |
| Primary vivid purple | `$nord8` | `#cba6f7` |
| Selection purple | `$nord9` | `#a78bfa` |
| Deep purple | `$nord10` | `#7c5fb8` |
| Numeric/accent purple | `$nord15` | `#b48ead` |

Main source files:

- `gtk-3.0/_nord.scss`
- `gtk-3.0/_colors.scss`
- `gnome-shell/_colors.scss`
- `cinnamon/_colors.scss`

The GTK3 and GTK4 CSS files in this repo are compiled outputs. If SCSS is regenerated later, make sure the compiled CSS still contains the purple replacements below.

## Replacement Map

| Original Nordic color | Purple replacement | Notes |
| --- | --- | --- |
| `#8fbcbb` / `rgb(143, 188, 187)` | `#b48ead` / `rgb(180, 142, 173)` | muted teal to muted purple |
| `#88c0d0` / `rgb(136, 192, 208)` | `#cba6f7` / `rgb(203, 166, 247)` | cyan to vivid purple |
| `#81a1c1` / `rgb(129, 161, 193)` | `#a78bfa` / `rgb(167, 139, 250)` | blue selection to violet |
| `#5e81ac` / `rgb(94, 129, 172)` | `#7c5fb8` / `rgb(124, 95, 184)` | deep blue to deep purple |
| `#6fa9a8` | `#9b7ad6` | generated hover/derived teal |
| `#9fc6c5` / `rgb(159, 198, 197)` | `#c7a8f2` / `rgb(199, 168, 242)` | generated light teal |
| `#add3de` | `#d8c3f4` | generated light cyan |

## Verification

After changing the palette, run:

```bash
for color in '8fbcbb' '88c0d0' '81a1c1' '5e81ac' 'add3de' '6fa9a8' '9fc6c5' '143, 188, 187' '136, 192, 208' '129, 161, 193' '94, 129, 172' '153, 194, 193' '159, 198, 197'; do grep -RIn "$color" . --exclude-dir=.git; done
```

No matches means the old teal/cyan accent range has been removed.
