#!/usr/bin/env zsh

konsole::local::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}"
  mkdir -p "${DATA_DIR}/konsole"
  mkdir -p "${DATA_DIR}/kxmlgui5/konsole"
  mkdir -p "${DATA_DIR}/fonts"

  # copy config files
  local_copy "konsole/konsolerc" "${CONFIG_DIR}/konsolerc"
  local_copy "konsole/konsole" "${DATA_DIR}/konsole"
  local_copy "konsole/kxmlgui5" "${DATA_DIR}/kxmlgui5/konsole"

  # install Adobe Source Code Pro font if not present
  if [[ ! -d "${DATA_DIR}/fonts/source-code-pro/" ]]; then
    curl --silent --location \
      https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz \
        | tar xz --strip-component=1 -C "${DATA_DIR}/fonts" source-code-pro-2.030R-ro-1.050R-it/OTF
    mv "${DATA_DIR}/fonts/OTF" "${DATA_DIR}/fonts/source-code-pro"
    fc-cache -f
  fi
}
