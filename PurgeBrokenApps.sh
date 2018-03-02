#!/bin/bash

set -e

dpkg -l | grep -v '^ii' | grep -o '\rc.* ' | awk '{print $2}' > RemoveApps.txt

for APPLICATION in `cat RemoveApps.txt`
do
# To keep from having each item ask for approval, place a "-y" between get and purge
apt-get purge $APPLICATION
done

exit 0
