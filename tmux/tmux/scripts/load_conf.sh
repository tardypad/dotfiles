#!/usr/bin/env bash

find "${HOME}/.tmux/conf/" -name '*.tmux' \
  -exec tmux source-file {} \;
