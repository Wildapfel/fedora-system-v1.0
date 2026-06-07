#!/bin/bash

PATH_DIR="$HOME/.local/bin"  # or another directory on your $PATH
mkdir -p "$PATH_DIR"
curl https://cht.sh/:cht.sh > "$PATH_DIR/cheat"
chmod +x "$PATH_DIR/cheat"
