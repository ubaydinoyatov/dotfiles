"=====================================================
" User hotkeys
"=====================================================

" use space as `<Leader>`
nmap <Space> [SPC]
inoremap <Space> [SPC]
vnoremap <Space> [SPC]

let mapleader = ","

" CTRL-Z is Undo
noremap <C-z> u
inoremap <C-z> <C-O>u

" CTRL-Y is Redo
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" Select blocks after indenting
xnoremap < <gv
xnoremap > >gv|

" Use tab for indenting in visual mode
xnoremap <Tab> >gv|
nnoremap > >>_
nnoremap < <<_

" Navigation in command line
cnoremap <C-a> <Home>
cnoremap <C-l> <Left>
cnoremap <C-h> <Right>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" Toggle paste mode
nmap <silent> <leader>tp :set invpaste<CR>:set paste?<CR>

" Save a file with sudo
" http://forrst.com/posts/Use_w_to_sudo_write_a_file_with_Vim-uAN
cnoremap w!! %!sudo tee > /dev/null %

nmap <C-e> :Buffers<CR>
nmap <C-t> :TagbarToggle<CR>

" Files
nmap <C-o> :Files<CR>
nmap <C-p> :NERDTreeToggle<CR>
nmap <Leader>fo :NERDTreeFind<CR>
nmap <Leader>fg :Ag<CR>
nmap <Leader>bc :normal! ggVG"+y<CR>
nmap <Leader>bh :Startify <CR>
nmap <Leader>bs :ChooseWin <CR>

" Window
nmap <Leader>hf :History <CR>
nmap <Leader>hc :History: <CR>
nmap <Leader>hs :History/ <CR>
nmap <silent>[w :call <SID>previous_window()<cr>
nmap <silent>]w :call <SID>next_window()<cr>

" Git
map <Leader>gk :Agit <CR>
map <Leader>gf :GFiles <CR>
map <Leader>gb :AgitFile <CR>
map <Leader>gl :Gina log <CR>
map <Leader>gs :Gina status <CR>
map <Leader>gd :Gina diff <CR>

" Terminal
map <Leader>sh :sp<CR><C-w><C-w>:term<CR>
map <Leader>vsh :vsp<CR><C-w><C-w>:term<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w>w <C-\><C-n><C-w>w
tnoremap <C-w>q <C-\><C-n>: bd!<CR>

let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

let g:user_emmet_mode='a'
let g:user_emmet_leader_key = '<C-e>'

" <Tab>
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"

autocmd FileType diff,git,gina-status,gina-log nnoremap <buffer><silent> q :bd!<CR>


function! s:next_window() abort
  try
    exe (winnr() + 1 ) . 'wincmd w'
  catch
    exe 1 . 'wincmd w'
  endtry
endfunction

function! s:previous_window() abort
  try
    if winnr() == 1
      exe winnr('$') . 'wincmd w'
    else
      exe (winnr() - 1 ) . 'wincmd w'
    endif
  catch
    exe winnr('$') . 'wincmd w'
  endtry
endfunction

function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
