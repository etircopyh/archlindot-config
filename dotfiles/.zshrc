# 
# ▓██   ██▓ █    ██  ███▄ ▄███▓▄▄▄█████▓▓█████ ▓█████ 
#  ▒██  ██▒ ██  ▓██▒▓██▒▀█▀ ██▒▓  ██▒ ▓▒▓█   ▀ ▓█   ▀ 
#   ▒██ ██░▓██  ▒██░▓██    ▓██░▒ ▓██░ ▒░▒███   ▒███   
#   ░ ▐██▓░▓▓█  ░██░▒██    ▒██ ░ ▓██▓ ░ ▒▓█  ▄ ▒▓█  ▄ 
#   ░ ██▒▓░▒▒█████▓ ▒██▒   ░██▒  ▒██▒ ░ ░▒████▒░▒████▒
#    ██▒▒▒ ░▒▓▒ ▒ ▒ ░ ▒░   ░  ░  ▒ ░░   ░░ ▒░ ░░░ ▒░ ░
#  ▓██ ░▒░ ░░▒░ ░ ░ ░  ░      ░    ░     ░ ░  ░ ░ ░  ░
#  ▒ ▒ ░░   ░░░ ░ ░ ░      ░     ░         ░      ░   
#  ░ ░        ░            ░               ░  ░   ░  ░
#  ░ ░                                                

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

precmd() { print '' }

#------------------------------
# Variables
#------------------------------
export BROWSER='chromium'
export EDITOR='nvim'

#------------------------------
# Aliases
#------------------------------
alias root='sudo -i'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias yupdate='yay -Syu'
alias yum='yay -S'
alias remorphans='yay -Rns $(pacman -Qtdq)'
alias remcache='yay -Sc'
alias clr='clear'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias mkdir='mkdir -v'
alias rcp='rsync -v --progress'
alias chmod='chmod -c'
alias chown='chown -c'
alias ls='ls --color=auto --human-readable --group-directories-first'
alias ll='ls --color=auto --human-readable --group-directories-first -l'
alias lla='ls --color=auto --human-readable --group-directories-first -la'

#------------------------------
# Git autocomplete
#------------------------------
fpath=(~/.zsh $fpath)

#------------------------------
# Powerline
#------------------------------
prompt off
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

#------------------------------
# ZSH Autosuggestions
#------------------------------
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
