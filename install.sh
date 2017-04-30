#!/usr/bin/env bash

# Get current dir

export DOTFILES_DIR
DOTFILES_DIR="$(cd "$(dirname "$0")"; pwd -P)"

echo "Dotfiles: $DOTFILES_DIR"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Set up symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~ 
