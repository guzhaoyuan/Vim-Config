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

read -r -p "Do you want to install YouCompleteMe(may fail)? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	#check Cmake installed
	sudo apt-get install cmake
	#check Python headers installed
	sudo apt-get install python-dev
	#install YouCompleteMe
	cd ~/.vim/bundle/YouCompleteMe
	./install.py
else
	rm -r ~/.vim/bundle/YouCompleteMe
fi

#finish
echo "install complete"
vim
