VNC
===

Running X11 in a Cloud9 workspace or Vagrant VM, using:

- `nonvc`
- `fluxbox`
- `x11vnc`
- `xvfb`
- `supervisor`

[Screen Shot](screenshot.png)

Installation
------------

    ./install.sh
    
If you'd like to direct all other X11 programs to this desktop, use the following to set the default DISPLAY.

    echo "export DISPLAY=localhost:99" >> ~/.bashrc


Running with default config
-------

    ./run.sh
    
Running with Firefox
----------

    sudo apt-get install -y firefox
    ./run.sh firefox.conf


## Notes

- attaches desktop to display `:99`, change this in `.conf` if needed.
- sets size to 1280x864 with 16-bit depth, change this in `.conf` if needed.
- installs `noVNC` in `~`
- give desired `.conf` file as argument to `run.sh`
- if no argument, defaults to `supervisor.conf`, which runs `fluxbox`
