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
zstyle :compinstall filename '~/zsh-config/.zshrc'
#----------------------------------------

precmd() { print '' }

#----------------------------------------
# Git settings
#----------------------------------------
source $ZDOTDIR/.git-settings

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


#----------------------------------------
# Variables
#----------------------------------------
source $ZDOTDIR/.shell-variables

#----------------------------------------
# Aliases
#----------------------------------------
source $ZDOTDIR/.shell-aliases


#----------------------------------------
# Prompt setup
#----------------------------------------
prompt off

setopt prompt_subst

PROMPT=$'%F{magenta}👽%n%f at %F{yellow}💻%m%f in %F{cyan}%B%~%b%f ${vcs_info_msg_0_} \n%F{176}λ%f %B%F{241}❯%f%b%f '
RPROMPT='%B🕒%b%F{153}%t%f'

#----------------------------------------
# Git autocomplete
#----------------------------------------
fpath=(~/zsh-config/.zsh $fpath)

#----------------------------------------
# Zsh syntax highlighting
#----------------------------------------
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#----------------------------------------
# Sway boot
#----------------------------------------
source $ZDOTDIR/.swayboot
