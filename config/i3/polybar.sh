#!/usr/bin/bash

pkill polybar 
polybar -c $HOME/.config/polybar/current/config.ini main &
polybar -c $HOME/.config/polybar/current/config.ini main2 &
polybar -c $HOME/.config/polybar/current/config.ini main3 &
