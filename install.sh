#!/bin/bash

test -f ./rotate-princess.sh && isExist=1 || isExist=0

if [ ${isExist} = "0" ]; then
	echo "can't find the rotate-princess.sh please get in program folder."
else
	path=$(pwd)
	#echo ${path}
	touch ./rotate-princess.desktop
	echo "[Desktop Entry]" >> ./rotate-princess.desktop
	echo "Encoding=UTF-8" >> ./rotate-princess.desktop
	echo "Version=1.0" >> ./rotate-princess.desktop
	echo "Type=Application" >> ./rotate-princess.desktop
	echo "Terminal=true" >> ./rotate-princess.desktop
	echo "Exec=${path}/rotate-princess.sh" >> ./rotate-princess.desktop
	echo "Name=rotate-princess" >> ./rotate-princess.desktop
	echo "Icon=${path}/rotate-princess.png" >> ./rotate-princess.desktop
	cp ./rotate-princess.desktop ~/.local/share/applications
	sudo chmod +x rotate-princess.sh
fi

exit 0
