#!/bin/sh

#ENV variable for my notify-send when ran as cronjob
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

ping -c 1 192.168.1.17 >/dev/null || exit

sudo rsync -a --update anders@192.168.1.17::webdav/Database.kdbx /home/anders/.kp/
sudo rsync -a --update /home/anders/.kp/Database.kdbx anders@192.168.1.17::webdav/ && notify-send -i keepassxc "Keepass" "Database Synced"
