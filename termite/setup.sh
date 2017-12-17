#!/usr/bin/env zsh

termite::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/termite"

  # copy config files
  copy "termite/config" "${CONFIG_DIR}/termite/config"
}
