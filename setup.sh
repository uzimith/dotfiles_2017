#!/bin/bash

# dotfiles
DOT_FILES=(.vim .vimrc .xvimrc .emacs.d .zshrc .zshenv .zsh .tmux.conf .tmuxinator .gitconfig .ssh bin .vimperatorrc .vimperator .xvimrc .middleman .pryrc .peco)

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/Config/dotfiles/$file $HOME/$file
done

mkdir ~/.config

ln -s $HOME/Config/dotfiles/.vim/.vimshrc $HOME/.vimshrc
ln -s $HOME/Config/dotfiles/powerline-config $HOME/.config/powerline

brew install rcmdnk/file/brew-file
brew file install -f Brewfile
pip install git+git://github.com/powerline/powerline
