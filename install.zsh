#!/bin/zsh

# install starship
rm -rf ~/.config/starship.toml
ln -s ~/github-gbo/dotfiles/starship/starship.toml ~/.config/starship.toml

# install alacritty
rm -rf ~/.config/alacritty
mkdir ~/.config/alacritty

ln -s ~/github-gbo/dotfiles/alacritty/* ~/.config/alacritty

# install git
rm -rf ~/.gitconfig
ln -s ~/github-gbo/dotfiles/git/gitconfig ~/.gitconfig

rm -rf ~/.gitignore
ln -s ~/github-gbo/dotfiles/git/gitignore ~/.gitignore

# install nvim
rm -rf ~/.config/nvim
mkdir ~/.config/nvim

ln -s ~/github-gbo/dotfiles/nvim/* ~/.config/nvim
