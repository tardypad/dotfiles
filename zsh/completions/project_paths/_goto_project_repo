#compdef goto_project_repo

_projects_repos() {
  local projects_repos=( $(
    find "$( xdg-user-dir PROJECTS )" \
      -mindepth 2 -maxdepth 2 -type d \
      -printf '%f '
  ) )

  compadd "$@" $projects_repos
}

_arguments \
  '1:project repo:_projects_repos'
