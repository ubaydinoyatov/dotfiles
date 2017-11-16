" --- Airline ---
let g:airline_theme='gruvbox'
let g:airline_detect_crypt = 0
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

let spc = "\ua0"
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.space = "".spc
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''


function! LineNoIndicator()
  let s:line_no_indicator_chars = ['⎺', '⎻', '─', '⎼', '⎽']
  " Zero indexed so line 2/3 becomes 1/2 == 50%
  let l:current_line = line(".") - 1
  let l:total_lines = line("$") - 1

  if l:current_line == 0
    let l:index = 0
  elseif l:current_line == l:total_lines
    let l:index = -1
  else
    let l:line_no_fraction = floor(l:current_line) / floor(l:total_lines)
    let l:index = float2nr(l:line_no_fraction * len(s:line_no_indicator_chars))
  endif

  return s:line_no_indicator_chars[l:index]
endfunction

let g:airline_section_y = '%{LineNoIndicator()}'
let g:airline_section_z = '%2c'
