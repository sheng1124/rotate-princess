#!/bin/bash

test -f ~/.rotateprincess/rotateVector.txt && isExist=1 || isExist=0

if [ ${isExist} = "0" ]; then
	mkdir ~/.rotateprincess
	touch ~/.rotateprincess/rotateVector.txt
	echo "normal" > ~/.rotateprincess/rotateVector.txt
	touch ~/.rotateprincess/message
	xrandr -o normal
	echo "initialize complete, please excute this program again." > ~/.rotateprincess/message	
	gedit ~/.rotateprincess/message
	rm ~/.rotateprincess/message
else
	vector=$(head ~/.rotateprincess/rotateVector.txt)
	if [ ${vector} = "normal" ]; then
		xrandr -o left
		echo "left" > ~/.rotateprincess/rotateVector.txt
	else
		xrandr -o normal
		echo "normal" > ~/.rotateprincess/rotateVector.txt
	fi
fi
exit 0
