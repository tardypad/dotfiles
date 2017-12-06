#!/usr/bin/env zsh

ctags::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.ctags.d"

  # copy config file
  copy "ctags/main.ctags" "${HOME}/.ctags.d/main.ctags"
}
