#!/usr/bin/zsh

DOTFILES_DIR="$(dirname "$(readlink -f "$0")")"

copy() {
  cp --recursive --force --no-target-directory \
    "${DOTFILES_DIR}/${1}" "${HOME}/${2}"
}

for tool_path in "${DOTFILES_DIR}"/*(/); do
  tool=$( basename "${tool_path}" )
  echo "setup ${tool}"
  source "${DOTFILES_DIR}/${tool}/setup.sh"
  setup_"${tool}"
done
