#!/bin/bash

brightness_file=/sys/class/backlight/intel_backlight/brightness
brightness=$(< $brightness_file)

if [ $((brightness > 0)) '=' 1 ]
then
   brightness=$((brightness - 10))
   
   if [ $((brightness < 1)) '=' 1 ]
   then
      brightness=1
   fi
   echo -n $brightness > $brightness_file
fi
