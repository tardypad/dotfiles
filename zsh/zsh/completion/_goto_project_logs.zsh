#compdef goto_project_logs

_logs_folders() {
  local logs_folders=( $(
    find "${PROJECTS_LOGS_DIR}" \
      -mindepth 1 -maxdepth 1 -type d \
      -printf '%f '
  ) )

  compadd "$@" $logs_folders
}

_arguments \
  '1:logs folder:_logs_folders'
