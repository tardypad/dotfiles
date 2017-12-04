#!/usr/bin/env zsh

termite::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/termite"

  # copy config files
  local_copy "termite/config" "${CONFIG_DIR}/termite/config"
}
