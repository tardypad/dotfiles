# register local completions folders
fpath=(
  "${HOME}/.zsh/completions"/**/
  $fpath
)

autoload -Uz compinit

# skip security checks on completion permissions for when switching to root
compinit -u

# enable selection of item via menu
zstyle ':completion:*' menu select

# reuse LS_COLORS for items color
# and define current item colors
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma={color/base00/fg};{color/current_item/bg}'

# color options description
zstyle ':completion:*:options' list-colors '=-- *={color/base08/fg}'

# Tab case insensitive smart completion
# lowercase letters match lowercase and uppercase letters
# uppercase letters match only uppercase letters
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Disable hosts completion for ssh and scp
# from /etc/hosts and ~/.ssh/known_hosts
# so that completion only reads aliases from ~/.ssh/config
zstyle -e ':completion:*:*:(scp|ssh):*:*' hosts 'reply=()'
zstyle -e ':completion:*:*:(scp|ssh):*:*' known-hosts-files 'reply=()'

# same completions
compdef neomutt=mutt
compdef goto-project=project-path
