#!/usr/bin/env zsh

konsole::local::setup() {
  # create necessary directories
  mkdir -p ~/.fonts

  # install Adobe Source Code Pro font if not present
  if [[ ! -d ~/.fonts/source-code-pro/ ]]; then
    curl --silent --location \
      https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz \
        | tar xz --strip-component=1 -C ~/.fonts/ source-code-pro-2.030R-ro-1.050R-it/OTF
    mv ~/.fonts/OTF ~/.fonts/source-code-pro
    fc-cache -f
  fi
}
