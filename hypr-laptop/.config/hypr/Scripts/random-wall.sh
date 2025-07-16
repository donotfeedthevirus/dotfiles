#!/usr/bin/env bash
WALLDIR="$HOME/.config/wallpaper"

# Choose a random landscape file (name NOT starting with portrait-)
builtin=$(find -L "$WALLDIR" -maxdepth 1 -type f ! -name 'portrait*' | shuf -n1)

# Choose a random landscape file (name NOT starting with portrait-)
external=$(find -L "$WALLDIR" -maxdepth 1 -type f -name 'portrait*' | shuf -n1)

# Apply them immediately via IPC
hyprctl hyprpaper preload "$external" 
hyprctl hyprpaper preload "$builtin" 
hyprctl hyprpaper wallpaper "eDP-1,$builtin"     
hyprctl hyprpaper wallpaper "HDMI-A-1,$external" 
