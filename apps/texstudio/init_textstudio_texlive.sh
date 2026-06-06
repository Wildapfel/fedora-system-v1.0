#!/bin/bash

toolbox create tex-env
toolbox run --container tex-env bash -c "sudo dnf install texstudio texlive-scheme-basic -y"
