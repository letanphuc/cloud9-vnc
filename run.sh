#!/bin/bash

echo VNC client running at https://$C9_HOSTNAME/vnc.html
echo Open a new terminal and run the desired application
echo

supervisord -c supervisord.conf