#!/usr/bin/env bash
USER=$(whoami)

# bash
ln -sf /home/$USER/dotfiles/.bash_aliases /home/$USER/.bash_aliases
ln -sf /home/$USER/dotfiles/.bashrc /home/$USER/.bashrc
# tmux
ln -sf /home/$USER/dotfiles/.tmux /home/$USER/.tmux
ln -sf /home/$USER/dotfiles/.tmux/.tmux.conf /home/$USER/.tmux.conf
# bash competion
sudo ln -sf /home/$USER/dotfiles/.bash_completion.d/docker_compose /etc/bash_completion.d/docker-compose
sudo ln -sf /home/$USER/dotfiles/.bash_completion.d/kubectl /etc/bash_completion.d/kubectl
sudo ln -sf /home/$USER/dotfiles/.bash_completion.d/minikube /etc/bash_completion.d/minikube

