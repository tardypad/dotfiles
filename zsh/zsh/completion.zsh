# register local completions folder
fpath=(~/.zsh/completion/ $fpath)

autoload -Uz compinit

# Speed up startup by only checking once a day
# if the cached .zcompdump file should be regenerated
if [[ ! -f ~/.zcompdump ]] \
   || [[ $( date +'%Y%j' ) > $( date +'%Y%j' -r ~/.zcompdump ) ]]; then
  compinit
else
  compinit -C
fi

source /usr/local/etc/zsh_completion.d/git-extras-completion.zsh
