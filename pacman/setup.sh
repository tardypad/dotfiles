#!/usr/bin/env zsh

pacman::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/pacman"
  mkdir -p "$( xdg-user-dir BUILD )/"{packages,sources,srcpackages,makepkglogs}

  # copy config files
  copy "pacman/makepkg.conf" "${CONFIG_DIR}/pacman/makepkg.conf"
}
