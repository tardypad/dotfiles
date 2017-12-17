#!/usr/bin/env zsh

mopidy::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/mopidy"

  # copy config files
  copy "mopidy/mopidy.conf" "${CONFIG_DIR}/mopidy/mopidy.conf"
}
