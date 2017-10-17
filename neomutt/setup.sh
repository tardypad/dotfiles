#!/usr/bin/env zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/mutt"
  mkdir -p "${CACHE_DIR}/mutt/"{headers,bodies,tmp}

  # copy config files
  local_copy "neomutt/muttrc" "${CONFIG_DIR}/mutt/neomuttrc"
  local_copy "neomutt/conf" "${CONFIG_DIR}/mutt/conf"
}
