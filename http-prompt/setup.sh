#!/usr/bin/env zsh

http-prompt::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/http-prompt"
  mkdir -p "${DATA_DIR}/http-prompt/env"

  # copy config file
  copy "http-prompt/config.py" "${CONFIG_DIR}/http-prompt/config.py"
  copy "http-prompt/env" "${DATA_DIR}/http-prompt/env"
}
