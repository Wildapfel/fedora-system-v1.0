#!/bin/bash
toolbox create wikiman
toolbox run --container wikiman bash -c "sudo dnf install make man fzf ripgrep awk w3m coreutils parallel -y"


