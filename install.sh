#!/bin/bash

#backup original .vim/ and .vimrc
if [ -e ~/.vim ]
then
	mv ~/.vim/ ~/.vim_backup/
	echo ".vim/ exists, backup .vim/ to .vim_backup"
fi

if [ -e ~/.vimrc  ]
then
	mv ~/.vimrc ~/.vimrc_backup
	echo ".vimrc exists, backup .vimrc to .vimrc_backup"
fi

#copy file to home directory
cp -r .vim ~/
cp .vimrc ~/

#install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py

#finish
echo "install complete"
vim
