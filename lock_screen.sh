#!/bin/bash

gnome-screensaver-command -l

if [ "$1" == "" ]; then
	echo "showing my cats"
    while [ 1 ]
	do
		xdotool sleep 1 key Ctrl
	done
fi


# In Settings -> Devices -> Keyboard
# Add new shortcut
# with gnome-terminal -e "path_of_script"
