#!/usr/bin/env zsh

systemd::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/systemd/user"

  # copy config files
  copy "systemd/user" "${CONFIG_DIR}/systemd/user"

  # reload daemon
  systemctl --user daemon-reload
}
