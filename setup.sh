#!/bin/bash

# prepare
# - Install Xcode
# - xcode-select --install

# dotfiles
DOT_FILES=(.vim .vimrc .xvimrc .emacs.d .zshrc .zshenv .zsh .tmux .tmux-powerlinerc .tmux.conf .gitconfig .ssh bin .vimperatorrc .vimperator .xvimrc .middleman .pryrc)

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/Config/dotfiles/$file $HOME/$file
done

ln -s $HOME/Config/dotfiles/.vim/.vimshrc $HOME/.vimshrc

# homebrew
brew bundle
