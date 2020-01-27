#!/bin/sh

tshark -i 2 -p -w test.cap host 118.24.75.137

tshark -r test.cap | grep "12345"
