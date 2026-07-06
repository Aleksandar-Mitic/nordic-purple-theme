#!/usr/bin/env bash
set -euo pipefail

theme_name="Nordic-Purple"
source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
theme_dir="$HOME/.themes/$theme_name"

mkdir -p "$HOME/.themes" "$HOME/.config/gtk-4.0" "$HOME/.config/assets"

if [ "$source_dir" != "$theme_dir" ]; then
  rm -rf "$theme_dir"
  cp -a "$source_dir" "$theme_dir"
fi

rm -rf "$HOME/.config/gtk-4.0"/*
cp -a "$theme_dir/gtk-4.0"/. "$HOME/.config/gtk-4.0/"
cp -a "$theme_dir/assets"/. "$HOME/.config/assets/"

gsettings set org.gnome.desktop.interface gtk-theme "$theme_name"
gsettings set org.gnome.shell.extensions.user-theme name "$theme_name"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

nautilus -q >/dev/null 2>&1 || true

echo "$theme_name installed. Log out/in if GNOME Shell does not refresh fully."
