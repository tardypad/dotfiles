#!/usr/bin/env zsh

ctags::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.ctags.d"

  # copy config file
  local_copy "ctags/main.ctags" "${HOME}/.ctags.d/main.ctags"
}
