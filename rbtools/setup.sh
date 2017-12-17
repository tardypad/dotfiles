#!/usr/bin/env zsh

rbtools::setup() {
  # copy config files
  copy "rbtools/reviewboardrc" "${HOME}/.reviewboardrc"
}
