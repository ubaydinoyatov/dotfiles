"=====================================================
" User hotkeys
"=====================================================

let mapleader = '\'

" C-a to select all buffer
nnoremap <C-a> ggVG

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

" Replace
nnoremap <leader>s :%s//<left>
vnoremap <leader>s :s//<left><Paste>

" Moving between splits
noremap <leader>w <C-w>w

" Navigation in command line
cnoremap <C-a> <Home>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

inoremap <C-l> <Right>

" Set text wrapping toggles
nnoremap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" Toggle paste mode
nnoremap <silent> <leader>tp :set invpaste<CR>:set paste?<CR>

nnoremap <C-e> :Buffers<CR>
nnoremap <Leader>bd :bd <CR>
nnoremap <Leader>bh :Startify <CR>

" Files
nnoremap <C-o> :Files<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-p> :NERDTreeToggle<CR>
nnoremap <Leader>fo :NERDTreeFind<CR>
nnoremap <Leader>fg :Ag<CR>

" Window
nnoremap <silent> <Leader>+ :resize +5<CR>
nnoremap <silent> <Leader>- :resize -5<CR>
nnoremap <silent> <Leader>v+ :vertical resize +5<CR>
nnoremap <silent> <Leader>v- :vertical resize -5<CR>

" Git
nnoremap <Leader>gk :Agit <CR>
nnoremap <Leader>gd :Gdiff <CR>
nnoremap <Leader>gf :GFiles <CR>
nnoremap <Leader>gs :Gstatus <CR>
nnoremap <Leader>gb :AgitFile <CR>
nnoremap <Leader>gl :Commits <CR>
nnoremap <Leader>go :Gbrowse <CR>

nnoremap <Leader>hf :History <CR>
nnoremap <Leader>hc :History: <CR>
nnoremap <Leader>hs :History/ <CR>

nnoremap <C-l> :Lines<CR>

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

" Cursor position after expanding tag
autocmd FileType html,xhtml,xml,javascript.jsx inoremap <expr> <CR> TagExpander()

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

autocmd FileType help,diff,git,gina-log,man,hackernews nnoremap <buffer><silent> q :bd!<CR>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction

function! TagExpander()
  let line   = getline(".")
  let col    = col(".")
  let first  = line[col-2]
  let second = line[col-1]
  let third  = line[col]

  if first ==# ">"
    if second ==# "<" && third ==# "/"
      return "\<CR>\<C-o>==\<C-o>O"
    else
      return "\<CR>"
    endif
  else
    return "\<CR>"
  endif
endfunction
