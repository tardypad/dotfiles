#!/usr/bin/zsh

tmux::local::setup() {
  # create necessary directories
  mkdir -p ~/.tmux

  # copy config files
  local_copy "tmux/tmux.conf" ".tmux.conf"
  local_copy "tmux/tmux/scripts" ".tmux/scripts"
  local_copy "tmux/tmux/plugins.tmux" ".tmux/plugins.tmux"
  local_copy "tmux/tmux/conf" ".tmux/conf"
  local_copy "tmux/tmux/images" ".tmux/images"

  # install the plugins manager if not present
  [[ -d ~/.tmux/plugins/tpm ]] \
    || git clone --quiet https://github.com/tmux-plugins/tpm \
       ~/.tmux/plugins/tpm

  # install the configured plugins
  ~/.tmux/plugins/tpm/bin/install_plugins \
    > /dev/null 2>&1
}


tmux::remote::setup() {
  local host="$1"

  # create necessary directories
  ssh -n "${host}" '[[ -d ~/.tmux ]] || mkdir ~/.tmux'

  # copy config files
  remote_copy "${host}" "tmux/tmux.conf" ".tmux.conf"
  remote_copy "${host}" "tmux/tmux/scripts" ".tmux/scripts"
  remote_copy "${host}" "tmux/tmux/plugins.tmux" ".tmux/plugins.tmux"
  remote_copy "${host}" "tmux/tmux/conf" ".tmux/conf"
  remote_copy "${host}" "tmux/tmux/images" ".tmux/images"

  # install the plugins manager if not present
  ssh -n "${host}" '[[ -d ~/.tmux/plugins/tpm ]] \
    || git clone --quiet https://github.com/tmux-plugins/tpm \
       ~/.tmux/plugins/tpm'

  # install the configured plugins
  ssh -n "${host}" '~/.tmux/plugins/tpm/bin/install_plugins \
    > /dev/null 2>&1'
}
