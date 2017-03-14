#!/usr/bin/zsh

COMMAND=${0:t}

init_variables() {
  AVAILABLE_TOOLS=( $(
    find . -maxdepth 1 -type d ! -name '.*' -printf '%f\n' \
      | sort
  ) )
  TOOLS=( ${AVAILABLE_TOOLS} )

  AVAILABLE_REMOTE_HOSTS=( $(
    [[ -f ./remote_hosts ]] && cat ./remote_hosts
  ) )
  REMOTE_HOSTS=( ${AVAILABLE_REMOTE_HOSTS} )

  DEST=
}


usage() {
  cat << EOF
usage: ${COMMAND} [<options>] [<tools>]

Setup tools' config locally and/or on remote hosts

Options:
  -h,  --help            show this message only
  -d,  --dest   DEST     only setup destinations DEST:
                           local   only setup local host
                           remote  only setup all remote hosts
                           HOST    only setup remote host HOST
                         by default local and all remote hosts are setup

Available tools: ${AVAILABLE_TOOLS}
If no tool argument is passed, all of them are setup
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
  local tool="$1"

  if command -v revolver > /dev/null 2>&1; then
    revolver --style dots start "setup ${tool}"
  else
    echo "setup ${tool}"
  fi
}


setup_update() {
  local tool="$1"
  local host="$2"

  if command -v revolver > /dev/null 2>&1; then
    revolver update "setup ${tool} [${host}]"
  fi
}

setup_end() {
  local tool="$1"

  if command -v revolver > /dev/null 2>&1; then
    revolver stop
    echo "$(tput setaf 2)✔$(tput sgr0) setup ${tool}$(tput el)"
  fi
}


setup() {
  for tool in ${TOOLS}; do
    setup_start "${tool}"

    [[ -f "${tool}/setup.sh" ]] && source "${tool}/setup.sh"
    [[ -f "${tool}/setup.local.sh" ]] && source "${tool}/setup.local.sh"

    if [[ -z "${DEST}" ]] || [[ "${DEST}" == 'local' ]]; then
      setup_update "${tool}" local
      run_function_if_exists "${tool}::local::setup"
      run_function_if_exists "${tool}::local::setup_local"
    fi

    if [[ -z "${DEST}" ]] || [[ "${DEST}" != 'local' ]]; then
      for host in ${REMOTE_HOSTS}; do
        setup_update "${tool}" "${host}"
        run_function_if_exists "${tool}::remote::setup" "${host}"
        run_function_if_exists "${tool}::remote::setup_local" "${host}"
      done
    fi

    setup_end "${tool}"
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

  # Everything after the last recognized option is assumed to be a tool
  [[ $# -eq 0 ]] || TOOLS=( "$@" )
}


validate_options() {
  # define REMOTE_HOSTS if DEST is a single host
  if [[ "${DEST}" != 'local' ]] && [[ "${DEST}" != 'remote' ]]; then
    REMOTE_HOSTS=( "${DEST}" )
  fi

  # validate each tool value
  for tool in ${TOOLS}; do
    if ! (( ${AVAILABLE_TOOLS[(Ie)${tool}]} )); then
      error "invalid tool ${tool}"
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
