#!/bin/sh

chosen=$(echo "1. VGA Off
2. VGA Above
3. VGA Right
4. VGA Left
5. HDMI Off
6. HDMI Above
7. HDMI Right
8. HDMI Left" | dmenu -i -l 20 -fn Monospace-18 | cut -c1)

[ "$chosen" = "1" ] && xrandr --output DP1 --off && /home/anders/Scripts/bspwmscreenOFF.sh
[ "$chosen" = "2" ] && xrandr --output DP1 --auto --above eDP1 && /home/anders/Scripts/bspwmscreenVGA.sh
[ "$chosen" = "3" ] && xrandr --output DP1 --auto --right-of eDP1 && /home/anders/Scripts/bspwmscreenVGA.sh
[ "$chosen" = "4" ] && xrandr --output DP1 --auto --left-of eDP1 && /home/anders/Scripts/bspwmscreenVGA.sh
[ "$chosen" = "5" ] && xrandr --output HDMI2 --off
[ "$chosen" = "6" ] && xrandr --output HDMI2 --auto --above eDP1
[ "$chosen" = "7" ] && xrandr --output HDMI2 --auto --right-of eDP1
[ "$chosen" = "8" ] && xrandr --output HDMI2 --auto --left-of eDP1

[ "$chosen" != "" ] && sleep 1; /home/anders/.fehbg

exit
