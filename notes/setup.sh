#!/usr/bin/env zsh

notes::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/notes"

  # copy config file
  copy "notes/config" "${CONFIG_DIR}/notes/config"
}
