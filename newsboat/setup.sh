#!/usr/bin/env zsh

newsboat::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/newsboat"

  # copy config file
  copy "newsboat/newsboat/urls" "${CONFIG_DIR}/newsboat/urls"
  copy "newsboat/newsboat/config" "${CONFIG_DIR}/newsboat/config"
  copy "newsboat/newsboat/conf" "${CONFIG_DIR}/newsboat/conf"
}
