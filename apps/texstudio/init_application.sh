#!/bin/bash

FILE_PATH="$HOME/.local/share/applications/texstudio.desktop"
touch $FILE_PATH

cat > $FILE_PATH << EOF
[Desktop Entry]
Name=TeXstudio
Exec=toolbox run -c tex-env texstudio
Type=Application
Terminal=false
Categories=Office;
Icon=/var/home/max-inspiron/Desktop/fedora-silverblue-system/apps/texstudio/TeXstudio_Logo.svg
EOF

