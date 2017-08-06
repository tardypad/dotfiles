#!/usr/bin/env zsh

find ~/.tmux/conf/ -name '*.tmux' \
  -exec tmux source-file {} \;
