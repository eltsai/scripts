#!/bin/sh

sudo mkdir -p /var/lib/samba/usershares/ &
sudo chmod go+rwx /var/lib/samba/usershares/
sudo apt install smbclient
sudo apt install samba 
