#!/usr/bin/env zsh

xdg::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/"

  # copy config files
  local_copy "xdg/user-dirs/user-dirs.dirs" ".config/user-dirs.dirs"
  local_copy "xdg/user-dirs/user-dirs.locale" ".config/user-dirs.locale"
  local_copy "xdg/mimeapps/mimeapps.list" ".config/mimeapps.list"
}
