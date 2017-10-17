#!/usr/bin/env zsh

translate-shell::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/translate-shell"

  # copy config file
  local_copy "translate-shell/init.trans" "${CONFIG_DIR}/translate-shell/init.trans"
}
