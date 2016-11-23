#!/bin/bash

DOTFILES_DIR="$(dirname "$(readlink -f "$0")")"

copy() {
  cp --recursive --force --no-target-directory \
    "${DOTFILES_DIR}/${1}" "${HOME}/${2}"
}

setup_git() {
  echo 'setup git'

  # copy config files
  copy "git/gitconfig" ".gitconfig"
  copy "git/gitconfig.local" ".gitconfig.local"
  copy "git/template" ".git-template"
}

setup_zsh() {
  echo 'setup zsh'

  # copy config files
  copy "zsh/zshrc" ".zshrc"
  copy "zsh/zsh" ".zsh"

  # install the plugins manager if not present
  [[ -d ~/.zplug ]] \
    || git clone --quiet https://github.com/zplug/zplug ~/.zplug
}

setup_vim() {
  echo 'setup vim'

  # copy config files
  copy "vim/vimrc" ".vimrc"
  [[ -d ~/.vim ]] || mkdir ~/.vim
  copy "vim/vim/plug.vim" ".vim/plug.vim"
  copy "vim/vim/plug" ".vim/plug"
  copy "vim/vim/conf" ".vim/conf"

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

  # copy config files
  copy "tmux/tmux.conf" ".tmux.conf"
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
