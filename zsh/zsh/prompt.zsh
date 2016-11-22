function preexec() {
  timer_start=$SECONDS
}

function precmd() {
  vcs_info

  local elapsed_time
  if [ $timer_start ]; then
    elapsed_time=$(( $SECONDS - $timer_start ))
    unset timer_start
  else
    elapsed_time=0
  fi

  local zero='%([BSUbfksu]|([FBK]|){*})'
  local vcs_info_size=${#${(S%%)vcs_info_msg_0_//$~zero/}}

  local prompt1_size=$(( ${#${(%):-%n@%m }} + $vcs_info_size ))
  local rprompt1_size=$(( ${#elapsed_time} + 1 ))
  PROMPT1_FILL="${(l.(( $COLUMNS - $prompt1_size - $rprompt1_size )).. .)}"
  RPROMPT1="%{$fg[cyan]%}${elapsed_time}s%{$reset_color%}"
}

function set_prompt() {
  local user="%(!.%{$fg[red]%}.%{$fg[blue]%})%n%{$reset_color%}"
  local host="%{$fg[red]%}%m%{$reset_color%}"

  local filler_length=$(( ${#${(%):-%n@%m}} - 1 ))
  local filler="${(l.${filler_length}..~.)}"

  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:*' nvcsformats '%{%F{green}%}%~%{%f%}'
  zstyle ':vcs_info:*' formats '%{%F{green}%}%r%{%f%} (%b) %{%F{green}%}%S%{%f%}'
  zstyle ':vcs_info:*' actionformats '%{%F{green}%}%r%{%f%} (%a) %{%F{green}%}%S%{%f%}'

  PROMPT=$'\n'
  PROMPT+="$user@$host "
  PROMPT+='${vcs_info_msg_0_}'
  PROMPT+='$PROMPT1_FILL$RPROMPT1'
  PROMPT+=$'\n'
  PROMPT+="$filler> "
}

autoload -Uz vcs_info
setopt prompt_subst

set_prompt
unset -f set_prompt
