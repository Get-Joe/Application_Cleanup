#!/bin/bash
dpkg -l | grep -v '^ii' | grep -o '\rc.* ' | awk '{print $2}' > RemoveApps.txt
