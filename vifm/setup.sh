#!/usr/bin/env zsh

vifm::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/vifm"

  # copy config file
  copy "vifm/vifmrc" "${CONFIG_DIR}/vifm/vifmrc"
}
