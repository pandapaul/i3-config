#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 5% -scale 2000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
i3lock -i /tmp/screen.png
