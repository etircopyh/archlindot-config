set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/setup/config.vim
source ~/.config/nvim/setup/statusline.vim

call plug#begin('~/.vim/plugged')

source ~/.config/nvim/setup/plugins.vim

call plug#end()

