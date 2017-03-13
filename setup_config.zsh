#!/usr/bin/zsh

COMMAND=${0:t}

init_variables() {
  AVAILABLE_TARGETS=( $(
    find . -maxdepth 1 -type d ! -name '.*' -printf '%f\n' \
      | sort
  ) )
  TARGETS=( ${AVAILABLE_TARGETS} )

  AVAILABLE_REMOTE_HOSTS=( $(
    [[ -f ./remote_hosts ]] && cat ./remote_hosts
  ) )
  REMOTE_HOSTS=( ${AVAILABLE_REMOTE_HOSTS} )

  DEST=
}


usage() {
  cat << EOF
usage: ${COMMAND} [<options>] [<targets>]

Options:
  -h,  --help            show this message only
  -d,  --dest   DEST     only setup destinations DEST (see values below)
                         by default local and all remote hosts are setup

Destinations:
  local   setup local host
  remote  setup all remote hosts
  HOST    setup remote host HOST

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


setup_update() {
  local target="$1"
  local host="$2"

  if command -v revolver > /dev/null 2>&1; then
    revolver update "setup ${target} [${host}]"
  fi
}

setup_end() {
  local target="$1"

  if command -v revolver > /dev/null 2>&1; then
    revolver stop
    echo "$(tput setaf 2)✔$(tput sgr0) setup ${target}$(tput el)"
  fi
}


setup() {
  for target in ${TARGETS}; do
    setup_start "${target}"

    [[ -f "${target}/setup.sh" ]] && source "${target}/setup.sh"
    [[ -f "${target}/setup.local.sh" ]] && source "${target}/setup.local.sh"

    if [[ -z "${DEST}" ]] || [[ "${DEST}" == 'local' ]]; then
      setup_update "${target}" local
      run_function_if_exists "${target}::local::setup"
      run_function_if_exists "${target}::local::setup_local"
    fi

    if [[ -z "${DEST}" ]] || [[ "${DEST}" != 'local' ]]; then
      for host in ${REMOTE_HOSTS}; do
        setup_update "${target}" "${host}"
        run_function_if_exists "${target}::remote::setup" "${host}"
        run_function_if_exists "${target}::remote::setup_local" "${host}"
      done
    fi

    setup_end "${target}"
  done
}


parse_options() {
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      -d|--dest)
        [[ -n "$2" ]] || error 'missing dest value'
        DEST="$2"
        shift 2
        ;;
      -h|--help)
        usage
        exit 0
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
  # define REMOTE_HOSTS if DEST is a single host
  if [[ "${DEST}" != 'local' ]] && [[ "${DEST}" != 'remote' ]]; then
    REMOTE_HOSTS=( "${DEST}" )
  fi

  # validate each target value
  for target in ${TARGETS}; do
    if ! (( ${AVAILABLE_TARGETS[(Ie)${target}]} )); then
      error "invalid target ${target}"
    fi
  done

  # validate each remote host value
  for host in ${REMOTE_HOSTS}; do
    if ! (( ${AVAILABLE_REMOTE_HOSTS[(Ie)${host}]} )); then
      error "invalid remote host ${host}"
    fi
  done
}


init_variables
parse_options "$@"
validate_options

setup
