#!/usr/bin/env zsh

http-prompt::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/http-prompt"

  # copy config file
  local_copy "http-prompt/config.py" ".config/http-prompt/config.py"
}
