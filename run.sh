#!/bin/bash

if [ -v C9_HOSTNAME ]
then
    VNC_IP=$C9_HOSTNAME
else
    VNC_IP=$(cat /etc/network/interfaces | grep "address" | sed 's/^[ \t]*//' | sed 's/address //')
fi

echo VNC client running at https://$VNC_IP/vnc.html
echo Open a new shell and run the desired application
echo

supervisord -c supervisord.conf