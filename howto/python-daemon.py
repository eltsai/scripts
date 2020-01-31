#!/usr/bin/env python3
import daemon
import time
def do_something():
    while True:
        with open("/home/elisa/scripts/howto/current_time.txt", "w") as f:
            f.write("The time is now {}\n".format(time.ctime()))
            time.sleep(5)
        

def run():
    with daemon.DaemonContext():
        do_something()

if __name__ == "__main__":
    run()