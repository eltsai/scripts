#!/usr/bin/python3
#coding=utf-8

import zipfile
import sys
filename = sys.argv[1]
print("[*] Beginning extracting {}...".format(filename))

with zipfile.ZipFile(filename,"r") as zf:
    print(zf.namelist())
    zf.extractall("extracted_"+ filename[:-4])

print("[*] Done")
