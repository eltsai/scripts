#!/bin/bash

gnome-screensaver-command -l
while [ 1 ]
do
	xdotool sleep 1 key Ctrl
done

# In Settings -> Devices -> Keyboard
# Add new shortcut
# with gnome-terminal -e "path_of_script"
