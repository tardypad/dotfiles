socket="$1"
session_name="$2"

arch_packages_path=$( get-project-repo-path arch-packages )

tmux -L "${socket}" \
  new-session -d \
  -s "${session_name}" \
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
  select-window \
  -t ':terminal'
