#!/bin/sh

wget –no-check-certificate  https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
bash shadowsocks.sh

# client-side config ss.sh:
# {
#     "server": "139.162.10.88", // your server ip address
#     "server_port": 12345,      // your server port
#     "local_port": 1080,
#     "password": "your_password",
#     "timeout": 600,
#     "method": "aes-256-cfb"    // your encrption method
# }
pip install shadowsocks
sudo sslocal -c ss.json -d start

# server-side:
vim /etc/shadowsocks-libev/config.json
# run 
sslocal &
# run shadowsocks server as systemd service:

# [Unit]
# Description=Shadowsocks Server
# After=network.target
# [Service]
# ExecStart=/usr/local/bin/ssserver -c /etc/shadowsocks/ss-config.json
# Restart=on-abort
# [Install]
# WantedBy=multi-user.target

# copy this file to /etc/systemd/system/shadowsocks-server.service
systemctl enable shadowsocks-server
systemctl start shadowsocks-server

# install proxychains
sudo apt install proxychains4
sudo vim /etc/proxychains4.conf