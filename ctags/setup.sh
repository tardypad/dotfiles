#!/usr/bin/env zsh

ctags::local::setup() {
  # copy config file
  local_copy "ctags/ctags" ".ctags"
}
