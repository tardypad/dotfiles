#!/usr/bin/env zsh

zsh::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.zsh"

  # copy config files
  copy "zsh/zshrc" "${HOME}/.zshrc"
  copy "zsh/zshenv" "${HOME}/.zshenv"
  copy "zsh/dircolors" "${HOME}/.dircolors"
  copy "zsh/zsh/conf" "${HOME}/.zsh/conf"
  copy "zsh/zsh/scripts" "${HOME}/.zsh/scripts"
  copy "zsh/zsh/functions" "${HOME}/.zsh/functions"
  copy "zsh/zsh/completions" "${HOME}/.zsh/completions"
}
