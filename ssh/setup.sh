#!/usr/bin/zsh

local_setup_ssh() {
  cat "ssh/config" "ssh/config.local" \
    > "${HOME}/.ssh/config" 2>/dev/null

  chmod 600 "${HOME}/.ssh/config"
}
