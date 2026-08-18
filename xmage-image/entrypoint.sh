#!/bin/bash

# Start VNC virtual desktop on display :1
vncserver :1 -geometry 1366x768 -depth 24 -SecurityTypes None

# Start Fluxbox window manager
DISPLAY=:1 fluxbox &

# Start noVNC web server on port 6080
websockify --web /usr/share/novnc 6080 localhost:5901 &

# Launch the XMage Launcher
cd /xmage
DISPLAY=:1 java -Dsun.java2d.xrender=false -Dsun.java2d.pmoffscreen=false -Dsun.java2d.opengl=false -jar XMageLauncher-0.3.8.jar