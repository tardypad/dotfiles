#!/usr/bin/zsh

local_setup_openssh() {
  cat "openssh/config" "openssh/config.local" \
    > "${HOME}/.ssh/config" 2>/dev/null

  chmod 600 "${HOME}/.ssh/config"
}
