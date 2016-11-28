#!/usr/bin/zsh

setup_ssh() {
  cat "${DOTFILES_DIR}/ssh/config" "${DOTFILES_DIR}/ssh/config.local" \
    > "${HOME}/.ssh/config" 2>/dev/null
}
