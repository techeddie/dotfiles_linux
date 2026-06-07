#!/bin/bash
# Type clipboard content for noVNC/Proxmox
sleep 0.3
wl-paste --no-newline | ydotool type --key-delay 20 --file=-
