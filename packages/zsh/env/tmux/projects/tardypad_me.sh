socket="$1"
session_name="$2"

tardypad_me_path=$( get-project-repo-path tardypad.me )


tmux -L "${socket}" \
  new-session -d \
  -s "${session_name}" \
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
  select-window \
  -t ':terminal'
