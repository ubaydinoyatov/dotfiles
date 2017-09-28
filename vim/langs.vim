"=====================================================
" Autocomplete
"=====================================================

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#sources#ternjs#filetypes = [
  \ 'jsx',
  \ 'javascript',
  \ 'javascript.jsx',
  \ ]

"" Deoplete-tern settings
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 1

" To close preview window of deoplete automagically
autocmd CompleteDone * pclose

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1

" --- Python ---
let g:python_highlight_builtins = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_builtin_objs = 1
let g:python_highlight_builtin_funcs = 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_formatting = 1

" --- Go ---
let g:go_list_type = "quickfix"
let g:go_decls_mode = 'fzf'
let g:go_fmt_command = 'goimports'
let g:go_addtags_transform = "camelcase"
let g:go_term_enabled = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_build_constraints = 1
autocmd FileType go setlocal nolist

" --- Other ---
let g:vim_json_syntax_conceal = 0
autocmd FileType htmljinja,htmldjango setlocal commentstring={#\ %s\ #}
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
autocmd BufRead,BufNewFile *.wsdl setlocal filetype=xsd
