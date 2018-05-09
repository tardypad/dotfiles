#compdef goto_project_main

_main_projects() {
  local main_projects=( $(
    find "$( xdg-user-dir PROJECTS )" \
      -mindepth 1 -maxdepth 1 -type d \
      -printf '%f '
  ) )

  compadd "$@" $main_projects
}

_arguments \
  '1:main project:_main_projects'
