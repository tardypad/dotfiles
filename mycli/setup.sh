#!/usr/bin/env zsh

mycli::local::setup() {
  # create necessary directories
  mkdir -p "${DATA_DIR}/mycli/env"

  # copy config files
  local_copy "mycli/myclirc" "${HOME}/.myclirc"
  local_copy "mycli/my.cnf" "${HOME}/.my.cnf"
  local_copy "mycli/env" "${DATA_DIR}/mycli/env"
}
