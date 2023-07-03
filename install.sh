#!/bin/bash

# curl https://raw.githubusercontent.com/maxgallup/server-config/main/install.sh

function error_msg() {
	echo "$HOME/$1 didn't exist"
}

sudo apt install git

mkdir $HOME/.config

cd $HOME/.config

git clone https://github.com/maxgallup/server-config.git




echo "Backing up old files"
mv $HOME/.bashrc $HOME/.bashrc_bak || error_msg .bashrc     #"$HOME/.bashrc didn't exist"
mv $HOME/.bash_logout $HOME/.bash_logout_bak || error_msg .bash_logout     #"$HOME/.bash_logout didn't exist"
mv $HOME/.bash_aliases $HOME/.bash_aliases_bak || error_msg .bash_aliases     #"$HOME/.bash_aliases didn't exist"
mv $HOME/.bash_profile $HOME/.bash_profile_bak || error_msg .bash_profile     #"$HOME/.bash_profile didn't exist"
mv $HOME/.profile $HOME/.profile_bak || error_msg .profile     #"$HOME/.profile didn't exist"

echo "Linking new files to $HOME"
ln -s $HOME/.config/server-config/.bashrc $HOME/.bashrc
ln -s $HOME/.config/server-config/.bash_logout $HOME/.bash_logout
ln -s $HOME/.config/server-config/.bash_aliases $HOME/.bash_aliases
ln -s $HOME/.config/server-config/.profile $HOME/.profile

