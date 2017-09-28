let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'hl':      ['fg', 'Statement'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Conditional'],
  \ 'marker':  ['fg', 'Conditional'],
  \ 'spinner': ['fg', 'Type']}

function! s:fzf_statusline()
  " 3c3836
  highlight default fzf1 ctermbg=237 guifg=#fb4934 guibg=#3c3836
  highlight default fzf2 ctermbg=237 guibg=#3c3836
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fzf
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
