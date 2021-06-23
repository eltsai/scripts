#!/bin/sh

curl -s -O http://s3.amazonaws.com/alexa-static/top-1m.csv.zip ; unzip -q -o top-1m.csv.zip top-1m.csv ; head -2500 top-1m.csv | cut -d, -f2 | cut -d/ -f1 > AlexaTop2500.txt
