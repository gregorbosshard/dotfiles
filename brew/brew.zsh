#!/bin/zsh

brew update
brew upgrade

brew install git
brew install gh
brew install starship

brew install --cask google-chrome
brew install --cask 1password
brew install --cask alacritty

brew tap homebrew/cask-fonts
brew install --cask homebrew/cask-fonts/font-monaspace-nerd-font

brew cleanup

