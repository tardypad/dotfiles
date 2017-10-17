#!/usr/bin/env zsh

tmux::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.tmux"

  # copy config files
  local_copy "tmux/tmux.conf" "${HOME}/.tmux.conf"
  local_copy "tmux/tmux/scripts" "${HOME}/.tmux/scripts"
  local_copy "tmux/tmux/plugins.tmux" "${HOME}/.tmux/plugins.tmux"
  local_copy "tmux/tmux/conf" "${HOME}/.tmux/conf"
  local_copy "tmux/tmux/images" "${HOME}/.tmux/images"

  # install the plugins manager if not present
  [[ -d "${HOME}/.tmux/plugins/tpm" ]] \
    || git clone --quiet https://github.com/tmux-plugins/tpm \
       "${HOME}/.tmux/plugins/tpm"

  # install the configured plugins
  "${HOME}/.tmux/plugins/tpm/bin/install_plugins" \
    > /dev/null 2>&1
}


tmux::remote::setup() {
  local host="$1"

  # create necessary directories
  remote_exec "${host}" '[[ -d "${HOME}/.tmux" ]] || mkdir "${HOME}/.tmux"'

  # copy config files
  remote_copy "${host}" "tmux/tmux.conf" "${HOME}/.tmux.conf"
  remote_copy "${host}" "tmux/tmux/scripts" "${HOME}/.tmux/scripts"
  remote_copy "${host}" "tmux/tmux/plugins.tmux" "${HOME}/.tmux/plugins.tmux"
  remote_copy "${host}" "tmux/tmux/conf" "${HOME}/.tmux/conf"
  remote_copy "${host}" "tmux/tmux/images" "${HOME}/.tmux/images"

  # install the plugins manager if not present
  remote_exec "${host}" '[[ -d "${HOME}/.tmux/plugins/tpm" ]] \
    || git clone --quiet https://github.com/tmux-plugins/tpm \
       "${HOME}/.tmux/plugins/tpm"'

  # install the configured plugins
  remote_exec "${host}" '"${HOME}/tmux/plugins/tpm/bin/install_plugins" \
    > /dev/null 2>&1'
}
