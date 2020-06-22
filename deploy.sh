#!/usr/bin/env bash
USER=$(whoami)

# bash
ln -sf /home/$USER/dotfiles/.bash_aliases /home/$USER/.bash_aliases
ln -sf /home/$USER/dotfiles/.bashrc /home/$USER/.bashrc
# tmux
ln -sf /home/$USER/dotfiles/.tmux /home/$USER/.tmux
ln -sf /home/$USER/dotfiles/.tmux/.tmux.conf /home/$USER/.tmux.conf
# vim
ln -sf /home/$USER/dotfiles/.vim /home/$USER/.vim
ln -sf /home/$USER/dotfiles/.vimrc /home/$USER/.vimrc
