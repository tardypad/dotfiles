#!/usr/bin/env zsh

find "${HOME}/.tmux/conf/" -name '*.tmux' \
  -exec tmux source-file {} \;
