# .bashrc

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

# Varibles
# ===============================================================================================

# Term Prompt Color Codes
tblk='\[\033[01;30m\]'   # Black
tred='\[\033[01;31m\]'   # Red
tgrn='\[\033[01;32m\]'   # Green
tylw='\[\033[01;33m\]'   # Yellow
tblu='\[\033[01;34m\]'   # Blue
tpur='\[\033[01;35m\]'   # Purple
tcyn='\[\033[01;36m\]'   # Cyan
twht='\[\033[01;37m\]'   # White
tclr='\[\033[00m\]'      # Reset

# General color vars
blk='\033[01;30m'   # Black
red='\033[01;31m'   # Red
grn='\033[01;32m'   # Green
ylw='\033[01;33m'   # Yellow
blu='\033[01;34m'   # Blue
pur='\033[01;35m'   # Purple
cyn='\033[01;36m'   # Cyan
wht='\033[01;37m'   # White
clr='\033[00m'      # Reset



# Prompt
# ===============================================================================================

alias ls='ls --color=auto'

PS1=''$tgrn'[\u@\h\ '$tclr''$tred'\W'$tgrn'] '$tblu'$(git_branch)'$tgrn' => '$tclr''
#  ┌└─ ┏┗━ ┍┕ ╾ ╒╘═
#PS1='\[\033[01;32m\]┏[\u@\h\ \[\033[00m\]\[\033[01;31m\]\W\[\033[01;32m\]]\n┗━━━━━»  \[\033[00m\]'

# Functions
# ===============================================================================================

function git_branch() {   # Display current git branch as "<{branch}>"
	if [ -d .git ] ; then
		printf "%s" "<$(git branch 2> /dev/null | awk '/\*/{print $2}')>";
	fi
}

function colorblocks() {
	echo -e "${grn}green"
}

# Aliases
# ===============================================================================================

# Term-Specific Config
alias ref="source ~/.bashrc"
alias refterm="source ~/.bashrc"

# Browsing Aliases
alias cls="clear"
alias lsd="ls -a"
alias browse="lf"
alias navhome="cd ~/"
alias navconf="cd ~/.config"
alias navetc="cd /etc/"
alias cd..="cd .."

# File Manipluation Aliases
alias mkf="touch"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"


# Quick Config Aliases
alias bashrc="vim ~/.bashrc"
alias nbashrc="nano ~/.bashrc"
alias bspwmconf="vim ~/.config/bspwm/bspwmrc"
alias wmconf="vim ~/.config/bspwm/bspwmrc"
alias sxhkdconf="vim ~/.config/sxhkd/sxhkdrc"

# Poylbar config
alias polyconf="vim ~/.config/polybar"

# Neovim Config
alias nvimconf="vim ~/.config/nvim/init.vim"

# Rofi Config
alias roficonf="vim ~/.config/rofi/config.rasi"

# Neofetch Config
alias neoconf="vim ~/.config/neofetch/config.conf"

# xbps aliases
alias sysup="sudo xbps-install -Su"
alias fsysup="sudo xbps-install -Su && sudo xbps-install -u xbps && sudo xbps-install -Su"
alias xbps-listall="xbps-query -l | awk '{ print $2 }' | xargs -n1 xbps-uhelper getpkgname"

alias luamake=/home/theorytoe/lua-language-server/3rd/luamake/luamake

# startup
# ===============================================================================================

if [ -n "$visual_studio" ] ; then
	:
else
	neofetch	
fi

