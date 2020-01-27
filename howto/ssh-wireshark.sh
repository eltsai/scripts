#!/bin/sh

ssh ubuntu@118.24.75.137 "sudo tcpdump -s0 -w - 'port 8080'" | wireshark -k -i -

# https://kaischroed.wordpress.com/2013/01/28/howto-use-wireshark-over-ssh/
