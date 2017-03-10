#!/usr/bin/zsh

COMMAND=${0:t}

init_variables() {
  AVAILABLE_TARGETS=( $(
    find . -maxdepth 1 -type d ! -name '.*' -printf '%f\n' \
      | sort
  ) )
  TARGETS=( ${AVAILABLE_TARGETS} )
  ONLY_LOCAL=false
  ONLY_REMOTE=false
}


usage() {
  cat << EOF
usage: ${COMMAND} [<options>] [<targets>]

Options:
    -h,  --help         show this message only
    -ol, --only-local   only setup local host configs
    -or, --only-remote  only setup remote hosts configs

Available targets: ${AVAILABLE_TARGETS}
If no target argument is passed, all of them are setup
By default both local and remote hosts are setup
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


remote_exec() {
  local host="$1"
  local cmd="$2"

  ssh -n "${host}" "${cmd}"
}


remote_copy() {
  local host="$1"
  local repo_source_path="$2"
  local home_target_path="$3"

  ssh -n "${host}" rm -rf "${HOME}/${home_target_path}"
  scp -qr "${repo_source_path}" "${host}:${HOME}/${home_target_path}" \
    2> /dev/null
}


run_function_if_exists() {
  command -v "$1" > /dev/null 2>&1 && "$1" "${@:2}"
}


setup_start() {
  local target="$1"

  if command -v revolver > /dev/null 2>&1; then
    revolver --style dots start "setup ${target}"
  else
    echo "setup ${target}"
  fi
}


setup_end() {
  local target="$1"

  if command -v revolver > /dev/null 2>&1; then
    revolver stop
    echo "$(tput setaf 2)✔$(tput sgr0) setup ${target}"
  fi
}


setup() {
  for target in ${TARGETS}; do
    setup_start "${target}"

    [[ -f "${target}/setup.sh" ]] && source "${target}/setup.sh"
    [[ -f "${target}/setup.local.sh" ]] && source "${target}/setup.local.sh"

    if ! ${ONLY_REMOTE}; then
      run_function_if_exists "${target}::local::setup"
      run_function_if_exists "${target}::local::setup_local"
    fi

    if ! ${ONLY_LOCAL} && [[ -f ./remote_hosts ]]; then
      while read host; do
        run_function_if_exists "${target}::remote::setup" "${host}"
        run_function_if_exists "${target}::remote::setup_local" "${host}"
      done < ./remote_hosts
    fi

    setup_end "${target}"
  done
}


parse_options() {
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      -h|--help)
        usage
        exit 0
        ;;
      -ol|--only-local)
        ONLY_LOCAL=true
        shift
        ;;
      -or|--only-remote)
        ONLY_REMOTE=true
        shift
        ;;
      *)
        break 2
        ;;
    esac
  done

  # Everything after the last recognized option is assumed to be a target
  [[ $# -eq 0 ]] || TARGETS=( "$@" )
}


validate_options() {
  # ONLY_LOCAL and ONLY_REMOTE shouldn't both be set
  if ${ONLY_LOCAL} && ${ONLY_REMOTE}; then
    error "--only-local and --only-remote flags shouldn't both be set"
  fi

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
