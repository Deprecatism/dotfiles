#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/hypr/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

export SWWW_TRANSITION_FPS=90
export SWWW_TRANSITION_DURATION=5

swww img -t top "$WALLPAPER"