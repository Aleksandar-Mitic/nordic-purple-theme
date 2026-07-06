# Nordic-Purple

Personal purple-accent variant of the Nordic GTK/GNOME Shell theme.

## Install

```bash
git clone <repo-url> ~/linux-themes/Nordic-Purple
cd ~/linux-themes/Nordic-Purple
./install-local.sh
```

The installer:

- copies the theme to `~/.themes/Nordic-Purple`
- applies the GTK theme
- applies the GNOME Shell user theme
- copies GTK4 override files to `~/.config/gtk-4.0`
- copies window-control assets to `~/.config/assets`
- restarts Nautilus

## Notes

`~/.config/assets` is needed because the GTK4 CSS references window-control icons through `../assets/...` when used as a GTK4 override.

If Files/Nautilus buttons disappear, rerun:

```bash
./install-local.sh
```

## Reset GTK4 Override

```bash
rm -rf ~/.config/gtk-4.0/* ~/.config/assets
nautilus -q
```
