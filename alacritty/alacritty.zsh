#!/bin/zsh

rm -rf ~/.config/alacritty
mkdir ~/.config/alacritty

rm -rf ~/.config/alacritty/alacritty.toml
ln -s ~/github-gbo/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

rm -rf ~/.config/alacritty/catppuccin-latte.toml
ln -s ~/github-gbo/dotfiles/alacritty/catppuccin-latte.toml ~/.config/alacritty/catppuccin-latte.toml

rm -rf ~/.config/alacritty/catppuccin-frappe.toml
ln -s ~/github-gbo/dotfiles/alacritty/catppuccin-frappe.toml ~/.config/alacritty/catppuccin-frappe.toml

rm -rf ~/.config/alacritty/catppuccin-macchiato.toml
ln -s ~/github-gbo/dotfiles/alacritty/catppuccin-macchiato.toml ~/.config/alacritty/catppuccin-macchiato.toml

rm -rf ~/.config/alacritty/catppuccin-mocha.toml
ln -s ~/github-gbo/dotfiles/alacritty/catppuccin-mocha.toml ~/.config/alacritty/catppuccin-mocha.toml