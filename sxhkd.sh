#!/bin/sh

pgrep -x sxhkd >> /dev/null && pkill -x sxhkd >> /dev/null
sxhkd &
