#!/usr/bin/env zsh

ncmpcpp::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/ncmpcpp"
  mkdir -p "${DATA_DIR}/ncmpcpp"

  # copy config files
  local_copy "ncmpcpp/config" "${CONFIG_DIR}/ncmpcpp/config"
  local_copy "ncmpcpp/bindings" "${CONFIG_DIR}/ncmpcpp/bindings"
}
