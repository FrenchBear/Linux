#!/bin/sh

# Create top level links for folers in RPi repository located at ~/Development/GitHub/RPi
# 2018-03-29	PV

for dir in Asm BlueJ C FrameBuffer Fuze Greenfoot Java Mathematica Node.js Ruby Scratch SDL2a SDL2b SonicPi Utils Zmq; do
	if ! test -L ~/$dir
	then
		echo "Create link for $dir"
		ln -s ~/Development/GitHub/RPi/$dir ~/$dir
	fi
done

if test -d ~/Development/GitHub/RPiMedia; then
	echo Media
	for dir in Documents Music Pictures Videos; do
		if ! test -L ~/$dir
		then
			echo "Create link for $dir"
			ln -s ~/Development/GitHub/RPiMedia/$dir ~/$dir
		fi
	done
fi
