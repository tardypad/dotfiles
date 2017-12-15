#!/usr/bin/env zsh

fontconfig::setup() {
  # create necessary directories
  mkdir -p "${CONFIG_DIR}/fontconfig"
  mkdir -p "${DATA_DIR}/fonts"

  # copy config files
  copy "fontconfig/fonts.conf" "${CONFIG_DIR}/fontconfig/fonts.conf"

  # install Adobe Source Code Pro font if not present
  if [[ ! -d "${DATA_DIR}/fonts/source-code-pro/" ]]; then
    curl --silent --location \
      https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz \
        | tar xz --strip-component=1 -C "${DATA_DIR}/fonts" source-code-pro-2.030R-ro-1.050R-it/OTF
    mv "${DATA_DIR}/fonts/OTF" "${DATA_DIR}/fonts/source-code-pro"
    fc-cache -f
  fi
}
