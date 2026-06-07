#!/bin/bash

FILE="org.gnome.Ptyxis.desktop"

DESKTOP="/usr/share/applications/$FILE"
DESKTOP_LOCAL="/home/max-inspiron/.local/share/applications"

cp $DESKTOP $DESKTOP_LOCAL

cat > "$DESKTOP_LOCAL/$FILE" << EOF
[Desktop Entry]
NoDisplay=true
EOF
