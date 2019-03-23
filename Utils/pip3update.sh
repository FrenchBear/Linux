#!/bin/bash

# In Nantes, need a proxy
PROXY=
hostname -I | grep -q "^10.33." && PROXY="--proxy http://10.33.224.199:8080"

pip3 list --outdated $PROXY | fgrep wheel | awk 'NR>2 {print $1}' | while read p
do
	echo
	echo $p
	sudo -H pip3 install --upgrade $p $PROXY
done
