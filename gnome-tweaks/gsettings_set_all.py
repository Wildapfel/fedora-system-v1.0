#!/usr/bin/env python
import os
import subprocess
import sys

PWD = os.getcwd()
INI = f"{PWD}/gnome-tweaks/gsettings.ini"

with open(INI, "r") as fp:
    lines = fp.readlines()
    for line in lines:
        cmd = " ".join(["gsettings", "set", line])[:-1]
        try:
            output = subprocess.run(cmd, shell=True, capture_output=True)
            if output.returncode != 0:
                print(f"Error: {output}")
        except Exception as e:
            print("not working")
