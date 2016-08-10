#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
files="vimrc vim zshrc zlogin tmux.conf gitconfig gitignore tmux_settings.sh vimperatorrc rubocop.yml git_loglive.sh pryrc"    # list of files/folders to symlink in homedir

##########

# create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

