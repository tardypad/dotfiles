#!/usr/bin/zsh

setup_git() {
  # copy config files
  copy "git/gitconfig" ".gitconfig"
  copy "git/gitconfig.local" ".gitconfig.local"
  copy "git/template" ".git-template"
}
