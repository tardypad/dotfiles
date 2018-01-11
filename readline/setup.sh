#!/usr/bin/env zsh

readline::setup() {
  # copy config file
  copy "readline/inputrc" "${HOME}/.inputrc"
}
