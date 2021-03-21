#!/bin/sh

bspc monitor eDP1 -d 1 2 3 4 5 6 7
bspc monitor HDMI2 -d 8 9 10
bspc wm -O eDP1 HDMI2
