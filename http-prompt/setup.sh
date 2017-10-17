#!/usr/bin/env zsh

http-prompt::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/http-prompt"
  mkdir -p "${DATA_DIR}/http-prompt/env"

  # copy config file
  local_copy "http-prompt/config.py" "${CONFIG_DIR}/http-prompt/config.py"
  local_copy "http-prompt/env" "${DATA_DIR}/http-prompt/env"
}
