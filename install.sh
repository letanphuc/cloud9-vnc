#!/bin/bash

cd ~

sudo apt-get update -qq
sudo apt-get install -y supervisor xvfb fluxbox x11vnc
git clone https://github.com/novnc/noVNC.git
