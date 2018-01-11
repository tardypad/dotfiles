#!/usr/bin/env zsh

xdg-utils::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}"

  # copy config files
  copy "xdg-utils/mimeapps.list" "${CONFIG_DIR}/mimeapps.list"
}
