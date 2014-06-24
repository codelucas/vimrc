#!/bin/bash

# Set up directory structure and install pathogen 
# (recomended way to setup solarized)
mkdir -p ~/.vim/autoload ~/.vim/bundle;
mkdir -p ~/.vim/doc ~/.vim/plugin;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;

# Paste in our supertab (autocomplete) plugin
cp ~/.vim_runtime/plugin/supertab.vim ~/.vim/plugin/.
cp ~/.vim_runtime/doc/supertab.txt ~/.vim/doc/.

cd ~/.vim/bundle

# Download vim-solarized
git clone git://github.com/altercation/vim-colors-solarized.git

# While we are in the bundle file, download syntastic
git clone https://github.com/scrooloose/syntastic.git

mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/.

# Move back to our project directory
cat ~/.vim_runtime/basic.vim > ~/.vimrc
echo "Installed the Vim configuration successfully! Enjoy :-)"
