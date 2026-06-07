# quick note
# - flatpaks have a different location ... 

import os
from pathlib import Path

FLATPAK_DESKTOP_DIR = "/var/lib/flatpak/exports/share/applications"             
HOME = Path.home()
PWD = os.getcwd()

new_lines = []

# replace the Icon lines with corresponding Icon path
with open(f"{FLATPAK_DESKTOP_DIR}/org.kde.konsole.desktop", "r") as fp:
    lines = fp.readlines()
    for line in lines:
        line_split = line.split(sep="=")
        try:
            if "Icon" in line_split[0]:
                line_split[1] = f"{PWD}/apps/konsole/macos_terminal_icon.png\n"
        except:
            pass
        new_lines.append("=".join(line_split))

# write
with open(f"{HOME}/.local/share/applications/org.kde.konsole.desktop", "w") as fp:
    for line in new_lines:
        fp.write(line)

