#!/usr/bin/env zsh

ncmpcpp::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/ncmpcpp"
  mkdir -p "${DATA_DIR}/ncmpcpp"

  # copy config files
  copy "ncmpcpp/config" "${CONFIG_DIR}/ncmpcpp/config"
  copy "ncmpcpp/bindings" "${CONFIG_DIR}/ncmpcpp/bindings"
}
