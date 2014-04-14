#!/bin/bash

# prepare
# - Install Xcode
# - xcode-select --install

DOT_FILES=(.vim .vimrc .xvimrc .emacs.d .zshrc .zshenv .zsh .tmux .tmux-powerlinerc .tmux.conf .gitconfig .ssh bin .vimperatorrc .vimperator .xvimrc .middleman)

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/Config/dotfiles/$file $HOME/$file
done

