#!/bin/bash

# dpkg -l - list all items in dpkg
# grep -v '^ii' - 

dpkg -l | grep -v '^ii' | grep -o '\rc.* ' | awk '{print $2}' > RemoveApps.txt
