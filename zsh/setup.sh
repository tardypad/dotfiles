#!/usr/bin/zsh

local_setup_zsh() {
  # copy config files
  local_copy "zsh/zshrc" ".zshrc"
  local_copy "zsh/zshenv" ".zshenv"
  [[ -d ~/.zsh ]] || mkdir ~/.zsh
  local_copy "zsh/zsh/conf" ".zsh/conf"
  local_copy "zsh/zsh/completion" ".zsh/completion"
  local_copy "zsh/zsh/plugins.zsh" ".zsh/plugins.zsh"

  # install the plugins manager if not present
  [[ -d ~/.zplug ]] \
    || git clone --quiet https://github.com/zplug/zplug ~/.zplug
}
