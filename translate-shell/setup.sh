#!/usr/bin/env zsh

translate-shell::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/translate-shell"

  # copy config file
  copy "translate-shell/init.trans" "${CONFIG_DIR}/translate-shell/init.trans"
}
