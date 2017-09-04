function __get_project_path() {
  local project_level="$1"
  local project_name="$2"

  # find the project directory with this name
  local project_dir="$(
    find "${PROJECTS_DIR}" \
      -mindepth "${project_level}" -maxdepth "${project_level}" -type d \
      -name "${project_name}"
  )"

  echo "${project_dir}"
}


function get_project_main_path() {
  __get_project_path 1 "$1"
}


function get_project_repo_path() {
  __get_project_path 2 "$1"
}


function goto_project_main() {
  local path=$( get_project_main_path "$1" )
  [[ -n "${path}" ]] && cd "${path}" || cd "${PROJECTS_DIR}"
}


function goto_project_repo() {
  local path=$( get_project_repo_path "$1" )
  [[ -n "${path}" ]] && cd "${path}" || cd "${PROJECTS_DIR}"
}


function http_prompt_env() {
    http-prompt --env "${HOME}/.local/share/http-prompt/env/$1.hp"
}
