#!/usr/bin/env zsh

mycli::local::setup() {
  # copy config files
  local_copy "mycli/myclirc" "${HOME}/.myclirc"
  local_copy "mycli/my.cnf" "${HOME}/.my.cnf"
}
