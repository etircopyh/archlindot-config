#----------------------------------------
# History settings
#----------------------------------------
HISTFILE=~/zsh-config/.zsh-history
HISTSIZE=10000
SAVEHIST=10000
#----------------------------------------
# Bind method
#----------------------------------------
bindkey -e
#----------------------------------------
#----------------------------------------
zstyle :compinstall filename '/home/yumtee/zsh-config/.zshrc'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f'
zstyle ':vcs_info:*' stagedstr '%F{112}●%f'
zstyle ':vcs_info:git:*' formats 'on %F{112} %b%f %m%u%c%E'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

#----------------------------------------
# Custom Git untracked changes hook
#----------------------------------------
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[misc]='%F{1}●%f'
  fi
}

#----------------------------------------
# ZSH Autocomplete
#----------------------------------------

autoload -Uz compinit promptinit colors vcs_info
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;
promptinit
colors
vcs_info
# End of lines added by compinstall

precmd() { print '' }
precmd_functions=( vcs_info )

#----------------------------------------
# Variables
#----------------------------------------
export BROWSER='chromium'
export EDITOR='micro'

#----------------------------------------
# Temporary Variables
#----------------------------------------
export WINEDEBUG=-all
export WINEPREFIX=~/.local/share/Steam/steamapps/common/Proton\ 4.2/dist/share/default_pfx/

#----------------------------------------
# Aliases
#----------------------------------------
alias root='sudo -i'
#alias su='sudo -i'
alias pacman='sudo pacman'
alias nano='sudo nano'
alias sctl='sudo systemctl'
alias fanmax='sudo bash -c "echo 255 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[:print:]]*/pwm1"'
alias fanmin='sudo bash -c "echo 0 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[:print:]]*/pwm1"'
alias autofan='sudo bash -c "echo 2 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[[:print:]]*/pwm1_enable"'
alias manfan='sudo bash -c "echo 1 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[[:print:]]*/pwm1_enable"'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias yays='yay -S'
alias yayrns='yay -Rns'
alias rmorphans='yay -Rns $(pacman -Qtdq)'
alias rmcache='yay -Sc'
alias sensors='watch -n 1 "sensors"'
alias clr='clear'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias mkdir='mkdir -pv'
alias rcp='rsync -v --progress'
alias chmod='chmod -c'
alias chown='chown -c'
alias own='sudo chown $USER:$USER'
alias installfont='sudo fc-cache -f -v'
alias mount='mount |column -t'
alias ls='ls --color=auto --human-readable --group-directories-first'
alias ll='ls --color=auto --human-readable --group-directories-first -l'
alias lla='ls --color=auto --human-readable --group-directories-first -la'
# Power control
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
# System info
alias meminfo='free -mlt'
alias cpuinfo='lscpu'
# Useful shortcuts
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
# Color support
#alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# alias diff='colordiff'
# alias make='colormake'
# alias gcc='colorgcc'


#----------------------------------------
# Prompt setup
#----------------------------------------
prompt off

setopt prompt_subst

PROMPT=$'%F{magenta}👤%n%E at %F{yellow}💻%m%E in %F{cyan}%B%~%b%f ${vcs_info_msg_0_} \n%F{176}λ%f %B%F{241}❯%f%b%E '
RPROMPT='%B🕒%b%F{153}%t%E'

#----------------------------------------
# Git autocomplete
#----------------------------------------
fpath=(~/zsh-config/.zsh $fpath)
