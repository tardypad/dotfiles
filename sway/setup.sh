#!/usr/bin/env zsh

sway::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/sway"
  mkdir -p "${DATA_DIR}/sway"

  # copy config files
  local_copy "sway/config" "${CONFIG_DIR}/sway/config"
  local_copy "sway/wallpaper.jpg" "${DATA_DIR}/sway/wallpaper.jpg"
}
