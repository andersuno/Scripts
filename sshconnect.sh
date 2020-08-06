#!/bin/sh
# Give dmenu list of hosts to connect to via ssh
# Change terminator to your preferred terminal emulator

# Format for sshhosts.txt:
# <IP> <Optional, Searchable Description>
# 10.0.0.1 Webserver

# Prepend entry with "#" to disable

machine=$(grep -v "#" ~/.config/sshhosts.txt | dmenu -i -l 20 -fn Monospace-18 | cut -d' ' -f1)

[ "$machine" != "" ] || exit

user=$(echo "anders
root" | dmenu -p "Connect as: ")

terminator -e "ssh $user@$machine"
