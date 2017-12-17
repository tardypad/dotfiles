#!/usr/bin/env zsh

openssh::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.ssh"

  # copy config files
  cat "openssh/config" "openssh/config.local" \
    > "${HOME}/.ssh/config" 2>/dev/null

  # adjust permissions
  chmod 700 "${HOME}/.ssh"
  chmod 600 "${HOME}/.ssh/config"
}
