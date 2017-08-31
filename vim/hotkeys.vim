"=====================================================
" User hotkeys
"=====================================================

let mapleader = ","

" Duplicate lines
nnoremap <Leader>d m`YP``
vnoremap <Leader>d YPgv

" Fast saving
nnoremap <silent><C-s> :<C-u>write<CR>
vnoremap <silent><C-s> :<C-u>write<CR>
cnoremap <silent><C-s> <C-u>write<CR>

" Move right / left
xnoremap < <gv
xnoremap > >gv|

" Move up / down with Alt + j / k
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Navigation in command line
cnoremap <C-a> <Home>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

" Set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" Toggle paste mode
nmap <silent> <leader>tp :set invpaste<CR>:set paste?<CR>

nmap <C-e> :Buffers<CR>
nmap <Leader>bd :bd <CR>
nmap <Leader>by :normal! ggVG"+y<CR>
nmap <Leader>bh :Startify <CR>

" Files
nmap <C-o> :Files<CR>
nmap <C-t> :TagbarToggle<CR>
nmap <C-p> :NERDTreeToggle<CR>
nmap <Leader>fo :NERDTreeFind<CR>
nmap <Leader>fg :Ag<CR>

" Window
nnoremap <silent> <Leader>+ :resize +5<CR>
nnoremap <silent> <Leader>- :resize -5<CR>
nnoremap <silent> <Leader>v+ :vertical resize +5<CR>
nnoremap <silent> <Leader>v- :vertical resize -5<CR>

" Git
map <Leader>gk :Agit <CR>
map <Leader>gd :Gdiff <CR>
map <Leader>gf :GFiles <CR>
map <Leader>gs :Gstatus <CR>
map <Leader>gb :AgitFile <CR>
map <Leader>gl :Gina log <CR>

nmap <Leader>hf :History <CR>
nmap <Leader>hc :History: <CR>
nmap <Leader>hs :History/ <CR>

" Terminal
nnoremap <Leader>ts :bo sp term://zsh\|resize 20<Cr>i
nnoremap <Leader>tv :bo vsp term://zsh<Cr>i

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
map z#  <Plug>(asterisk-z#)
map gz* <Plug>(asterisk-gz*)
map gz# <Plug>(asterisk-gz#)

" <Tab>
imap <C-k> <Plug>(neosnippet_expand_or_jump)
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"

" Improve scroll, credits: https://github.com/Shougo
nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
  \ 'zt' : (winline() == 1) ? 'zb' : 'zz'
noremap <expr> <C-f> max([winheight(0) - 2, 1])
  \ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
  \ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

autocmd FileType help,diff,git,gina-log,man,hackernews nnoremap <buffer><silent> q :bd!<CR>

function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
