#!/usr/bin/env zsh

coreutils::setup() {
  # copy config file
  copy "coreutils/dircolors" "${HOME}/.dircolors"
}
