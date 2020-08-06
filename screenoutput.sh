#!/bin/sh

chosen=$(echo "1. HDMI Off
2. HDMI Above
3. HDMI Right
4. HDMI Left" | dmenu -i -l 20 -fn Monospace-18 | cut -c1)

[ "$chosen" = "1" ] && xrandr --output HDMI2 --off && "$HOME/Scripts/.bspwmscreenOFF.sh"
[ "$chosen" = "2" ] && xrandr --output HDMI2 --auto --above eDP1 && "$HOME/Scripts/.bspwmscreenHDMI2.sh"
[ "$chosen" = "3" ] && xrandr --output HDMI2 --auto --right-of eDP1 && "$HOME/Scripts/.bspwmscreenHDMI2.sh"
[ "$chosen" = "4" ] && xrandr --output HDMI2 --auto --left-of eDP1 && "$HOME/Scripts/.bspwmscreenHDMI2.sh"

#reload background, if resolution differ it will be messed up otherwise
[ "$chosen" != "" ] && sleep 1; "$HOME/.fehbg"

exit
