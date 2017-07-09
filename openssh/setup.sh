#!/usr/bin/env zsh

openssh::local::setup() {
  # create necessary directories
  mkdir -p ~/.ssh

  # copy config files
  cat "openssh/config" "openssh/config.local" \
    > "${HOME}/.ssh/config" 2>/dev/null

  # adjust permissions
  chmod 700 "${HOME}/.ssh"
  chmod 600 "${HOME}/.ssh/config"
}


openssh::remote::setup() {
  local host="$1"

  # create necessary directories
  remote_exec "${host}" 'mkdir -p ~/.ssh'

  # copy config files
  remote_copy "${host}" "openssh/config_${host}" ".ssh/config"

  # adjust permissions
  remote_exec "${host}" 'chmod 700 "${HOME}/.ssh"'
  remote_exec "${host}" 'chmod 600 "${HOME}/.ssh/config"'
}
