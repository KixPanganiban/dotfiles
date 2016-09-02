#!/bin/bash
# @author Kix Panganiban <github.com/kixpanganiban>

# homebrew
if [ `which brew` ]; then
    echo "homebrew is installed! proceeding with setup."
else
    echo "homebrew not found! installing..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# nvim
if [ `which nvim` ]; then
    echo "nvim is installed! proceeding with setup."
else
    echo "nvim is not installed! installing..."
    brew install neovim/neovim/neovim
fi
ln -s .nvimrc ~/.config/nvim/init.vim

# setup dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh ~/.config/nvim/bundle
mv ~/.config/nvim/bundle/repos/github.com/Shougo/Dein.vim ~/.config/nvim/Dein.vim

echo "Dein installed! Run ':call dein#install()' inside nvim to install plugins."

# tmux
if [ `which tmux` ]; then
    echo "tmux is installed! proceeding with setup."
else
    echo "tmux is not installed! installing..."
    brew install tmux
fi
ln -s .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "tpm for tmux installed! Please run tmux and press Ctrl+A+I"

