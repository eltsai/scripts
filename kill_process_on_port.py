#!/usr/bin/env python3
import os
import subprocess
import sys

def get_pid_list(port):
    pid_list = []
    try:
        output = subprocess.check_output(['lsof', '-i', f'TCP:{port}'], universal_newlines=True)
        lines = output.strip().split('\n')[1:]
        for line in lines:
            parts = line.split()
            pid = int(parts[1])
            pid_list.append(pid)
    except subprocess.CalledProcessError:
        pass
    return pid_list

def kill_process(pid):
    try:
        os.kill(pid, 9)
        print(f"Process with PID {pid} killed successfully.")
    except OSError:
        print(f"Failed to kill process with PID {pid}.")

if len(sys.argv) > 1:
    port = int(sys.argv[1])
else:
    port = 2121

pid_list = get_pid_list(port)
if pid_list:
    print(f"Found {len(pid_list)} process(es) running on port {port}.")
    for pid in pid_list:
        kill_process(pid)
else:
    print(f"No processes found running on port {port}.")