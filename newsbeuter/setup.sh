#!/usr/bin/env zsh

newsbeuter::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/newsbeuter"

  # copy config file
  local_copy "newsbeuter/newsbeuter/urls" ".config/newsbeuter/urls"
}
