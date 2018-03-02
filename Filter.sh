#!/bin/bash

# dpkg -l - list all items in dpkg.
# grep -v '^ii' - sorts out all listed not installed correctly.
# grep -o '\rc.* ' - selects only the lines that start with rc.
# awk '{print $2}' - prints the second colomn.
# > RemoveApps.txt - overwrites the file RemoveApps.txt used later to input for the apt-get purge

dpkg -l | grep -v '^ii' | grep -o '\rc.* ' | awk '{print $2}' > RemoveApps.txt
