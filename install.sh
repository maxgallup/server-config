#!/bin/bash

echo "Using $1 as home directory"

echo "Backing up old files"
mv $1/.bashrc $1/.bashrc_bak 
mv $1/.bash_logout $1/.bash_logout_bak 
mv $1/.bash_aliases $1/.bash_aliases_bak 
mv $1/.bash_profile $1/.bash_profile_bak 
mv $1/.profile $1/.profile_bak 

echo "Linking new files to /home/$1"
ln -s .bashrc /home/$1/.bashrc
ln -s .bash_logout /home/$1/.bash_logout
ln -s .bash_aliases /home/$1/.bash_aliases
ln -s .profile /home/$1/.profile

