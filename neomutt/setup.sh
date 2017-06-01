#!/usr/bin/zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p ~/.mutt/{cache/headers,cache/bodies,tmp}

  # copy config files
  local_copy "neomutt/muttrc" ".mutt/muttrc"
  local_copy "neomutt/conf" ".mutt/conf"

  # add "default" solarized colors if not present
  if [[ ! -f ~/.mutt/conf/colors ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/altercation/mutt-colors-solarized/master/mutt-colors-solarized-dark-16.muttrc \
      --output ~/.mutt/conf/colors
  fi
}
