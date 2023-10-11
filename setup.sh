#!/bin/bash

echo "setting up ~/.config/ directory symlinks"
./dotconfig/setup.sh
echo "setting up ~/ directory symlinks"
./home/setup.sh

