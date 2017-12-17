#!/usr/bin/env zsh

gnupg::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.gnupg"

  # copy config files
  copy "gnupg/gpg.conf" "${HOME}/.gnupg/gpg.conf"
  copy "gnupg/gpg-agent.conf" "${HOME}/.gnupg/gpg-agent.conf"
}
