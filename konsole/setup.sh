#!/usr/bin/env zsh

konsole::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}"
  mkdir -p "${DATA_DIR}/konsole"
  mkdir -p "${DATA_DIR}/kxmlgui5/konsole"

  # copy config files
  copy "konsole/konsolerc" "${CONFIG_DIR}/konsolerc"
  copy "konsole/konsole" "${DATA_DIR}/konsole"
  copy "konsole/kxmlgui5" "${DATA_DIR}/kxmlgui5/konsole"
}
