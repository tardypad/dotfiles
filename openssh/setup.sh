#!/usr/bin/zsh

local_setup_openssh() {
  # create necessary directories
  mkdir -p ~/.ssh

  # copy config files
  cat "openssh/config" "openssh/config.local" \
    > "${HOME}/.ssh/config" 2>/dev/null

  # adjust permissions
  chmod 700 "${HOME}/.ssh"
  chmod 600 "${HOME}/.ssh/config"
}
