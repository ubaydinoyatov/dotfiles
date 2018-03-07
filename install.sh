#!/bin/bash
set -e

BACKDIR=$HOME/.old_configs
AUTOLOAD=$HOME/.vim/autoload
VIMEXE=vim

if (which nvim > /dev/null); then
  VIMRC=$HOME/.config/nvim/init.vim
  AUTOLOAD=$HOME/.config/nvim/autoload
  VIMEXE=nvim
fi

cat <<WhatWillHappen
  I detected that you're using $VIMEXE.
  I'm going to...
    - clone dotfiles into '$HOME/.dotfiles'
    - install vim-plug
    - move your existing vimrc
        from: '$VIMRC'
        to: '$BACKDIR/'
    - symlink
        from: '$VIMRC'
    and: '$HOME/.dotfiles/vimrc'
    - install all plugins listed in
        '$HOME/.dotfiles/vim/vimrc.plugs'
    - symlink gitconfig, zshrc, tmux.conf... to ~/...
  If you're not comfortable with these plans,
  you can abort now by pressing <C-c>.
WhatWillHappen

echo -n "Installing vim-plug... "
curl -sfLo $AUTOLOAD/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "done."

echo -n "Installing dotfiles... "
git clone --quiet https://github.com/rahmonzoda/dotfiles.git $HOME/.dotfiles
echo "done."

if [[ -d $BACKDIR ]]; then
  rm -rf $BACKDIR
fi
mkdir $BACKDIR

Files=(vimrc zshrc tmux.conf gitconfig editorconfig)

for f in "${Files[@]}"; do
  if [[ -f $HOME/.$f ]]; then
    echo -n "Backing up existing $f... "
    mv $HOME/.$f $BACKDIR/$f
    echo "done"
  fi

  echo -n "Linking $f... "
  ln -s $HOME/.dotfiles/$f $HOME/.$f
  echo "done."
done
