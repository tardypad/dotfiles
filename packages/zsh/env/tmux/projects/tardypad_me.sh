socket="$1"

tardypad_me_path=$( get_project_repo_path tardypad.me )


tmux -L "${socket}" \
  new-session -d \
  -s 'projects tardypad_me' \
  -n 'terminal' \
  -c "${tardypad_me_path}"


tmux -L "${socket}" \
  new-window \
  -n 'code' \
  -c "${tardypad_me_path}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"


tmux -L "${socket}" \
  new-window \
  -n 'tests' \
  -c "${tardypad_me_path}"


tmux -L "${socket}" \
  select-window \
  -t ':terminal'
