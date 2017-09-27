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
set tags=./tags,tags;$HOME

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
set scrolloff=5
set incsearch
set hlsearch
set laststatus=2
set wildignorecase
set hidden
set ttimeout
set lazyredraw
set inccommand=nosplit

" menuone: show the pupmenu when only one match
" disable preview scratch window,
set completeopt=menu,menuone,longest

" Show a vertical line on a 80th character
set textwidth=80
set colorcolumn=+1

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

set nocompatible " be iMproved, required
autocmd VimEnter * nested if argc() > 1 && !&diff | tab sball | tabfirst | endif
autocmd FileType hackernews set nonumber norelativenumber colorcolumn=0

let g:tagbar_sort = 0
let g:tagbar_width = 30
let g:tagbar_compact = 0

" Async linting
let g:ale_linters = {}
let g:ale_linters.html = []
let g:ale_linters.python = ['flake8']
let g:ale_linters.javascript = ['eslint']
let g:ale_fixers = {}
let g:ale_fixers.python = ['isort']
let g:ale_fixers.javascript = ['prettier']
let g:ale_maximum_file_size = 500000  " Don't lint large files (> 500KB), it can slow things down
" Make prettier play nicely with eslint-airbnb
let g:ale_javascript_prettier_options = ' --single-quote --trailing-comma all'

let g:indentLine_color_term = 239
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 2
let g:indentLine_fileTypeExclude = ['help', 'startify', 'nerdtree', 'man', 'hackernews']

let g:rooter_silent_chdir = 1

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.dotfiles/vim/snippets'

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

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" NERDTree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeWinSize = 30
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
  \  'javascript.jsx': {'extends': 'html', 'attribute_name': {
    \  'for': 'htmlFor',
    \  'class': 'className'
    \ }}
  \ }
autocmd FileType html,htmljinja,htmldjango,xml,javascript.jsx EmmetInstall
autocmd FileType go setlocal nolist

let g:go_decls_mode = 'fzf'

" Default file explore
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 30
let g:netrw_browse_split = 4

autocmd TermOpen * call HandleTerm()

function! HandleTerm()
  setlocal nonumber
  setlocal norelativenumber
  setlocal colorcolumn=0
  execute 'IndentLinesDisable'
endfunction
