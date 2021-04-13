# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1='\[\033[01;32m\][\u@\h\ \[\033[00m\]\[\033[01;31m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '

# Term-Specific Config
alias ref="source ~/.bashrc"
alias refterm="source ~/.bashrc"

# Browsing Aliases
alias cls="clear"
alias lsd="ls -a"
alias browse="lf"

# Directory Aliases
alias navhome="cd ~/"
alias navconf="cd ~/.config"
alias navetc="cd /etc/"

# Quick Config Aliases
alias bashrc="vim ~/.bashrc"
alias nbashrc="nano ~/.bashrc"
alias bspwmconf="vim ~/.config/bspwm/bspwmrc"
alias wmconf="vim ~/.config/bspwm/bspwmrc"
alias sxhkdconf="vim ~/.config/sxhkd/sxhkdrc"

# Poylbar config
alias polyconf="vim ~/.config/polybar/config"

# Neovim Config
alias nvimconf="vim ~/.config/nvim/init.vim"

# Rofi Config
alias roficonf="vim ~/.config/rofi/config.rasi"

# xbps aliases
alias sysup="sudo xbps-install -Su"
alias fsysup="sudo xbps-install -Su && sudo xbps-install -u xbps && sudo xbps-install -Su"

neofetch
