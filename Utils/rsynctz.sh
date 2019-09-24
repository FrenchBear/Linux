#!/bin/sh
cd ~
sudo mount //teraz/backup_rpi /mnt -o user=tera -o pass='Ast├⌐rix!' -o vers=1.0 &&
	sudo rsync -rtv --delete --exclude='.cache/*' --exclude='.local/share/Trash/*' --exclude='GitHub/*' --exclude='GitVSTS/*' --copy-links --safe-links . /mnt/`uname -n`/
sudo umount /mnt
