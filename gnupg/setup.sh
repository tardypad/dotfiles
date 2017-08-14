#!/usr/bin/env zsh

gnupg::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.gnupg"

  # copy config files
  local_copy "gnupg/gpg.conf" ".gnupg/gpg.conf"
  local_copy "gnupg/gpg-agent.conf" ".gnupg/gpg-agent.conf"
}
