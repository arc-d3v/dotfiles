#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/wp/"
#CURRENT_WALL=$(hyprctl hyprpaper listloaded)

if [ -d "$WALLPAPER_DIR" ]; then
    random_background=$(ls $WALLPAPER_DIR/* | shuf -n 1)

    cp $random_background $HOME/.wallpaper
    swww img --transition-step 255 --transition-fps 80 --transition-type any $HOME/.wallpaper

fi
