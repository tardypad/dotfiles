#!/usr/bin/env zsh

newsboat::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/newsboat"

  # copy config file
  local_copy "newsboat/newsboat/urls" "${CONFIG_DIR}/newsboat/urls"
  local_copy "newsboat/newsboat/config" "${CONFIG_DIR}/newsboat/config"
  local_copy "newsboat/newsboat/conf" "${CONFIG_DIR}/newsboat/conf"
}
