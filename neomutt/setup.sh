#!/usr/bin/env zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.mutt/"{cache/headers,cache/bodies,tmp}

  # copy config files
  local_copy "neomutt/muttrc" "${HOME}/.mutt/muttrc"
  local_copy "neomutt/conf" "${HOME}/.mutt/conf"
}
