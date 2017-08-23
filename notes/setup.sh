#!/usr/bin/env zsh

notes::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/notes"

  # copy config file
  local_copy "notes/config" ".config/notes/config"
}
