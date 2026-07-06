# Nordic-Purple

Personal purple-accent variant of the Nordic GTK/GNOME Shell theme.

See `PALETTE.md` for the purple replacement map and verification command.

## Fresh Ubuntu Install

Use these steps after upgrading Ubuntu, reinstalling Ubuntu, or setting up a new GNOME desktop.

### 1. Install Requirements

```bash
sudo apt update
sudo apt install git gnome-tweaks gnome-shell-extension-manager
```

Open Extension Manager and install or enable the `User Themes` GNOME Shell extension. Without it, the GTK theme can apply but the GNOME Shell theme cannot.

### 2. Clone The Theme

```bash
mkdir -p ~/linux-themes
git clone https://github.com/Aleksandar-Mitic/nordic-purple-theme.git ~/linux-themes/Nordic-Purple
cd ~/linux-themes/Nordic-Purple
```

### 3. Install And Apply

```bash
./install-local.sh
```

Log out and back in if the top bar, quick settings, or shell dialogs do not refresh immediately.

### 4. Confirm Settings

```bash
gsettings get org.gnome.desktop.interface gtk-theme
gsettings get org.gnome.shell.extensions.user-theme name
gsettings get org.gnome.desktop.interface color-scheme
```

Expected values:

```text
'Nordic-Purple'
'Nordic-Purple'
'prefer-dark'
```

## What The Installer Does

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
