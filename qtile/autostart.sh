#!/usr/bin/bash
#xrandr --auto --output HDMI-0 --primary
xrandr --auto --output HDMI-0 --primary --right-of DP-0 --auto --output DVI-I-0 --mode 1368x768 --right-of HDMI-0 --auto --output DP-0 &
feh --bg-fill /home/dopel/Img/1228050.jpg &
xfce4-power-manager &
