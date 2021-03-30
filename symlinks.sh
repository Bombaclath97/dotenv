#!/bin/bash

dir=~/dotfiles

backup=~/dotfiles/dotfiles_old

files="bashrc kde4 oh-my-zsh vscode-oss zshrc"

echo -n "Creating backup folder for existing dotfiles in $backup"
mkdir -p $backup
echo "Done!"

for file in $files; do
    echo "Moving ~/.$file in $backup"
    mv ~/.$file $backup
    echo "Creating symlink for $file in home directory"
    ln -s $dir/$file ~/.$file
done 