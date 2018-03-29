#!/usr/bin/env zsh


function main_readme_version() {
  local tool="$1"

  grep "^| ${tool} .*" README.md \
    | sed 's#^|.*|.*|.*| \[\(.*\)\].*#\1#'
}


function individual_readme_version() {
  local tool="$1"

  [[ -d "${tool}" ]] || return

  grep '^Version \[' "${tool}/README.md" \
    | sed 's#^Version \[\(.*\)\].*#\1#'
}


function pacman_version() {
  local tool="$1"

  local pacman_info=$(
    pacman --query --info "${tool}" 2> /dev/null
  )

  if [[ -z "${pacman_info}" ]]; then
    # try with -git suffix if package couldn't be found
    local pacman_info=$(
      pacman --query --info "${tool}-git" 2> /dev/null
    )
  fi

  if [[ -z "${pacman_info}" ]]; then
    echo 'unknown'
    return
  fi

  # last line remove the release version
  echo "${pacman_info}" \
    | grep '^Version' \
    | tr --squeeze-repeats ' ' \
    | cut --fields 3 --delimiter ' ' \
    | sed 's#\(.*\)\-[0-9]*#\1#'
}


TOOLS=($(
  grep --extended-regexp '^\|.*\|.*\|.*\| \[.*\].*\|$' README.md \
    | sed 's#^| \([^ ]*\) .*#\1#'
))

for TOOL in ${TOOLS}; do
  echo -n "${TOOL}"
  echo -n ' '
  echo -n $( pacman_version "${TOOL}" )
  echo -n ' '
  echo -n $( main_readme_version "${TOOL}" )
  echo -n ' '
  echo -n $( individual_readme_version "${TOOL}" )
  echo
done \
  | column --table
