#!/bin/bash

cat >> ~/.bashrc << EOF
PROMPT_COMMAND='echo -ne "\033]30;$(basename "$PWD")\007"'
EOF



