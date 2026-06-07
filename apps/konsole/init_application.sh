#!/bin/bash

FILE_PATH="$HOME/.local/share/applications/konsole.desktop"
touch $FILE_PATH

ICON_PATH="$PWD/apps/konsole/macos_terminal_icon.png"

cat > $FILE_PATH << EOF
[Desktop Entry]
Name=Konsole
Exec=GTK_THEME=Adwaita:dark konsole
Type=Application
Terminal=false
Categories=Office;
Icon=$ICON_PATH
EOF

