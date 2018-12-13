"=====================================================
" General settings
"=====================================================

syntax on
set t_Co=256
set cursorline
set termguicolors
set background=dark
colorscheme gruvbox
let g:gruvbox_terminal_colors = 1
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

set number
set relativenumber
set backspace=indent,eol,start

set nobackup
set noswapfile
set nowritebackup

" set fillchar
set fillchars+=vert:│

" hide cmd
set noshowcmd

set nowrap

" indent
set cindent
set autoindent
set smartindent

" show wildmenu
set wildmenu

" do not break words.
set linebreak

" tab options:
set smarttab
set tabstop=4
set noexpandtab
set shiftwidth=4
set softtabstop=0

" no fold enable
set nofoldenable

set matchtime=0
set showmatch
set showmode
set complete=.,w,b,u,t

" limit completion menu height
set pumheight=15
set incsearch
set hlsearch
set laststatus=2
set wildignorecase
set hidden
set ttimeout
set lazyredraw
set inccommand=nosplit

" scrolling
set scrolloff=4
set sidescrolloff=8
set sidescroll=1

" updatetime, default 4000
set updatetime=100

" menuone: show the pupmenu when only one match
" disable preview scratch window,
set completeopt=menu,menuone,longest

" Mark tabs and trailing spaces
set list listchars=nbsp:·,tab:→\ ,trail:·,extends:>,precedes:<
set listchars=tab:>·,trail:·,nbsp:¬

" Set character encoding to use in vim
set encoding=utf-8

" Auto reload changed files
set autoread

" interaction
set mouse=a                           " enable mouse support
set mousehide                         " hide the mouse cursor while typing
set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too

" Activate a permanent ruler and add line highlightng as well as numbers.
" Also disable the sucking pydoc preview window for the omni completion
" and highlight current line and disable the blinking cursor.
set ruler
set gcr=a:blinkon0
set ttyfast

" Customize the wildmenu
set wildmenu
set wildignore+=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*/*.dSYM/*,*.dylib
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/*,*.so,*.swp,*.zip,*node_modules*
set wildmode=longest:full,full

" Hide some panels
set guioptions-=m " Hide menu bar.
set guioptions-=T " Hide toolbar
set guioptions-=L " Hide left-hand scrollbar
set guioptions-=r " Hide right-hand scrollbar
set guioptions-=b " Hide bottom scrollbar
set guioptions-=e " Hide tab
set showtabline=0 " Hide tabline

" Open new split panes to right and bottom
set splitbelow
set splitright

set concealcursor=

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Make sure Vim returns to the same line when you reopen a file.
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" Automatically adjust quickfix window depending on how much text there is
autocmd FileType qf call AdjustWindowHeight(3, 20)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

autocmd BufWinEnter quickfix nnoremap <silent> <buffer>q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) | bd | q | endif
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
autocmd BufEnter * call CleanEmptyBuffers()

set nocompatible " be iMproved, required
autocmd VimEnter * nested if argc() > 1 && !&diff | tab sball | tabfirst | endif

" Async linting
let g:ale_linters = {}
let g:ale_linters.html = []
let g:ale_linters.python = ['flake8']
let g:ale_linters.javascript = ['eslint']
let g:ale_fixers = {}
let g:ale_fixers.python = ['isort']
let g:ale_fixers.javascript = ['prettier-eslint', 'eslint']
let g:ale_maximum_file_size = 50000  " Don't lint large files (> 500KB), it can slow things down
" Make prettier play nicely with eslint-airbnb
let g:ale_javascript_prettier_options = ' --single-quote --trailing-comma all'

let g:rooter_silent_chdir = 1

let g:neosnippet#snippets_directory='~/.dotfiles/vim/snippets'
let g:neosnippet#enable_completed_snippet = 1

" Start Banner
let g:startify_files_number = 6
let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 0

let g:startify_skiplist = [
  \ 'COMMIT_EDITMSG',
  \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
  \ 'bundle/.*/doc',
  \ ]

let g:startify_custom_header = [
  \ "         ( )            ",
  \ "          H             ",
  \ "          H             ",
  \ "         _H_            ",
  \ "      .-'-.-'-.         ",
  \ "     /         \        ",
  \ "    |           |       ",
  \ "    |   .-------'._     ",
  \ "    |  / /  '.' '. \    ",
  \ "    |  \ \ @   @ / /    ",
  \ "    |   '---------'     ",
  \ "    |    _______|       ",
  \ "    |  .'-+-+-+|        ",
  \ "    |  '.-+-+-+|        ",
  \ '    |    """""" |       ',
  \ "    '-.__   __.-'       ",
  \ '         """            ']

let g:startify_list_order = [
  \ ['   Most recently used files in the current directory:'],
  \ 'dir',
  \ ['   Most recently used files:'],
  \ 'files',
  \ ['   Sessions:'],
  \ 'sessions',
  \ ['   Bookmarks:'],
  \ 'bookmarks',
  \ ]
autocmd FileType startify setlocal scrolloff=0 nowrap

" NERDTree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', '\.log$', '\.o$', '__pycache__$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeWinSize = 30
" Close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:user_emmet_leader_key='<C-z>'
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
  \  'javascript.jsx': {'extends': 'html', 'attribute_name': {
    \  'for': 'htmlFor',
    \  'class': 'className'
    \ }}
  \ }

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

autocmd FileType html,htmljinja,htmldjango,xml,javascript.jsx EmmetInstall
autocmd FileType css,less,scss setlocal iskeyword+=-

" Default file explore
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 30
let g:netrw_browse_split = 4

autocmd TermOpen * setlocal nonumber norelativenumber

function! CleanEmptyBuffers()
  let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0 && !getbufvar(v:val, "&mod")')
  if !empty(buffers)
    exe 'bw ' . join(buffers, ' ')
  endif
endfunction
