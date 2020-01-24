#!/bin/sh

# split horizontally
xdotool key ctrl+b+shift+5

# split vertically
xdotool key ctrl+b
xdotool type '"'

# back to left window
xdotool key ctrl+b
xdotool key Left

# idk why 
xdotool type ' '
# split vertically
xdotool key ctrl+b
xdotool type '"'

# back
xdotool key ctrl+b
xdotool key Up
clear
