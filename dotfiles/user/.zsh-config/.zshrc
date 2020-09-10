
# For profiling ZSH
#
# zmodload zsh/zprof


setopt EXTENDED_GLOB                        # Needed for file modification glob modifiers with compinit

#----------------------------------------
# History settings
#----------------------------------------
HISTFILE=$ZDOTDIR/.zsh-history
HISTSIZE=10000
SAVEHIST=10000

#----------------------------------------
# ZSH time output format
#----------------------------------------
TIMEFMT=$'\n> %J\n\nCPU\t%P\nUser\t%*U\nSystem\t%*S\nTotal\t%*E\nMemory\t%Mkb'

#----------------------------------------
# Bind method
#----------------------------------------
bindkey -e
#----------------------------------------
#----------------------------------------
# zstyle :compinstall filename '$ZDOTDIR/.zshrc'
#----------------------------------------

#----------------------------------------
# Tmux startup
#----------------------------------------
# if [[ $DISPLAY ]] && [[ -x $(command -v tmux) ]]; then
    # # If not running interactively, do not do anything
    # [[ $- != *i* ]] && return
    # [[ -z "$TMUX" ]] && exec tmux
# fi


#----------------------------------------
# Git settings
#----------------------------------------
if [[ -x $(command -v git) ]] && [[ ! -x $(command -v starship) ]]; then
    source $ZDOTDIR/.git-settings
fi


#----------------------------------------
# ZSH Autocomplete
#----------------------------------------
# Load and initialize the completion system ignoring insecure directories with a
# cache time of 20 hours, so it should almost always regenerate the first time a
# shell is opened each day.
autoload -Uz compinit
_comp_files="${ZDOTDIR:-$HOME}/.zcompdump"
# #q expands globs in conditional expressions
if [[ $_comp_path(#qNmh-20) ]]; then
    # -C (skip function check) implies -i (skip security check).
    compinit -C -d "$_comp_path"
else
    mkdir -p "$_comp_path:h"
    compinit -i -d "$_comp_path"
fi
unset _comp_files

# if [[ -f $ZDOTDIR/.compinit-zsh ]]; then
    # source $ZDOTDIR/.compinit-zsh
# fi


#----------------------------------------
# Variables
#----------------------------------------
if [[ -f $ZDOTDIR/.shell-variables ]]; then
    source $ZDOTDIR/.shell-variables
fi


#----------------------------------------
# Aliases
#----------------------------------------
if [[ -f $ZDOTDIR/.shell-aliases ]]; then
    source $ZDOTDIR/.shell-aliases
fi


#----------------------------------------
# Prompt setup
#----------------------------------------
if [[ -f $(command -v starship) ]]; then
    function set_win_title(){
        echo -ne "\033]0; $STARSHIP_SHELL:$PWD \007"
    }
    precmd_functions+=(set_win_title)

    export STARSHIP_CONFIG=~/.config/starship/starship.toml
    eval "$(starship init zsh)"
elif [[ ! -x $(command -v starship) ]] && [[ -f $ZDOTDIR/.zsh-prompt ]]; then
    source $ZDOTDIR/.zsh-prompt
fi


#----------------------------------------
# ZSH syntax highlighting
#----------------------------------------
# if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    # source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# fi
#
# if [[ -f /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]]; then
    # source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# fi


#----------------------------------------
# ZSH autosuggestions
#----------------------------------------
# if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    # source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# fi


#----------------------------------------
# ZSH history substring search
#----------------------------------------
# if [[ -f /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ]]; then
    # source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
    # bindkey '^[[1;5A' history-substring-search-up
    # bindkey '^[[1;5B' history-substring-search-down
# fi


#----------------------------------------
# FZF
#----------------------------------------
# if [[ -x $(command fzf) ]]; then
    # source /usr/share/fzf/completion.zsh
    # source /usr/share/fzf/key-bindings.zsh
    # source $ZDOTDIR/.zsh/functions/fnd.sh

    # export FZF_DEFAULT_OPTS='--height=96% --reverse --preview="bat -p {}" --preview-window=right:60%:wrap'
    # export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "\!{node_modules,.git}"'
    # export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
# fi


#----------------------------------------
# Skim
#----------------------------------------
if [[ -x $(command -v sk) ]]; then
    source /usr/share/skim/completion.zsh
    source /usr/share/skim/key-bindings.zsh

    export SKIM_DEFAULT_OPTIONS='--ansi --reverse --color=always --preview="bat --color always --decorations never {}" --preview-window=right:60%:wrap'
    export SKIM_DEFAULT_COMMAND='fd --hidden --type f --ignore-file ~/.config/git/ignore'
    export SKIM_CTRL_R_OPTS='--preview="" --preview-window=hidden'
    export SKIM_CTRL_T_COMMAND='fd --hidden --type f --ignore-file ~/.config/git/ignore'
fi


#----------------------------------------
# Command not found handler
#----------------------------------------
if [[ ! -f $GRML_ZSH_CNF_HANDLER ]]; then
    export GRML_ZSH_CNF_HANDLER='/usr/share/doc/pkgfile/command-not-found.zsh'
fi
# elif [[ -x $(command pkgfile) ]] && [[ -z $GRML_ZSH_CNF_HANDLER ]]; then
    # source /usr/share/doc/pkgfile/command-not-found.zsh
# fi


#----------------------------------------
# Sway boot
#----------------------------------------
if [[ -x $(command -v sway) ]]; then
    source $ZDOTDIR/.swayboot
fi


#----------------------------------------
# Zinit
#----------------------------------------

if [[ ! -f $ZINIT[BIN_DIR]/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma/zinit "$ZINIT[BIN_DIR]" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$ZINIT[BIN_DIR]/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

if [[ -f $ZINIT[BIN_DIR]/zinit.zsh ]]; then
    source $ZDOTDIR/.zplugins
fi
