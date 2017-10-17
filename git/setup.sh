#!/usr/bin/env zsh

git::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/git"

  # copy config files
  local_copy "git/git/config" "${CONFIG_DIR}/git/config"
  local_copy "git/git/config.local" "${CONFIG_DIR}/git/config.local"
  local_copy "git/git/ignore" "${CONFIG_DIR}/git/ignore"
  local_copy "git/git/template" "${CONFIG_DIR}/git/template"
}
