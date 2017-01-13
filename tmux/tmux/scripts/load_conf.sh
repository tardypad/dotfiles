#!/bin/sh

find ~/.tmux/conf/ -name '*.tmux' \
  -exec tmux source-file {} \;
