#!/bin/sh

sudo apt install fcitx
im-config
# activate ibus input framework
sudo reboot
sudo apt install fcitx-googlepinyin -y
fcitx-config-gtk3
# unselect 'only show current', search for google