#!/bin/bash

cwd=$(pwd)

# Set up directory structure and install pathogen 
# (recomended way to setup solarized)
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
mkdir -p ~/.vim/doc ~/.vim/plugin; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Paste in our supertab (autocomplete) plugin
cp ./plugin/supertab.vim ~/.vim/plugin/.
cp ./doc/supertab.txt ~/.vim/doc/.

cd ~/.vim/bundle

# Download vim-solarized
git clone git://github.com/altercation/vim-colors-solarized.git

# While we are in the bundle file, download syntastic
git clone https://github.com/scrooloose/syntastic.git

mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/.

# Move back to our project directory
cd $cwd
cat ./basic.vim > ~/.vimrc
echo "Installed the Vim configuration successfully! Enjoy :-)"
