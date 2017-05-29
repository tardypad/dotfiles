#!/usr/bin/zsh

neomutt::local::setup() {
  # create necessary directories
  mkdir -p ~/.mutt

  # copy config files
  local_copy "neomutt/muttrc" ".mutt/muttrc"
  local_copy "neomutt/accounts" ".mutt/accounts"
  local_copy "neomutt/mailcap" ".mutt/mailcap"

  # add "default" solarized colors if not present
  if [[ ! -f ~/.mutt/colors ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/altercation/mutt-colors-solarized/master/mutt-colors-solarized-dark-16.muttrc \
      --output ~/.mutt/colors
  fi
}
