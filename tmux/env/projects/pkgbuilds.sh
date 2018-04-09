socket="$1"

pkgbuilds_path=$( get_project_repo_path pkgbuilds )


tmux -L "${socket}" \
  new-session -d \
  -s 'Pkgbuilds' \
  -n 'terminal' \
  -c "${pkgbuilds_path}"


tmux -L "${socket}" \
  new-window \
  -n 'code' \
  -c "${pkgbuilds_path}" \
  vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md

tmux -L "${socket}" \
  new-window \
  -n 'tests' \
  -c "${pkgbuilds_path}"


tmux -L "${socket}" \
  select-window \
  -t ':terminal'
