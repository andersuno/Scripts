#!/bin/sh

pgrep -x polybar >> /dev/null && pkill -x polybar >> /dev/null
sleep 1
polybar mybar >> /dev/null 2>&1 &
