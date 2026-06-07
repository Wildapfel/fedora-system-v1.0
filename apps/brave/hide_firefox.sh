#!/bin/bash

FIREFOX_DESKTOP="/usr/share/applications/org.mozilla.firefox.desktop "
FIREFOX_DESKTOP_LOCAL="~/.local/share/applications/org.mozilla.firefox.desktop"

cp $FIREFOX_DESKTOP $FIREFOX_DESKTOP_LOCAL

cat > ~/.local/share/applications/org.mozilla.firefox.desktop << EOF
[Desktop Entry]
NoDisplay=true
EOF
