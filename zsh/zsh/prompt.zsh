function preexec() {
  # register time of command execution (in milliseconds)
  COMMAND_TIME_START=$( date +"%s%3N" )
}

function precmd() {
  vcs_info

  # define duration time of last command
  if [ $COMMAND_TIME_START ]; then
    local command_duration=$(( $( date +"%s%3N" ) - $COMMAND_TIME_START ))
    local cmd_dur_ms=$(( command_duration % 1000 ))
    local cmd_dur_sec=$(( command_duration / 1000 % 60 ))
    local cmd_dur_min=$(( command_duration / 1000 / 60 ))
    COMMAND_DURATION=
    if [[ $cmd_dur_min -gt 0 ]]; then
      COMMAND_DURATION+="${cmd_dur_min}m ${cmd_dur_sec}s "
    elif [[ $cmd_dur_sec -gt 0 ]]; then
      COMMAND_DURATION+="${cmd_dur_sec}s "
    fi
    COMMAND_DURATION+="${cmd_dur_ms}ms"

    unset COMMAND_TIME_START
  else
    COMMAND_DURATION=
  fi

  # calculate actual length of the VCS info message
  local zero='%([BSUbfksu]|([FBK]|){*})'
  local vcs_info_length=${#${(S%%)vcs_info_msg_0_//$~zero/}}

  # define term width for right alignment
  # right prompt leaves one space afterwards
  local term_width=$(( $COLUMNS - 1 ))

  # define the filler for the prompt first line
  local left_1_length=$(( ${#${(%):-%n@%m }} + $vcs_info_length ))
  local right_1_length=${#COMMAND_DURATION}
  local filler_1_length=$(( $term_width - $left_1_length - $right_1_length ))
  PROMPT_1_FILLER="${(l.$filler_1_length.. .)}"
}

function set_prompt() {
  # define color variables
  local green='%{%F{green}%}'
  local red='%{%F{red}%}'
  local blue='%{%F{blue}%}'
  local cyan='%{%F{cyan}%}'
  local yellow='%{%F{yellow}%}'
  local magenta='%{%F{magenta}%}'
  local stop='%{%f%}'

  # define individual items
  local user="%(!.${red}.${blue})%n${stop}"
  local host="${red}%m${stop}"
  local duration="%(?.${cyan}.${magenta})"'$COMMAND_DURATION'"${stop}"
  local vi_mode="${yellow}"' $VI_MODE '"${stop}"
  local left_2_length=${#${(%):-%n@%m}}
  local left_2_filler_length=$(( $left_2_length - 6 ))
  local left_2_filler="${(l.${left_2_filler_length}..~.)}"

  # define cwd / git prompt
  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:*' nvcsformats "${green}%~${stop}"
  zstyle ':vcs_info:*' formats "${green}%r${stop} (%b) ${green}%S${stop}"
  zstyle ':vcs_info:*' actionformats "${green}%r${stop} (%a) ${green}%S${stop}"

  # build full prompt
  PROMPT=$'\n'
  PROMPT+="${user}@${host} "'${vcs_info_msg_0_}$PROMPT_1_FILLER'"${duration}"
  PROMPT+=$'\n'
  PROMPT+="${left_2_filler}${vi_mode}$ "
}

autoload -Uz vcs_info
setopt prompt_subst

set_prompt
unset -f set_prompt
