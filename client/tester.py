#!/usr/bin/env python3

import subprocess
import sys

def main():
    with open("./input.txt") as f:
        lines = f.read()
        #print(lines)
        subprocess.run(["./mosquitto_sub", "-h", "54.226.92.102", "-t", lines])


if __name__ == "__main__":
    sys.exit(main())

