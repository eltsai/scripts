#!/bin/sh

sudo apt-get install tor
sudo apt-get install obfs4proxy


# to open a port;
sudo ufw allow <port_nr>

# test if port is reachable at
 nc -zv <ip-address> <port_nr>