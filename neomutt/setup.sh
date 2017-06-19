#!/usr/bin/zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p ~/.mutt/{cache/headers,cache/bodies,tmp}

  # copy config files
  local_copy "neomutt/muttrc" ".mutt/muttrc"
  local_copy "neomutt/conf" ".mutt/conf"
}
