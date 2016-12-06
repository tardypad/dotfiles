#compdef goto_project_main

local projects

# find all project names
projects=$(
  find "${PROJECTS_DIR}" \
    -mindepth 1 -maxdepth 1 -type d \
    -printf '%f '
)

_alternative "1:Project name:($projects)"
