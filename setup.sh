#!/bin/bash

# prepare
# - Install Xcode
# - xcode-select --install

# dotfiles
DOT_FILE=(.vim .vimrc .xvimrc .emacs.d .zshrc .zshenv .zsh .tmux.conf .tmuxinator .gitconfig .ssh bin .vimperatorrc .vimperator .xvimrc .middleman .pryrc .peco)

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/Config/dotfiles/$file $HOME/$file
done

ln -s $HOME/Config/dotfiles/.vim/.vimshrc $HOME/.vimshrc
ln -s $HOME/Config/dotfiles/powerline-config $HOME/.config/powerline

# homebrew
brew bundle
