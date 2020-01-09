#!/bin/bash

			# ">" resets log
			# ">>" appends log

echo "-------------------" > /home/anders/Log/rsync.log
echo "$(date +"%F %T ")" >> /home/anders/Log/rsync.log

#Rsync verbose archive Hardlinks
sudo rsync -v -a -H --delete --update /timeshift/ root@192.168.1.17::backup/acer/timeshift >> /home/anders/Log/rsync.log

echo "Script done" >> /home/anders/Log/rsync.log
echo "-------------------" >> /home/anders/Log/rsync.log
echo "$(date +"%F")" > /home/anders/Log/rsync.lastrun
