function __get_project_path() {
  local project_level="$1"
  local project_name="$2"

  # find the project directory with this name
  local project_dir="$(
    find "$( xdg-user-dir PROJECTS )" \
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
  [[ -n "${path}" ]] && cd "${path}" || cd "$( xdg-user-dir PROJECTS )"
}


function goto_project_repo() {
  local path=$( get_project_repo_path "$1" )
  [[ -n "${path}" ]] && cd "${path}" || cd "$( xdg-user-dir PROJECTS )"
}


function get_project_logs_path() {
  local project_name="$1"

  find "$( xdg-user-dir PROJECTS_LOGS )" \
    -mindepth 1 -maxdepth 1 -type d \
    -name "${project_name}"
}


function goto_project_logs() {
  local path=$( get_project_logs_path "$1" )
  [[ -n "${path}" ]] && cd "${path}" || cd "$( xdg-user-dir PROJECTS_LOGS )"
}


function get_project_docs_path() {
  local project_name="$1"

  find "$( xdg-user-dir PROJECTS_DOCS )" \
    -mindepth 1 -maxdepth 1 -type d \
    -name "${project_name}"
}


function goto_project_docs() {
  local path=$( get_project_docs_path "$1" )
  [[ -n "${path}" ]] && cd "${path}" || cd "$( xdg-user-dir PROJECTS_DOCS )"
}


function http_prompt_env() {
    http-prompt --env "${XDG_DATA_HOME:-$HOME/.local/share}/http-prompt/env/$1.hp"
}
