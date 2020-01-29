let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'N·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \}


" Functions
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! ChangeStatuslineColor() "{{{
    if (g:colors_name == 'solarized' && exists('g:solarized_vars'))
        let s:vars=g:solarized_vars

        if (mode() =~# '\v(n|no)')
            exe 'hi! StatusLine '.s:vars['fmt_none'].s:vars['fg_base1'].s:vars['bg_base02'].s:vars['fmt_revbb']
        elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block')
            exe 'hi! StatusLine'.s:vars['fmt_none'].s:vars['fg_green'].s:vars['bg_base02'].s:vars['fmt_revbb']
        elseif (mode() ==# 'i')
            exe 'hi! StatusLine'.s:vars['fmt_none'].s:vars['fg_red'].s:vars['bg_base02'].s:vars['fmt_revbb']
        else
            exe 'hi! StatusLine '.s:vars['fmt_none'].s:vars['fg_base1'].s:vars['bg_base02'].s:vars['fmt_revbb']
        endif
    endif

    return ''
endfunction "}}}


" Settings
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %t
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=
let &stl.='%{ChangeStatuslineColor()}'
