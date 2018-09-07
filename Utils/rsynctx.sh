#!/bin/sh
cd ~
sudo mount //terax/backup /mnt && 
	sudo rsync -rtv --delete --exclude='.cache/*' --exclude='.local/share/Trash/*' --copy-links --safe-links . /mnt/RPi/home-pi/
	sudo umount /mnt
