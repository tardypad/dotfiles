#!/usr/bin/env zsh

tmux::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.tmux"

  # copy config files
  local_copy "tmux/tmux.conf" "${HOME}/.tmux.conf"
  local_copy "tmux/tmux/scripts" "${HOME}/.tmux/scripts"
  local_copy "tmux/tmux/conf" "${HOME}/.tmux/conf"
  local_copy "tmux/tmux/images" "${HOME}/.tmux/images"
}


tmux::remote::setup() {
  local host="$1"

  # create necessary directories
  remote_exec "${host}" '[[ -d "${HOME}/.tmux" ]] || mkdir "${HOME}/.tmux"'

  # copy config files
  remote_copy "${host}" "tmux/tmux.conf" "${HOME}/.tmux.conf"
  remote_copy "${host}" "tmux/tmux/scripts" "${HOME}/.tmux/scripts"
  remote_copy "${host}" "tmux/tmux/conf" "${HOME}/.tmux/conf"
  remote_copy "${host}" "tmux/tmux/images" "${HOME}/.tmux/images"
}
