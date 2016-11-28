#!/usr/bin/zsh

setup_zsh() {
  # copy config files
  copy "zsh/zshrc" ".zshrc"
  copy "zsh/zshenv" ".zshenv"
  copy "zsh/zsh" ".zsh"

  # install the plugins manager if not present
  [[ -d ~/.zplug ]] \
    || git clone --quiet https://github.com/zplug/zplug ~/.zplug
}
