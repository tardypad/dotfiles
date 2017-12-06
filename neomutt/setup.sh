#!/usr/bin/env zsh

neomutt::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/neomutt"
  mkdir -p "${CACHE_DIR}/neomutt/"{headers,bodies,tmp}

  # copy config files
  copy "neomutt/neomuttrc" "${CONFIG_DIR}/neomutt/neomuttrc"
  copy "neomutt/conf" "${CONFIG_DIR}/neomutt/conf"
}
