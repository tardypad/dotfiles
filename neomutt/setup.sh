#!/usr/bin/zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p ~/.mutt

  # copy config files
  local_copy "neomutt/muttrc" ".mutt/muttrc"
  local_copy "neomutt/accounts" ".mutt/accounts"
}
