#!/usr/bin/env zsh

zsh::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.zsh"

  # copy config files
  local_copy "zsh/zshrc" "${HOME}/.zshrc"
  local_copy "zsh/zshenv" "${HOME}/.zshenv"
  local_copy "zsh/dircolors" "${HOME}/.dircolors"
  local_copy "zsh/zsh/conf" "${HOME}/.zsh/conf"
  local_copy "zsh/zsh/scripts" "${HOME}/.zsh/scripts"
  local_copy "zsh/zsh/functions" "${HOME}/.zsh/functions"
  local_copy "zsh/zsh/completions" "${HOME}/.zsh/completions"
}
