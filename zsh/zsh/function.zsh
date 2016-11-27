function goto_project()
{
  local project_name="$1"

  # find the project directory with this name
  local project_dir="$(
    find "${PROJECTS_DIR}" \
      -mindepth 2 -maxdepth 2 -type d \
      -name "${project_name}"
  )"

  # go to that directory if it exists, otherwise go the main one
  [[ "${project_dir}" != '' ]] && cd "${project_dir}" || cd "${PROJECTS_DIR}"
}
