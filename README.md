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

Running
-------

    ./run.sh
    
or use the `X11` runner.

## Notes

- attaches desktop to display `:99`, change this in `supervisord.conf` if needed.
- sets size to 1280x864 with 16-bit depth, change this in `supervisord.conf` if needed.
- installs `noVNC` in `~`
