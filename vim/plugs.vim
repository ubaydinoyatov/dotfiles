call plug#begin()

" --- UI ---
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
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
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'

" --- Files ---
Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFind']}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" --- Javascript ---
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'styled-components/vim-styled-components', {'for': 'javascript.jsx'}
Plug 'elzr/vim-json', {'for': 'json'}

" --- HTML, Xml ---
Plug 'othree/html5.vim', {'for': ['htm', 'html']}
Plug 'mattn/emmet-vim', {'on': 'EmmetInstall'}
Plug 'Valloric/MatchTagAlways', {'for': ['htm', 'html' , 'xhtml' , 'xml']}

" --- Styles ---
Plug 'JulesWang/css.vim', {'for': ['css', 'less', 'scss']}
Plug 'groenewege/vim-less', {'for': ['less']}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'less', 'scss']}

" --- Python ---
Plug 'vim-python/python-syntax', {'for': 'python'}
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}
Plug 'zchee/deoplete-jedi', {'for': 'python'}

" --- Go ---
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'zchee/deoplete-go', {'for': 'go', 'do': 'make'}

" --- Markdown ---
Plug 'tpope/vim-markdown', {'for': 'markdown'}

" --- Git ---
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim', {'on': ['Agit','AgitFile']}
Plug 'tpope/vim-rhubarb'

" --- Other ---
Plug 'airblade/vim-rooter'
Plug 'benizi/vim-automkdir'
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'ryanss/vim-hackernews', {'on': 'HackerNews'}

call plug#end()
