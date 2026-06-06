#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpaper"
BACKGROUND_DIR="$PWD/gnome-tweaks/background-img"
BACKGROUND_NAME="stone_beach_aerial_green_ocean"

mkdir -p $WALLPAPER_DIR
mv "$BACKGROUND_DIR/BACKGROUND_NAME" "$WALLPAPER_DIR/$BACKGROUND_NAME"

gsettings set org.gnome.desktop.background picture-uri "$WALLPAPER_DIR/$BACKGROUND_NAME"
gsettings set org.gnome.desktop.background picture-uri-dark "$WALLPAPER_DIR/$BACKGROUND_NAME"
