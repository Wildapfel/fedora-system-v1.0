#!/bin/bash

INI_PATH="$PWD/gnome-extensions/dconf_settings.ini"

dconf load /org/gnome/shell/extensions/ < $INI_PATH
