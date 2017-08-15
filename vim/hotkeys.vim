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

" Use Q format lines
map Q gq

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

" Files
map <C-o> :Files<CR>
map <C-e> :Buffers<CR>
map <Leader>fo :NERDTreeFind<CR>
map <C-p> :NERDTreeToggle<CR>
map <Leader>fg :Ag<CR>
map <Leader>bc :normal! ggVG"+y<CR>
nnoremap bh :Startify <CR>
nnoremap bs :ChooseWin <CR>

" Window
nnoremap <Leader>wp :call <SID>previous_window() <CR>
nnoremap <Leader>wn :call <SID>next_window() <CR>
nnoremap <Leader>tt :TagbarToggle <CR>
nnoremap <Leader>hf :History <CR>
nnoremap <Leader>hc :History: <CR>
nnoremap <Leader>hs :History/ <CR>

" Git
nnoremap <Leader>gk :Agit <CR>
nnoremap <Leader>gb :AgitFile <CR>
nnoremap <Leader>gf :GFiles <CR>
nnoremap <Leader>gl :Gina log <CR>
nnoremap <Leader>gs :Gina status <CR>
nnoremap <Leader>gd :Gina diff <CR>

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
