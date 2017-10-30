#!/usr/bin/env zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/neomutt"
  mkdir -p "${CACHE_DIR}/neomutt/"{headers,bodies,tmp}

  # copy config files
  local_copy "neomutt/neomuttrc" "${CONFIG_DIR}/neomutt/neomuttrc"
  local_copy "neomutt/conf" "${CONFIG_DIR}/neomutt/conf"
}
