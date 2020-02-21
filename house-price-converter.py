#!/usr/bin/env python3
import argparse

parser = argparse.ArgumentParser(description='Convert Dollar per feet square to Yuan per meter square')
parser.add_argument("d", help="Enter price ($)")
parser.add_argument("f", help="Enter area (feet)")

args = parser.parse_args()

yuan = 7.02 * float(args.d)
area = 0.092903 * float(args.f)

print("Total: ￥ {0:.2f}".format(yuan))
print("Area: {0:.2f} squar meters".format(area))
print("\n￥ {0:.2f} per square meter".format(yuan/area))