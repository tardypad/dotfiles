#!/usr/bin/env zsh

git::local::setup() {
  # create necessary directories
  mkdir -p ~/.config/git

  # copy config files
  local_copy "git/git/config" ".config/git/config"
  local_copy "git/git/config.local" ".config/git/config.local"
  local_copy "git/git/ignore" ".config/git/ignore"
  local_copy "git/git/template" ".config/git/template"
}
