#compdef goto_project_repo

local projects_repos

# find all projects repositories names
projects_repos=$(
  find "${PROJECTS_DIR}" \
    -mindepth 2 -maxdepth 2 -type d \
    -printf '%f '
)

_arguments "1:Project repository name:($projects_repos)"
