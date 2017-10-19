#!/usr/bin/env zsh

rbtools::local::setup() {
  # copy config files
  local_copy "rbtools/reviewboardrc" "${HOME}/.reviewboardrc"
}
