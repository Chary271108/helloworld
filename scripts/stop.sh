#!/bin/sh
[[ -e /lib/systemd/system/helloworld.service ]] \
 && status helloworld | \
 grep -q '^helloworld start/running, process' \
 && [[ $? -eq 0 ]] \
 && stop helloworld || echo "Application not started"
