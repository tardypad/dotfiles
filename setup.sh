#!/usr/bin/zsh

copy() {
  cp --recursive --force --no-target-directory \
    "$1" "${HOME}/$2"
}

for tool in *(/); do
  echo "setup ${tool}"
  source "${tool}/setup.sh"
  setup_"${tool}"
done
