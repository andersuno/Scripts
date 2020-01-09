#!/bin/bash

sudo rsync -v -a --files-from=/home/anders/dotfiles.list --update /home/anders/ /home/anders/dotfiles >> /home/anders/Log/dotfilesync.log
sudo rsync -v -a --update /etc/i3status.conf /home/anders/dotfiles >> /home/anders/Log/dotfilesync.log
sudo rsync -v -a --update /etc/sudoers /home/anders/dotfiles >> /home/anders/Log/dotfilesync.log
