# register local and tools completions folder
fpath=("${HOME}/.zsh/completion/" /usr/local/etc/zsh_completion.d/ $fpath)

autoload -Uz compinit

# Speed up startup by only checking once a day
# if the cached .zcompdump file should be regenerated
if [[ ! -f "${HOME}/.zcompdump" ]] \
   || [[ $( date +'%Y%j' ) > $( date +'%Y%j' -r "${HOME}/.zcompdump" ) ]]; then
  compinit
else
  compinit -C
fi

source /usr/local/etc/zsh_completion.d/git-extras-completion.zsh

# Tab case insensitive smart completion
# lowercase letters match lowercase and uppercase letters
# uppercase letters match only uppercase letters
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Disable hosts completion for ssh and scp
# from /etc/hosts and ~/.ssh/known_hosts
# so that completion only reads aliases from ~/.ssh/config
zstyle -e ':completion:*:*:(scp|ssh):*:*' hosts 'reply=()'
zstyle -e ':completion:*:*:(scp|ssh):*:*' known-hosts-files 'reply=()'
