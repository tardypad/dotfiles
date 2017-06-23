#!/usr/bin/zsh

mopidy::local::setup() {
  # create necessary directories
  mkdir -p ~/.config/mopidy

  # copy config files
  local_copy "mopidy/mopidy.conf" ".config/mopidy/mopidy.conf"
}
