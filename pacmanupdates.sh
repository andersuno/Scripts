#!/bin/sh

ping -c 1 google.com >/dev/null 2>&1 || exit

cmd="sudo pacman"

[ "$1" = "-a" ] && cmd="yay"

$cmd -Sy >> /dev/null || exit
output=$($cmd -Quq | wc -l)

if [ "$1" = "-a" ]; then
	nonaur=$(sudo pacman -Quq | wc -l)
	output=$((output-nonaur))
	output="📦AUR:$output"
else
	output="📦:$output"
fi

echo "$output"
exit
