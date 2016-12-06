#compdef goto_project_main

local main_projects

# find all main projects names
main_projects=$(
  find "${PROJECTS_DIR}" \
    -mindepth 1 -maxdepth 1 -type d \
    -printf '%f '
)

_arguments "1:Main project name:($main_projects)"
