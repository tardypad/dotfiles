#!/usr/bin/env zsh

newsbeuter::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/newsbeuter"

  # copy config file
  local_copy "newsbeuter/newsbeuter/urls" "${CONFIG_DIR}/newsbeuter/urls"
  local_copy "newsbeuter/newsbeuter/config" "${CONFIG_DIR}/newsbeuter/config"
  local_copy "newsbeuter/newsbeuter/conf" "${CONFIG_DIR}/newsbeuter/conf"
}
