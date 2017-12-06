#!/usr/bin/env zsh

mycli::setup() {
  # create necessary directories
  mkdir -p "${DATA_DIR}/mycli/env"

  # copy config files
  copy "mycli/myclirc" "${HOME}/.myclirc"
  copy "mycli/my.cnf" "${HOME}/.my.cnf"
  copy "mycli/env" "${DATA_DIR}/mycli/env"
}
