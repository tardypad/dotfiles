#compdef goto_project_repo

local projects

# find all project names
projects=$(
  find "${PROJECTS_DIR}" \
    -mindepth 2 -maxdepth 2 -type d \
    -printf '%f '
)

_alternative "1:Project name:($projects)"
