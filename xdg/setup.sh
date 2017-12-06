#!/usr/bin/env zsh

xdg::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}"

  # copy config files
  copy "xdg/user-dirs/user-dirs.dirs" "${CONFIG_DIR}/user-dirs.dirs"
  copy "xdg/user-dirs/user-dirs.locale" "${CONFIG_DIR}/user-dirs.locale"
  copy "xdg/mimeapps/mimeapps.list" "${CONFIG_DIR}/mimeapps.list"
}
