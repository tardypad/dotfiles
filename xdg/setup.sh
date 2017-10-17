#!/usr/bin/env zsh

xdg::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}"

  # copy config files
  local_copy "xdg/user-dirs/user-dirs.dirs" "${CONFIG_DIR}/user-dirs.dirs"
  local_copy "xdg/user-dirs/user-dirs.locale" "${CONFIG_DIR}/user-dirs.locale"
  local_copy "xdg/mimeapps/mimeapps.list" "${CONFIG_DIR}/mimeapps.list"
}
