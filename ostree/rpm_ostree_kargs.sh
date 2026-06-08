#!/bin/bash

# Enables the the checks of the loaded modules at 
# startup and power-off. 
rpm-ostree kargs --delete="quiet" --delete="rhgb"
