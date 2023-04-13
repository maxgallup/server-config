#!/bin/bash

echo "Using $1 as home directory"

echo "Backing up old files"
mv $1/.bashrc $1/.bashrc_bak || echo "$1/.bashrc didn't exist"
mv $1/.bash_logout $1/.bash_logout_bak || echo "$1/.bash_logout didn't exist"
mv $1/.bash_aliases $1/.bash_aliases_bak || echo "$1/.bash_aliases didn't exist"
mv $1/.bash_profile $1/.bash_profile_bak || echo "$1/.bash_profile didn't exist"
mv $1/.profile $1/.profile_bak || echo "$1/.profile didn't exist"

echo "Linking new files to $1"
ln -s .bashrc $1/.bashrc
ln -s .bash_logout $1/.bash_logout
ln -s .bash_aliases $1/.bash_aliases
ln -s .profile $1/.profile

