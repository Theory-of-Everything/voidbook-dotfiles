#!/bin/bash

option0="Vultr Cloud Instance v1Cores 512MB"

options="$option0"

chosen="$(echo -e "$options" | rofi -lines 2 -dmenu -p "Edit Configs: " -width 30)"
case $chosen in
	$option0)
		urxvt -e ssh root@8.9.5.91;;
esac
