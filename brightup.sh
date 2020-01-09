#!/bin/bash

brightness_file=/sys/class/backlight/intel_backlight/brightness
brightness=$(< $brightness_file)

if [ $((brightness < 187)) '=' 1 ]
then
   brightness=$((brightness + 10))

   if [ $((brightness > 187)) '=' 1 ]
   then
      brightness=187
   fi
   echo -n $brightness > $brightness_file
fi
