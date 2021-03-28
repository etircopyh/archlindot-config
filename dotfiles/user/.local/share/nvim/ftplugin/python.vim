setlocal expandtab
setlocal autoindent
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except,0#
setlocal keywordprg=pydoc
setlocal smartindent
setlocal smarttab
setlocal softtabstop=4
setlocal tabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal foldmethod=indent

let b:ale_linters = [ 'flake8', 'pep8', 'pylint' ]
let b:ale_fixers  = [ 'yapf' ]

let b:ale_warn_about_trailing_whitespace = 1

noremap <buffer> <F8> :call Autopep8()<CR>:q<CR>

" Tip 1546: Automatically add Python paths to Vim path
" if has('python')
" python << EOF
" import os
" import sys
" import vim
" for p in sys.path:
    " # Add each directory in sys.path, if it exists.
    " if os.path.isdir(p):
        " # Command 'set' needs backslash before each space.
        " vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
" EOF
" endif"has('python')
