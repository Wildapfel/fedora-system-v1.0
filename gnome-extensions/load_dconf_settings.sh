#!/bin/bash

INI_PATH="$PWD/gnome-extensions/gnome_extensions_dconf_settings.ini"

dconf load /org/gnome/shell/extensions/ < $INI_PATH
