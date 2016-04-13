#!/bin/bash
SRC_DIR=$PWD

# Remove old files
rm ~/.bashrc
rm ~/.dunstrc
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.xinitrc
rm ~/.config/synapse/config.json
rm ~/.config/terminator/config
rm -rf ~/.config/ranger
rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

sudo rm /etc/ssh/ssh_config

# Create link
ln -s $SRC_DIR/bash/bashrc ~/.bashrc
ln -s $SRC_DIR/dunst/dunstrc ~/.dunstrc
ln -s $SRC_DIR/tmux/tmux.conf ~/.tmux.conf
ln -s $SRC_DIR/vim/vimrc ~/.vimrc
ln -s $SRC_DIR/xinitrc ~/.xinitrc
ln -s $SRC_DIR/synapse/config.json ~/.config/synapse/config.json
ln -s $SRC_DIR/terminator/config ~/.config/terminator/config
ln -s $SRC_DIR/ranger ~/.config/ranger
ln -s $SRC_DIR/sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

sudo ln -s $SRC_DIR/ssh/ssh_config /etc/ssh/ssh_config

#clear cache
fc-cache -vf

