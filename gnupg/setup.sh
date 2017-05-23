#!/usr/bin/zsh

gnupg::local::setup() {
  # create necessary directories
  mkdir -p ~/.gnupg

  # copy config files
  local_copy "gnupg/gpg.conf" ".gnupg/gpg.conf"
  local_copy "gnupg/gpg-agent.conf" ".gnupg/gpg-agent.conf"
}
