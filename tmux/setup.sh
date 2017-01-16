#!/usr/bin/zsh

setup_tmux() {
  # copy config files
  copy "tmux/tmux.conf" ".tmux.conf"
  [[ -d ~/.tmux ]] || mkdir ~/.tmux
  copy "tmux/tmux/scripts" ".tmux/scripts"
  copy "tmux/tmux/plugins.tmux" ".tmux/plugins.tmux"
  copy "tmux/tmux/conf" ".tmux/conf"

  # install the plugins manager if not present
  [[ -d ~/.tmux/plugins/tpm ]] \
    || git clone --quiet git@github.com:tmux-plugins/tpm ~/.tmux/plugins/tpm

  # install the configured plugins
  ~/.tmux/plugins/tpm/bin/install_plugins \
    > /dev/null 2>&1
}
