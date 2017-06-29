#!/usr/bin/zsh

mycli::local::setup() {
  # copy config files
  local_copy "mycli/myclirc" ".myclirc"
}
