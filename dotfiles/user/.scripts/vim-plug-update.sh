#!/usr/bin/env bash

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ] || [ "$(/usr/bin/diff ~/.local/share/nvim/site/autoload/plug.vim <(curl -fsSL https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim))" ]; then
    echo 'Updating vim-plug...'
    exec curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
elif [ ! -d ~/.local/share/nvim/plugged/ ] || [ ! "$(/usr/bin/ls -A ~/.local/share/nvim/plugged/)" ]; then
    echo 'Installing plugins...'
    exec nvim -es -u init.vim -i NONE -c "PlugInstall" -c "qa"
else
    echo 'vim-plug is up to date'
fi
