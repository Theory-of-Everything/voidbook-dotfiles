#!/bin/bash
# (@)/reconfigure

nvim_dir="$HOME/.config/nvim/"

# If No Args Entered
if [ $# -lt 1 ] ; then
	echo "Enter in a command for Neovim Nightly Config:"
	echo ""
	echo "update: Update nevim configs to the lua couterpart"
	echo ""
	echo "restore: Restore the old .vim init files to config" 
	echo "	Moving all of the lua configs to /nvim_config_nightly/"
	echo ""
	exit 1
fi

# Update Neovim to Lua configs
if [ $1 = "update" ] ; then
	cp -r -v lua/ ${nvim_dir}
    cp -r -v plugin/ ${nvim_dir}
	cp -v init_nightly.lua ${nvim_dir}init.lua
	mv -v ${nvim_dir}init.vim ${nvim_dir}init_old.vim
	exit 1
fi

# Update Neovim configs to Normal Configs
if [ $1 = "restore" ] ; then
	cp -r -v ${nvim_dir}lua/ lua/
    cp -r -v ${nvim_dir}plugin/ plugin/
	cp -v ${nvim_dir}init.lua init_nightly.lua
	mv -v ${nvim_dir}init_old.vim ${nvim_dir}init.vim
    rm -r -v ${nvim_dir}lua/
    rm -r -v ${nvim_dir}plugin/
    rm -v ${nvim_dir}init.lua
	exit 1
fi

