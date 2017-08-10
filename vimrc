call plug#begin()

try
  source ~/.dotfiles/vim/vimrc.plugs
catch
endtry

call plug#end()

try
  source ~/.dotfiles/vim/vimrc.settings
catch
endtry

try
  source ~/.dotfiles/vim/vimrc.hotkeys
catch
endtry

try
  source ~/.dotfiles/vim/vimrc.langs
catch
endtry
