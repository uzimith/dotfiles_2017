#!/bin/bash

# prepare
# - Install Xcode
# - xcode-select --install

# dotfiles
DOT_FILES=(.vim .xvimrc .emacs.d .zshrc .zshenv .zsh .tmux.conf .tmuxinator .gitconfig .ssh bin .vimperatorrc .vimperator .xvimrc .middleman .pryrc .peco)

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/Config/dotfiles/$file $HOME/$file
done

mkdir ~/.config

ln -s $HOME/Config/dotfiles/.vim/.vimshrc $HOME/.vimshrc
ln -s $HOME/Config/dotfiles/powerline-config $HOME/.config/powerline

# osxc
sudo easy_install pip
sudo pip install ansible
cd starter
sudo ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml
