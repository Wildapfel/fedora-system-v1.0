#!/bin/bash

FILE_PATH="$HOME/.local/share/applications/texstudio.desktop"
touch $FILE_PATH

ICON_PATH="$PWD/apps/texstudio/TeXstudio_Logo.svg"

cat > $FILE_PATH << EOF
[Desktop Entry]
Name=TeXstudio
Exec=toolbox run -c tex-env texstudio
Type=Application
Terminal=false
Categories=Office;
Icon=$ICON_PATH
EOF

