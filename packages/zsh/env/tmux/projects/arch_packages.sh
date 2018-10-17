socket="$1"

arch_packages_path=$( get_project_repo_path arch-packages )


tmux -L "${socket}" \
  new-session -d \
  -s 'projects arch_packages' \
  -n 'terminal' \
  -c "${arch_packages_path}"


tmux -L "${socket}" \
  new-window \
  -n 'code' \
  -c "${arch_packages_path}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"

tmux -L "${socket}" \
  new-window \
  -n 'tests' \
  -c "${arch_packages_path}"


tmux -L "${socket}" \
  select-window \
  -t ':terminal'
