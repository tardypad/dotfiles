function __goto_project() {
  local project_level="$1"
  local project_name="$2"

  # find the project directory with this name
  local project_dir="$(
    find "${PROJECTS_DIR}" \
      -mindepth "${project_level}" -maxdepth "${project_level}" -type d \
      -name "${project_name}"
  )"

  # go to that directory if it exists, otherwise go the main one
  [[ "${project_dir}" != '' ]] && cd "${project_dir}" || cd "${PROJECTS_DIR}"
}


function goto_project_main() {
  __goto_project 1 "$1"
}


function goto_project_repo() {
  __goto_project 2 "$1"
}
