#----------------------------------------
# History settings
#----------------------------------------
HISTFILE=$ZDOTDIR/.zsh-history
HISTSIZE=10000
SAVEHIST=10000
#----------------------------------------
# Bind method
#----------------------------------------
bindkey -e
#----------------------------------------
#----------------------------------------
zstyle :compinstall filename '$ZDOTDIR/.zshrc'
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
source $ZDOTDIR/.zsh-prompt

#----------------------------------------
# Zsh syntax highlighting
#----------------------------------------
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#----------------------------------------
# Zsh autosuggestions
#----------------------------------------
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#----------------------------------------
# Sway boot
#----------------------------------------
source $ZDOTDIR/.swayboot
