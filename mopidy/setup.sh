#!/usr/bin/env zsh

mopidy::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/mopidy"

  # copy config files
  local_copy "mopidy/mopidy.conf" "${CONFIG_DIR}/mopidy/mopidy.conf"
}
