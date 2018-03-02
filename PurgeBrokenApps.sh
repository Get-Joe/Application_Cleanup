#!/bin/bash

dpkg -l | grep -v '^ii' | grep -o '\rc.* ' | awk '{print $2}' > RemoveApps.txt

for APPLICATION in `cat RemoveApps.txt`
do
apt purge $APPLICATION
done
exit 0
