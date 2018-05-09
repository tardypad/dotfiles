#!/usr/bin/env zsh

function main_readme_version() {
  local package="$1"

  grep "^| ${package} .*" README.md \
    | sed 's#^|.*|.*|.*| \[\(.*\)\].*#\1#'
}


function individual_readme_version() {
  local package="$1"

  if [[ ! -d "${package}" ]]; then
    echo '.'
    return
  fi

  grep '^Version \[' "${package}/README.md" \
    | sed 's#^Version \[\(.*\)\].*#\1#'
}


function extension_readme_version() {
  local extension="$1"

  grep --extended-regexp '^\|.*\|.*\|.*\| \[.*\].*\|$' */README.md \
    | grep "| ${extension}" \
    | sed "s#^.*/README.md:| ${extension} *|.*|.*| \[\(.*\)\].*|#\1#"
}


function pacman_version() {
  local package="$1"

  [[ "${package}" == 'notes' ]] && package='notes-pimterry'

  local pacman_info=$(
    pacman --query --info "${package}" 2> /dev/null
  )

  if [[ -z "${pacman_info}" ]]; then
    # try with -git suffix if package couldn't be found
    local pacman_info=$(
      pacman --query --info "${package}-git" 2> /dev/null
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


function report_packages() {
  for package in ${PACKAGES}; do
    echo -n "${package}"
    echo -n ' '
    echo -n $( pacman_version "${package}" )
    echo -n ' '
    echo -n $( main_readme_version "${package}" )
    echo -n ' '
    echo -n $( individual_readme_version "${package}" )
    echo
  done
}


function report_extensions() {
  for extension in ${EXTENSIONS}; do
    echo -n "${extension}"
    echo -n ' '
    echo -n $( pacman_version "${extension}" )
    echo -n ' '
    echo -n '.'
    echo -n ' '
    echo -n $( extension_readme_version "${extension}" )
    echo
  done
}


PACKAGES=($(
  grep --extended-regexp '^\|.*\|.*\|.*\| \[.*\].*\|$' README.md \
    | sed 's#^| \([^ ]*\) .*#\1#'
))

# exclude vim and weechat plugins (not managed by package manager)
EXTENSIONS=($(
  grep --extended-regexp '^\|.*\|.*\|.*\| \[.*\].*\|$' */README.md \
    | grep --invert-match --extended-regexp '^vim|^weechat' \
    | sed 's#^.*/README.md:| \([^ ]*\) .*#\1#'
))


{ report_packages; report_extensions; } \
  | column --table
