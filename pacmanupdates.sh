#!/bin/sh

ping -c 1 google.com >/dev/null 2>&1 || exit

cmd="paru"
aur="--repo"

[ "$1" = "-a" ] && aur="--aur"

$cmd -Sy >> /dev/null || exit
output=$($cmd -Quq $aur | wc -l)

if [ "$1" = "-a" ]; then
	output="📦AUR:$output"
else
	output="📦:$output"
fi

echo "$output"
exit
