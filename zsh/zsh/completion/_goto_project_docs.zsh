#compdef goto_project_docs

_docs_folders() {
  local docs_folders=( $(
    find "${PROJECTS_DOCS_DIR}" \
      -mindepth 1 -maxdepth 1 -type d \
      -printf '%f '
  ) )

  compadd "$@" $docs_folders
}

_arguments \
  '1:docs folder:_docs_folders'
