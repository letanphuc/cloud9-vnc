#!/bin/bash

cd /home/ubuntu

sudo apt-get update -qq
sudo apt-get install supervisor xvfb fluxbox x11vnc
git clone git://github.com/kanaka/noVNC
