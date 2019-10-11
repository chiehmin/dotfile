#!/bin/bash

dotfiles='gitconfig gvimrc tmux.conf vimrc zshrc'
desktop_files='vim.desktop'

home=/home/fatminmin
desktop=/home/fatminmin/.local/share/applications

for f in $dotfiles
do
	cmd="install -m644 $f ${home}/.${f}"
	echo $cmd
	$cmd
done

for f in $desktop_files
do
	cmd="install -m644 $f ${desktop}/${f}"
	echo $cmd
	$cmd
done

# install nvim
mkdir -p ~/.config/nvim
install -m644 nvimrc ~/.config/nvim/init.vim
