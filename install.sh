#!/bin/bash

cd ~

sudo apt-get update -qq
sudo apt-get install -y supervisor xvfb fluxbox x11vnc
git clone git://github.com/kanaka/noVNC

echo "DISPLAY=:99" >> ~/.bashrc
