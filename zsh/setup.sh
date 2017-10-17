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
  local_copy "zsh/zsh/completion" "${HOME}/.zsh/completion"
  local_copy "zsh/zsh/plugins.zsh" "${HOME}/.zsh/plugins.zsh"

  # install the plugins manager if not present
  [[ -d "${HOME}/.zplug" ]] \
    || git clone --quiet https://github.com/zplug/zplug "${HOME}/.zplug"

  # install the configured plugins if some are missing
  source "${HOME}/.zsh/plugins.zsh"
  if ! zplug check; then
    zplug install > /dev/null 2>&1
  fi
}
