#!/usr/bin/env zsh

fontconfig::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/fontconfig"

  # copy config files
  copy "fontconfig/fonts.conf" "${CONFIG_DIR}/fontconfig/fonts.conf"
}
