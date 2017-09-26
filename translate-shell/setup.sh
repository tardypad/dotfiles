#!/usr/bin/env zsh

translate-shell::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.config/translate-shell"

  # copy config file
  local_copy "translate-shell/init.trans" ".config/translate-shell/init.trans"
}
