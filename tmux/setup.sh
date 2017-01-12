#!/usr/bin/zsh

setup_tmux() {
  # copy config files
  copy "tmux/tmux.conf" ".tmux.conf"
  [[ -d ~/.tmux ]] || mkdir ~/.tmux
  copy "tmux/tmux/scripts" ".tmux/scripts"

  # install the plugins manager if not present
  [[ -d ~/.tmux/plugins/tpm ]] \
    || git clone --quiet git@github.com:tmux-plugins/tpm ~/.tmux/plugins/tpm

  # install the configured plugins
  ~/.tmux/plugins/tpm/scripts/install_plugins.sh \
    > /dev/null 2>&1
}
