#!/usr/bin/zsh

setup_tmux() {
  # copy config files
  copy "tmux/tmux.conf" ".tmux.conf"

  # install the plugins manager if not present
  [[ -d ~/.tmux/plugins/tpm ]] \
    || git clone --quiet git@github.com:tmux-plugins/tpm ~/.tmux/plugins/tpm
}
