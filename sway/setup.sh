#!/usr/bin/env zsh

sway::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/sway"
  mkdir -p "${DATA_DIR}/sway"

  # copy config files
  copy "sway/config" "${CONFIG_DIR}/sway/config"
  copy "sway/config.d" "${CONFIG_DIR}/sway/config.d"
  copy "sway/wallpaper.jpg" "${DATA_DIR}/sway/wallpaper.jpg"
  copy "sway/wallpaper-lock.jpg" "${DATA_DIR}/sway/wallpaper-lock.jpg"
}
