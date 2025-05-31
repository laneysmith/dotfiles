#!/bin/bash

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  echo "Installing Oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "Oh-my-zsh is already installed."
fi
ln -s "$HOME/dotfiles/laneysmith.zsh-theme" "$HOME/.oh-my-zsh/themes/laneysmith.zsh-theme"