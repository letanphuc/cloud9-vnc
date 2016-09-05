#!/bin/bash

if [ -v C9_HOSTNAME ]
then
    VNC_IP=$C9_HOSTNAME
else
    VNC_IP=$(cat /etc/network/interfaces | grep "address" | sed 's/^[ \t]*//' | sed 's/address //')
fi

if [ -v PORT ]
then
    echo using default port $PORT
else
    PORT=8080
    echo setting default port to $PORT
fi

echo VNC client running at https://$VNC_IP:$PORT/vnc.html
echo Open a new shell and run the desired application
echo

if [ -z "$1" ]
then
    CMD=supervisord.conf
else
    CMD=$1
fi

supervisord -c $CMD
