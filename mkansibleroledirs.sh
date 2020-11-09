#!/bin/sh

echo "Make sure you stand in your Ansible roles directory before running"

dir=$(pwd)

echo "Is this the correct directory?" "$dir" "[Y/n]"
read -r ans

[ "$ans" = n ] || [ "$ans" = N ] && exit

echo "What should the new role be called?"
read -r rolename

DIRS="tasks handlers templates files vars defaults meta"

for i in ${DIRS}; do
	echo "$dir/$rolename/$i";
done

[ -e "$dir/$rolename" ] && echo "This directory already exist, OVERWRITE? [y/N]" && read -r ans

[ "$ans" != y ] && [ "$ans" != Y ] && exit

for i in ${DIRS}; do
	mkdir -p "$dir/$rolename/$i";
done

YMLDIRS="tasks handlers vars defaults meta"
mainymlcontent="---\n"

for i in ${YMLDIRS}; do
	echo $mainymlcontent >> "$dir/$rolename/$i/main.yml";
done
