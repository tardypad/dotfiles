function preexec() {
  # register time of command execution (in milliseconds)
  COMMAND_TIME_START_MS=$( date +"%s%3N" )
  COMMAND_TIME_START=$( date +"%H:%M" )
}

function precmd() {
  vcs_info

  # define duration and time of last command
  local command_duration=
  local command_time_start=
  if [ $COMMAND_TIME_START_MS ]; then
    local cmd_dur=$(( $( date +"%s%3N" ) - $COMMAND_TIME_START_MS ))
    local cmd_dur_ms=$(( cmd_dur % 1000 ))
    local cmd_dur_sec=$(( cmd_dur / 1000 % 60 ))
    local cmd_dur_min=$(( cmd_dur / 1000 / 60 ))

    if [[ $cmd_dur_min -gt 0 ]]; then
      command_duration+="${cmd_dur_min}m ${cmd_dur_sec}s "
    elif [[ $cmd_dur_sec -gt 0 ]]; then
      command_duration+="${cmd_dur_sec}s "
    fi
    command_duration+="${cmd_dur_ms}ms"

    command_time_start="$COMMAND_TIME_START"

    COMMAND_TIME_START_MS=
    COMMAND_TIME_START=
  fi

  # calculate actual length of the VCS info message
  local zero='%([BSUbfksu]|([FBK]|){*})'
  local vcs_info_length=${#${(S%%)vcs_info_msg_0_//$~zero/}}

  # define term width for right alignment
  # right prompt leaves one space afterwards
  local term_width=$(( $COLUMNS - 1 ))

  # define the filler for the prompt first line
  local left_1_length=$(( ${#${(%):-%n@%m }} + $vcs_info_length ))
  local right_1_length=$(( ${#command_duration} + ${#command_time_start} + 2 ))
  local filler_1_length=$(( $term_width - $left_1_length - $right_1_length ))
  local prompt_1_filler="${(l.$filler_1_length.. .)}"

  # define color variables
  local red='%{%F{red}%}'
  local blue='%{%F{blue}%}'
  local cyan='%{%F{cyan}%}'
  local magenta='%{%F{magenta}%}'
  local stop='%{%f%}'

  # define individual items
  local user="%(!.${red}.${blue})%n${stop}"
  local host="${red}%m${stop}"
  local duration="%(?.${cyan}.${magenta})${command_duration}${stop}"
  local time_start="${command_time_start}"

  # define prompt first line
  prompt_1="\n"
  prompt_1+="${user}@${host} "
  prompt_1+="${vcs_info_msg_0_}${prompt_1_filler}"
  prompt_1+="${duration}  ${time_start}"

  # print prompt first line directly here
  # prevent issue when resizing terminal
  print -P "${prompt_1}"
}

function set_prompt() {
  # define color variables
  local green='%{%F{green}%}'
  local yellow='%{%F{yellow}%}'
  local stop='%{%f%}'

  # define cwd / git prompt
  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:*' nvcsformats "${green}%~${stop}"
  zstyle ':vcs_info:*' formats "${green}%r${stop} (%b) ${green}%S${stop}"
  zstyle ':vcs_info:*' actionformats "${green}%r${stop} (%a) ${green}%S${stop}"

  # define individual items
  local vi_mode="${yellow}"' $VI_MODE '"${stop}"
  local left_2_length=${#${(%):-%n@%m}}
  local left_2_filler_length=$(( $left_2_length - 6 ))
  local left_2_filler="${(l.${left_2_filler_length}..~.)}"

  # build prompt
  PROMPT="${left_2_filler}${vi_mode}$ "
}

autoload -Uz vcs_info
setopt prompt_subst

set_prompt
unset -f set_prompt
