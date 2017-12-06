#!/usr/bin/env zsh

tmux::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.tmux"

  # copy config files
  copy "tmux/tmux.conf" "${HOME}/.tmux.conf"
  copy "tmux/tmux/scripts" "${HOME}/.tmux/scripts"
  copy "tmux/tmux/conf" "${HOME}/.tmux/conf"
  copy "tmux/tmux/images" "${HOME}/.tmux/images"
}
