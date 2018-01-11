#!/usr/bin/env zsh

vifm::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/vifm"
  mkdir -p "${CONFIG_DIR}/vifm/colors"

  # copy config files
  copy "vifm/vifmrc" "${CONFIG_DIR}/vifm/vifmrc"
  copy "vifm/solarized-dark.vifm" "${CONFIG_DIR}/vifm/colors/solarized-dark.vifm"
}
