#!/usr/bin/env python
import os
import subprocess
import sys

PWD = os.getcwd()
INI = f"{PWD}/gnome-tweaks/gsettings.ini"
LINUX_CMD = "gsettings set"

f_correct = open(f"{PWD}/gnome-tweaks/correct.log", "w")
f_failure = open(f"{PWD}/gnome-tweaks/failure.log", "w")

counter_success = 0
counter_failure = 0

with open(INI, "r") as fp:
    lines = fp.readlines()
    for line in lines:
        parts = line.split(maxsplit=2)
        scheme_dir = parts[0]
        key = parts[1]
        value = parts[2][:-1]  # \n ...
        try:
            output = subprocess.run(
                ["gsettings", "set", scheme_dir, key, value],
                text = True,
                capture_output = True,
            )
            if output.returncode == 0:
                counter_success += 1
                f_correct.write(" ".join(["gsettings", "set", scheme_dir, key, value, "\n"],))
            elif output.returncode != 0:
                counter_failure += 1
                f_failure.write(" ".join(["gsettings", "set", scheme_dir, key, value, "\n"],))
                # print(f"returncode: {output.returncode}")
                # print(f"err: {output.stderr}")
                # print(LINUX_CMD, scheme_dir, key, value)
        except Exception as e:
            print(e)
            pass

f_failure.close()
f_correct.close()
