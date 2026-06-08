#!/bin/bash

# quick note:
# Just a master script for the orchestration
# of the installations.

# gnome extesnions
./gnome-extensions/installer.sh         # tested
./gnome-extensions/dconf_loader.sh      # tested

# apps
./apps/obsidian/obsidian_installer.sh   # untested
./apps/marktext/marktext_installer.sh   # untested
./apps/zed/zed_installer.sh             # untested

# ostree
./ostree/rpm_ostree_kargs.sh            # tested
./ostree/rpm_ostree_packages.sh         # tested
