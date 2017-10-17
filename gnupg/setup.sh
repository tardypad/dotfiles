#!/usr/bin/env zsh

gnupg::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.gnupg"

  # copy config files
  local_copy "gnupg/gpg.conf" "${HOME}/.gnupg/gpg.conf"
  local_copy "gnupg/gpg-agent.conf" "${HOME}/.gnupg/gpg-agent.conf"
}
