#!/bin/bash

# dotfiles
DOT_FILES=(.config .tmux.conf .tmuxinator .gitconfig .gitignore_global .ssh bin .tigrc .vimperatorrc .vimperator .pryrc .eslintrc.json)

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/dotfiles/$file $HOME/$file
done

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
pip install git+git://github.com/powerline/powerline
