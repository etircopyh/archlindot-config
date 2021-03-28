let b:ale_linters                  = [ 'cargo' ]
let b:ale_fixers                   = [ 'rustfmt' ]
let b:ale_rust_cargo_use_clippy    = executable('cargo-clippy')
let b:ale_rust_analyzer_executable = 'rust-analyzer'
let b:ale_rust_analyzer_config     = {
    \ 'rust-analyzer.serverPath': 'rust-analyzer',
    \ 'rust-analyzer.checkOnSave.command': 'clippy'
    \ }

setlocal textwidth=99
setlocal spell

nmap <silent> <C-]>        <Plug>(rust-def)
nmap <silent> <C-w><C-]>   <Plug>(rust-def-vertical)
nmap <silent> <C-w>}       <Plug>(rust-def-split)
nmap <silent> <C-k>        <Plug>(rust-doc)

nmap gd <Plug>(rust-def-tab)
