function preexec() {
  # register time of command execution (in milliseconds)
  COMMAND_TIME_START_MS=$( date +"%s%3N" )
  COMMAND_TIME_START=$( date +"%H:%M" )
}

function precmd() {
  # save last exit code before vcs_info call
  # otherwise it seems to get set to 0...
  local exit_code=$?

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

  # define term width for right alignment
  # right prompt leaves one space afterwards
  local term_width=$(( $COLUMNS - 1 ))

  # define the filler for the prompt first line
  local right_1_length=$(( ${#command_duration} + ${#command_time_start} + 2 ))
  local filler_1_length=$(( $term_width - $right_1_length ))
  local prompt_1_filler="${(l.$filler_1_length.. .)}"

  # define color variables
  local red='%{%F{red}%}'
  local blue='%{%F{blue}%}'
  local cyan='%{%F{cyan}%}'
  local magenta='%{%F{magenta}%}'
  local yellow='%{%F{yellow}%}'
  local stop='%{%f%}'

  # define individual items
  local user="%(!.${red}.${blue})%n${stop}"
  local host="${red}%m${stop}"
  [[ ${exit_code} -eq 0 ]] && exit_color="${cyan}" || exit_color="${magenta}"
  local duration="${exit_color}${command_duration}${stop}"
  local time_start="${yellow}${command_time_start}${stop}"

  # print prompt first lines directly here
  # to prevent issue when resizing terminal
  print -P "${prompt_1_filler}${duration}  ${time_start}"
  print -P "${user}@${host} ${vcs_info_msg_0_}"
}

# add flag to git unstaged flag if there are untracked files
function +vi-git-untracked(){
  if git status --porcelain | grep '^??' &> /dev/null ; then
    hook_com[unstaged]+='?'
  fi
}

# add info to git branch about branch vs upstream
function +vi-git-upstream(){
  local remote=$(git rev-parse --abbrev-ref --symbolic-full-name @{upstream} 2> /dev/null)

  if [[ -n "${remote}" ]]; then
    local ahead=$(git rev-list "${remote}"..HEAD --count)
    local behind=$(git rev-list HEAD.."${remote}" --count)

    hook_com[branch]+=' '

    if [[ "${ahead}" == 0 && "${behind}" == 0 ]]; then
      hook_com[branch]+='✔'
    else
      [[ "${ahead}" != 0 ]] && hook_com[branch]+="↑${ahead}"
      [[ "${behind}" != 0 ]] && hook_com[branch]+="↓${behind}"
    fi
  fi
}

function set_prompt() {
  # define color variables
  local green='%{%F{green}%}'
  local yellow='%{%F{yellow}%}'
  local stop='%{%f%}'

  # define cwd / git prompt
  zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:*' nvcsformats "${green}%~${stop}"
  zstyle ':vcs_info:*' formats "${green}%r${stop} (%b) ${yellow}[%c%u]${stop} ${green}%S${stop}"
  zstyle ':vcs_info:*' actionformats "${green}%r${stop} (%a) ${yellow}[%c%u]${stop} ${green}%S${stop}"
  zstyle ':vcs_info:*' check-for-changes true
  zstyle ':vcs_info:*' stagedstr '+'
  zstyle ':vcs_info:*' unstagedstr '!'
  zstyle ':vcs_info:git*+set-message:*' hooks git-untracked git-upstream

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
