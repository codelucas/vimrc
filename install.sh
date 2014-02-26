#!/bin/bash

# Install pathogen (recomended way to setup solarized)
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Download vim-solarized
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# While we are in the bundle file, download syntastic
git clone https://github.com/scrooloose/syntastic.git

mkdir ~/.vim/colors
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/.

cd ~/.vim_runtime
cat ~/.vim_runtime/basic.vim > ~/.vimrc
echo "Installed the Vim configuration successfully! Enjoy :-)"

# Paste in our supertab (autocomplete) plugin
cp ./plugin/supertab.vim ~/.vim/plugin/supertab.vim 
