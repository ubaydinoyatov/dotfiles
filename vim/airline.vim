" --- Airline ---
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 0
let g:airline#extensions#tabline#buffers_label = 'BUFFERS'
let g:airline#extensions#tabline#tabs_label = 'TABS'

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''


let g:airline_section_y = airline#section#create(['ffenc', ' ', '%{strftime("%H:%M")}'])
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])

let g:airline_section_error = airline#section#create(['neomake_error_count'])
let g:airline_section_warning = airline#section#create(['neomake_warning_count', 'whitespace'])

let g:airline_exclude_filenames = ['DebuggerWatch', 'DebuggerStack', 'DebuggerStatus']
