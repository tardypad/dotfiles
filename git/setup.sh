#!/usr/bin/env zsh

git::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/git"

  # copy config files
  copy "git/git/config" "${CONFIG_DIR}/git/config"
  copy "git/git/config.local" "${CONFIG_DIR}/git/config.local"
  copy "git/git/ignore" "${CONFIG_DIR}/git/ignore"
  copy "git/git/template" "${CONFIG_DIR}/git/template"
}
