#!/usr/bin/env zsh

mopidy::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/mopidy"

  # copy config files
  local_copy "mopidy/mopidy.conf" ".config/mopidy/mopidy.conf"
}
