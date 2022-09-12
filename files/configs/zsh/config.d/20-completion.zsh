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

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-z}={A-Za-z}'

# Disable hosts completion for ssh and scp
# from /etc/hosts and ~/.ssh/known_hosts
# so that completion only reads aliases from ~/.ssh/config
zstyle -e ':completion:*:*:(scp|ssh):*:*' hosts 'reply=()'
zstyle -e ':completion:*:*:(scp|ssh):*:*' known-hosts-files 'reply=()'

# fzf-tab config
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ':fzf-tab:*' fzf-flags '--info=hidden' '--color=hl:{color/base0A/number}:bold'
zstyle ':fzf-tab:*' default-color ''
zstyle ':fzf-tab:*' accept-line 'ctrl-{key/o}'

# same completions
compdef goto-project=project-path
