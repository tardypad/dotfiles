#!/bin/bash

DOTFILES_DIR="$(dirname "$(readlink -f "$0")")"

link() {
  # Force create/replace the symlink.
  ln -Tfs "${DOTFILES_DIR}/${1}" "${HOME}/${2}"
}

scopy() {
  scp -q "${DOTFILES_DIR}/${1}" "${2}"
}

setup_git() {
  echo 'setup git'

  # mirror config files
  link "git/gitconfig" ".gitconfig"
  link "git/gitconfig.local" ".gitconfig.local"
  link "git/template" ".git-template"
}

setup_zsh() {
  echo 'setup zsh'

  # mirror config files
  link "zsh/zshrc" ".zshrc"
  link "zsh/zsh" ".zsh"

  # install the plugins manager if not present
  [[ -d ~/.zplug ]] \
    || git clone --quiet https://github.com/zplug/zplug ~/.zplug
}

setup_vim() {
  echo 'setup vim'

  # mirror config files
  link "vim/vimrc" ".vimrc"
  link "vim/vim" ".vim"

  # install the plugins manager if not present
  [[ -f ~/.vim/autoload/plug.vim ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
         --output ~/.vim/autoload/plug.vim

  # load only the plugins definition and install them
  vim -N --noplugin -u ~/.vim/plug.vim \
    +PlugInstall +qall \
    > /dev/null 2>&1
}

setup_tmux() {
  echo 'setup tmux'

  # mirror config files
  link "tmux/tmux.conf" ".tmux.conf"
}

setup_ssh() {
  echo 'setup ssh'

  cat "${DOTFILES_DIR}/ssh/config" "${DOTFILES_DIR}/ssh/config.local" \
    > "${HOME}/.ssh/config"
}

setup_git
setup_zsh
setup_vim
setup_tmux
setup_ssh
