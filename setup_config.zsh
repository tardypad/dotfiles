#!/usr/bin/zsh

COMMAND=${0:t}

init_variables() {
  AVAILABLE_TARGETS=( $(
    find . -maxdepth 1 -type d ! -name '.*' -printf '%f\n' \
      | sort
  ) )
  TARGETS=( ${AVAILABLE_TARGETS} )
}


usage() {
  cat << EOF
usage: ${COMMAND} [<options>] [<targets>]

Options:
    -h, --help     show this message only

Available targets: ${AVAILABLE_TARGETS}
If no target argument is passed, all of them are setup
EOF
}


error() {
  if [[ -n "$1" ]]; then
    echo "error: $1" >&2
  fi
  usage
  exit 1
}


local_copy() {
  local repo_source_path="$1"
  local home_target_path="$2"

  cp --recursive --force --no-target-directory \
    "${repo_source_path}" "${HOME}/${home_target_path}"
}


remote_copy() {
  local host="$1"
  local repo_source_path="$2"
  local home_target_path="$3"

  ssh "${host}" rm -rf "${HOME}/${home_target_path}"
  scp -qr "${repo_source_path}" "${host}:${HOME}/${home_target_path}" \
    2> /dev/null
}


run_function_if_exists() {
  command -v "$1" > /dev/null 2>&1 && "$1"
}


setup() {
  for target in ${TARGETS}; do
    echo "setup ${target}"

    source "${target}/setup.sh"
    run_function_if_exists "local_setup_${target}"
    run_function_if_exists "remote_setup_${target}"

    if [[ -f "${target}/setup.local.sh" ]]; then
      source "${target}/setup.local.sh"
      run_function_if_exists "local_setup_${target}_local"
      run_function_if_exists "remote_setup_${target}_local"
    fi
  done
}


parse_options() {
  if [[ "$1" == '-h' ]] || [[ "$1" == '--help' ]]; then
    usage
    exit 0
  fi

  [[ $# -eq 0 ]] || TARGETS=( "${@:1}" )
}


validate_options() {
  # validate each target value
  for target in ${TARGETS}; do
    if ! (( ${AVAILABLE_TARGETS[(Ie)${target}]} )); then
      error "invalid target ${target}"
    fi
  done
}


init_variables
parse_options "$@"
validate_options

setup
