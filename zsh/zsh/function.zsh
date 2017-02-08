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


function man() {
  # colored man

  # mb: start blink        -> red foreground
  # md: start bold         -> orange foreground
  # me: end all attributes -> end all attributes
  # so: start standout     -> black foreground on grey background
  # se: end standout       -> end all attributes
  # us: start underline    -> blue foreground
  # ue: end underline      -> end all attributes

  env \
    LESS_TERMCAP_mb=$(tput setaf 1) \
    LESS_TERMCAP_md=$(tput setaf 3) \
    LESS_TERMCAP_me=$(tput sgr0) \
    LESS_TERMCAP_so=$(tput setaf 0; tput setab 11) \
    LESS_TERMCAP_se=$(tput sgr0) \
    LESS_TERMCAP_us=$(tput setaf 4) \
    LESS_TERMCAP_ue=$(tput sgr0) \
    man "$@"
}
