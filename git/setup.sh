#!/usr/bin/zsh

git::local::setup() {
  # copy config files
  local_copy "git/gitconfig" ".gitconfig"
  local_copy "git/gitconfig.local" ".gitconfig.local"
  local_copy "git/template" ".git-template"
}
