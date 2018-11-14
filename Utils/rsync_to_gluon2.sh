#!/bin/sh
cd /home/pi
rsync -avz --delete --exclude=".cache/*" . pi@gluon2:~
