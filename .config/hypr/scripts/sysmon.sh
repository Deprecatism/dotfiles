#!/bin/sh

IS_OPEN=$(hyprctl clients -j | jq -r '.[] | .title | select(contains("btop") == true)')

if [ "$IS_OPEN" != "btop" ]; then
kitty btop
else exit
fi