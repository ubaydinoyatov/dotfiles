call plug#begin()

" --- UI ---
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

" --- Edit ---
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'AndrewRadev/splitjoin.vim'

" --- Lint ---
Plug 'w0rp/ale'

" --- Autocomplete ---
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neco-syntax'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neopairs.vim'
Plug 'jiangmiao/auto-pairs'

" --- search ---
Plug 'junegunn/vim-slash'

" --- Files ---
Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind']}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" --- Javascript ---
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'wokalski/autocomplete-flow', {'for': ['javascript', 'javascript.jsx']}
Plug 'styled-components/vim-styled-components', {'for': ['javascript', 'javascript.jsx'], 'branch': 'main'}

Plug 'elzr/vim-json', {'for': 'json'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}

" --- HTML, Xml ---
Plug 'othree/html5.vim', {'for': ['htm', 'html']}
Plug 'mattn/emmet-vim', {'on': 'EmmetInstall'}
Plug 'Valloric/MatchTagAlways', {'for': ['htm', 'html' , 'xhtml' , 'xml']}

" --- Styles ---
Plug 'JulesWang/css.vim', {'for': ['css', 'less', 'scss']}
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'less', 'scss']}
Plug 'groenewege/vim-less', {'for': 'less'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'wavded/vim-stylus', {'for ': 'styl'}

" --- Python ---
Plug 'vim-python/python-syntax', {'for': 'python'}
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}
Plug 'zchee/deoplete-jedi', {'for': 'python'}

" --- Go ---
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'zchee/deoplete-go', {'for': 'go', 'do': 'make'}

" --- Git ---
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" --- Other ---
Plug 'airblade/vim-rooter'
Plug 'benizi/vim-automkdir'
Plug 'editorconfig/editorconfig-vim'
Plug 'tmux-plugins/vim-tmux-focus-events'

call plug#end()
