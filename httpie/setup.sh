#!/usr/bin/env zsh

httpie::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.httpie"

  # copy config file
  local_copy "httpie/config.json" ".httpie/config.json"
}
