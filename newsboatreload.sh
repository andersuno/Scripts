#!/bin/sh

#ENV variable for my notify-send when ran as cronjob
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

ping -c 1 google.com >/dev/null || exit

result=$(newsboat -x reload print-unread)

#Log entries when ran as cronjob
echo "Reloading Newsboat"
echo "$result"

[ "$result" != "" ] && notify-send -u low -i rss "Newsboat" "$result"
