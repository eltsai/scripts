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

# install proxychains
# https://echohn.github.io/2016/05/29/to-build-the-fullstack-tools-for-over-the-wall/