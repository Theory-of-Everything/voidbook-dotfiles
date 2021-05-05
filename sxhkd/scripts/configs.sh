#!/bin/bash

option0="Edit WM Config"
option1="Edit Keybinds"
option2="Edit Polybar Configs"

options="$option0\n$option1\n$option2"

chosen="$(echo -e "$options" | rofi -lines 2 -dmenu -p "Edit Configs: " -width 30)"
case $chosen in
	$option0)
		urxvt -e nvim $HOME/.config/bspwm/bspwmrc;;
	$option1)
		urxvt -e nvim $HOME/.config/sxhkd/sxhkdrc;;
	$option2)
		urxvt -e nvim $HOME/.config/polybar/;;
esac
