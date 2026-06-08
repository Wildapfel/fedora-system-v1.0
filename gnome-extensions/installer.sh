#!/bin/bash

# source
# https://unix.stackexchange.com/questions/617288/command-line-tool-to-install-gnome-shell-extensions

extensions=(
    https://extensions.gnome.org/extension/3193/blur-my-shell/
    https://extensions.gnome.org/extension/307/dash-to-dock/
    https://extensions.gnome.org/extension/4655/date-menu-formatter/
    https://extensions.gnome.org/extension/4688/focus-follows-workspace/
    https://extensions.gnome.org/extension/5263/gtk4-desktop-icons-ng-ding/
    https://extensions.gnome.org/extension/3843/just-perfection/
    https://extensions.gnome.org/extension/5489/search-light/
    https://extensions.gnome.org/extension/1460/vitals/
    https://extensions.gnome.org/extension/8772/soundbar/
)

for extension in "${extensions[@]}"; do
    EXTENSION_ID=$(curl -s $extension | grep -oP 'data-uuid="\K[^"]+')
    busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions org.gnome.Shell.Extensions InstallRemoteExtension s ${EXTENSION_ID}
    gnome-extensions enable ${EXTENSION_ID}
done

# DEBUGGING
# echo $EXTENSION_ID
# echo $VERSION_TAG
# echo "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"

# DEPRECATED
# VERSION_TAG=$(curl -Lfs "https://extensions.gnome.org/extension-query/?search=$EXTENSION_ID" | jq '.extensions[0] | .shell_version_map | map(.pk) | max')
# wget -O ${EXTENSION_ID}.zip "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"
# gnome-extensions install --force ${EXTENSION_ID}.zip
# if ! gnome-extensions list | grep --quiet ${EXTENSION_ID}; then
# rm ${EXTENSION_ID}.zip
