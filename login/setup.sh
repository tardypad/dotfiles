#!/usr/bin/env zsh

login::local::setup() {
  # copy config files
  local_copy "login/hushlogin" "${HOME}/.hushlogin"
}
