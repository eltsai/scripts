#!/bin/sh

sudo apt install fcitx
im-config

sudo reboot

sudo apt install fcitx-googlepinyin

fcitx-config-gtk3
