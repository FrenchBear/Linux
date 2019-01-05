#!/bin/bash

pip3 list --outdated | awk 'NR>2 {print $1}' | while read p
do
	echo $p
	sudo -H pip3 install --upgrade $p
done
