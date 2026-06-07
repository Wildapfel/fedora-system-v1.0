#!/bin/bash

# *quick note*
# - 'parallel --citation' removes some weird citation note

toolbox run --container wikiman bash -c "git clone https://github.com/filiparag/wikiman.git"
toolbox run --container wikiman bash -c "cd wikiman && make all && sudo make install && parallel --citation"
cp wikiman.sh ~/.local/bin
