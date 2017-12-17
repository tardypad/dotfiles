#!/usr/bin/env zsh

login::setup() {
  # copy config files
  copy "login/hushlogin" "${HOME}/.hushlogin"
}
