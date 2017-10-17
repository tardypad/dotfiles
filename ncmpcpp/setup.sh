#!/usr/bin/env zsh

ncmpcpp::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.ncmpcpp"

  # copy config files
  local_copy "ncmpcpp/config" "${HOME}/.ncmpcpp/config"
  local_copy "ncmpcpp/bindings" "${HOME}/.ncmpcpp/bindings"
}
