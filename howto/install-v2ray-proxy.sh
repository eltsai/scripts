#!/bin/sh

curl -LROJ https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
# generate a UUID using generator like https://www.uuidgenerator.net/version1
# client-side configuration:

# {
#   "inbounds": [
#     {
#       "port": 1080,
#       "protocol": "socks", 
#       "sniffing": {
#         "enabled": true,
#         "destOverride": ["http", "tls"]
#       },
#       "settings": {
#         "auth": "noauth" 
#       }
#     }
#   ],
#   "outbounds": [
#     {
#       "protocol": "vmess",
#       "settings": {
#         "vnext": [
#           {
#             "address": "IP",  
#             "port": 16823, 
#             "users": [
#               {
#                 "id": "UUID", 
#                 "alterId": 64 
#               }
#             ]
#           }
#         ]
#       }
#     }
#   ]
# }

# server-side
# {
#   "inbounds": [
#     {
#       "port": 16823, 
#       "protocol": "vmess",  
#       "settings": {
#         "clients": [
#           {
#             "id": "UUID",  
#             "alterId": 64
#           }
#         ]
#       }
#     }
#   ],
#   "outbounds": [
#     {
#       "protocol": "freedom", 
#       "settings": {}
#     }
#   ]
# }

# server-side: Install the Google TCP BBR congestion control algorithm
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
service v2ray restart
