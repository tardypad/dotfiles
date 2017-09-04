#!/usr/bin/env zsh

http-prompt::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/http-prompt"
  mkdir -p "${HOME}/.local/share/http-prompt/env"

  # copy config file
  local_copy "http-prompt/config.py" ".config/http-prompt/config.py"
  local_copy "http-prompt/env" ".local/share/http-prompt/env"
}
