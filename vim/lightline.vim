set showtabline=2   " always show tabline

let g:lightline = {}
let g:lightline.colorscheme = "gruvbox"

let g:lightline.active = {}
let g:lightline.active.left = [[ "mode", "paste" ], ["fugitive"], ["filename"]]
let g:lightline.active.right = [["lineinfo"], ["percent"], ["filetype"]]

let g:lightline.inactive = {}
let g:lightline.inactive.left = [["filename"]]
let g:lightline.inactive.right = [["lineinfo"], ["percent"]]


let g:lightline.separator = {"left": "\ue0b0", "right": "\ue0b2" }
let g:lightline.subseparator = {"left": "\ue0b1", "right": "\ue0b3" }

let g:lightline.tabline = {}
" let g:lightline.tabline.left = [["filename"]]
let g:lightline.tabline.right = [["close"]]


let g:lightline.component_expand = {}
let g:lightline.component_expand.buffercurrent = "lightline#buffer#buffercurrent2"

let g:lightline.component_type = {}
let g:lightline.component_type.buffercurrent = "tabsel"

let g:lightline.component_function = {}
let g:lightline.component_function.fugitive = "LightlineFugitive"
let g:lightline.component_function.readonly = "LightlineReadonly"
let g:lightline.component_function.modified = "LightlineModified"
let g:lightline.component_function.filename = "LightlineFilename"

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "\ue0a2"
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# "" ? "\ue0a0 ".branch : ""
  endif
  return ""
endfunction

function! LightlineFilename()
  return ("" != LightlineReadonly() ? LightlineReadonly() . " " : "") .
       \ ("" != expand("%") ? expand("%") : "[No Name]") .
       \ ("" != LightlineModified() ? " " . LightlineModified() : "")
endfunction
