#!/usr/bin/env zsh

newsbeuter::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/newsbeuter"

  # copy config file
  local_copy "newsbeuter/newsbeuter/urls" ".config/newsbeuter/urls"
  local_copy "newsbeuter/newsbeuter/config" ".config/newsbeuter/config"
  local_copy "newsbeuter/newsbeuter/conf" ".config/newsbeuter/conf"
}
