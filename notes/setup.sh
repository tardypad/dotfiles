#!/usr/bin/env zsh

notes::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/notes"

  # copy config file
  local_copy "notes/config" "${CONFIG_DIR}/notes/config"
}
