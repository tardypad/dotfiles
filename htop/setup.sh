#!/usr/bin/env zsh

htop::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/htop"

  # copy config file
  copy "htop/htoprc" "${CONFIG_DIR}/htop/htoprc"
}
