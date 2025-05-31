#!/bin/bash

DOTFILES=(.gitconfig .gitignore_global)
for dotfile in "${DOTFILES[@]}"; do
    rm "${HOME}/${dotfile}"
	ln -sf "${DOTFILE_DIRECTORY}/apps/${dotfile}" "${HOME}/"
done