#!/bin/bash
# @author Kix Panganiban <github.com/kixpanganiban>

# vim
if [ `which vim` ]; then
    echo "vim is installed! proceeding with setup."
else
    echo "vim is not installed! installing..."
    sudo apt install vim -y
fi
ln -s .vimrc ~/.vimrc
mkdir -p ~/.vim/autoload

# setup vim-plug
echo "installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "installed vim-plug. invoke ":PlugInstall" in vim to install plugins"

# tmux
if [ `which tmux` ]; then
    echo "tmux is installed! proceeding with setup."
else
    echo "tmux is not installed! installing..."
    sudo apt install tmux -y
fi
ln -s .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "tpm for tmux installed! Please run tmux and press Ctrl+A+I"

