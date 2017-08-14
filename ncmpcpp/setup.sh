#!/usr/bin/env zsh

ncmpcpp::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.ncmpcpp"

  # copy config files
  local_copy "ncmpcpp/config" ".ncmpcpp/config"
  local_copy "ncmpcpp/bindings" ".ncmpcpp/bindings"
}
