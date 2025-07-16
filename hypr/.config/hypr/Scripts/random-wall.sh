#!/usr/bin/env bash
WALLDIR="$HOME/.config/wallpaper"

# Choose a random landscape file (name NOT starting with portrait-)
land=$(find -L "$WALLDIR" -maxdepth 1 -type f ! -name 'portrait*' | shuf -n1)

# Choose a random portrait file (name starting with portrait-)
port=$(find -L "$WALLDIR" -maxdepth 1 -type f -name 'portrait*' | shuf -n1)

# Apply them immediately via IPC
hyprctl hyprpaper preload "$port" 
hyprctl hyprpaper preload "$land" 
hyprctl hyprpaper wallpaper "DP-2,$land"     # landscape monitor
hyprctl hyprpaper wallpaper "HDMI-A-1,$port" # portrait monitor
