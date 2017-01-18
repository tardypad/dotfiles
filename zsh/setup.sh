#!/usr/bin/zsh

setup_zsh() {
  # copy config files
  local_copy "zsh/zshrc" ".zshrc"
  local_copy "zsh/zshenv" ".zshenv"
  local_copy "zsh/zsh" ".zsh"

  # install the plugins manager if not present
  [[ -d ~/.zplug ]] \
    || git clone --quiet https://github.com/zplug/zplug ~/.zplug
}
