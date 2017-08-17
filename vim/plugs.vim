call plug#begin()

" --- UI ---
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 't9md/vim-choosewin'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'

" --- Edit ---
Plug 'terryma/vim-expand-region'
Plug 'scrooloose/nerdcommenter'

" --- Lint ---
Plug 'neomake/neomake'

" --- Autocomplete ---
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neco-syntax'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neopairs.vim'
Plug 'jiangmiao/auto-pairs'

" --- incsearch ---
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'

" --- Files ---
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" --- Javascript ---
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'elzr/vim-json', {'for': ['json', 'javascript', 'javascript.jsx']}
Plug 'jaawerth/neomake-local-eslint-first', {'for': ['javascript', 'javascript.jsx']}
Plug 'carlitux/deoplete-ternjs', {'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' }

" --- HTML, Xml ---
Plug 'othree/html5.vim', {'for': ['html']}
Plug 'mattn/emmet-vim', {'on': 'EmmetInstall'}
Plug 'sukima/xmledit', {'for': ['html' , 'xhtml' , 'xml' , 'jinja']}
Plug 'Valloric/MatchTagAlways', {'for': ['html' , 'xhtml' , 'xml' , 'jinja']}

" --- Styles ---
Plug 'JulesWang/css.vim', {'for': ['css', 'less', 'scss']}
Plug 'groenewege/vim-less', {'for': ['less']}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'less', 'scss']}
Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss', 'javascript', 'javascript.jsx']}

" --- Python ---
Plug 'klen/python-mode', {'for': 'python'}
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'mitsuhiko/vim-jinja', {'for': 'python'}
Plug 'mitsuhiko/vim-python-combined', {'for': 'python'}
Plug 'jmcantrell/vim-virtualenv', {'for': 'python'}

" --- Markdown ---
Plug 'tpope/vim-markdown', {'for': 'markdown'}

" --- Git ---
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim', {'on': ['Agit','AgitFile']}
Plug 'lambdalisue/gina.vim', {'on': 'Gina'}

" --- Other ---
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-rooter'
Plug 'majutsushi/tagbar'
Plug 'tenfyzhong/tagbar-proto.vim'
Plug 'benizi/vim-automkdir'
Plug 'editorconfig/editorconfig-vim'
Plug 'aperezdc/vim-template', {'on': 'Template'}
Plug 'ryanss/vim-hackernews', {'on': 'HackerNews'}
Plug 'KabbAmine/vCoolor.vim', {'on': ['VCoolor', 'VCase']}

call plug#end()
