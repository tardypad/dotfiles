#!/usr/bin/zsh

local_setup_tmux() {
  # copy config files
  local_copy "tmux/tmux.conf" ".tmux.conf"
  [[ -d ~/.tmux ]] || mkdir ~/.tmux
  local_copy "tmux/tmux/scripts" ".tmux/scripts"
  local_copy "tmux/tmux/plugins.tmux" ".tmux/plugins.tmux"
  local_copy "tmux/tmux/conf" ".tmux/conf"

  # install the plugins manager if not present
  [[ -d ~/.tmux/plugins/tpm ]] \
    || git clone --quiet git@github.com:tmux-plugins/tpm ~/.tmux/plugins/tpm

  # install the configured plugins
  ~/.tmux/plugins/tpm/bin/install_plugins \
    > /dev/null 2>&1
}
