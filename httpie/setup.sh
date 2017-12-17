#!/usr/bin/env zsh

httpie::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.httpie"

  # copy config file
  copy "httpie/config.json" "${HOME}/.httpie/config.json"
}
